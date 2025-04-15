import { validationResult } from "express-validator";
import authService from "../services/authService";
import crypto from 'crypto';
import nodemailer from 'nodemailer';
import db from '../models';
import { Op } from 'sequelize';
import bcrypt from 'bcryptjs';

let getLogin = (req, res) => {
    return res.render("auth/login.ejs", {
        error: req.flash("error"),
    });
};

let getRegister = (req, res) => {
    return res.render("auth/register.ejs");
};

let postRegister = async (req, res) => {
    let hasErrors = validationResult(req).array({
        onlyFirstError: true
    });
    if (!hasErrors.length) {
        try {

            // await authService.register(req.body.name, req.body.rg_email, req.body.rg_password, req.protocol, req.get("host")).then(async (user) => {
            console.log(user);
            // res.redirect('login');
            // let linkVerify = `${req.protocol}://${req.get("host")}/verify/${user.local.verifyToken}`;
            // await authService.register({user}, linkVerify)
            // .then((message) => {
            //     req.flash("success", message);
            //     res.redirect('/login');
            // })
            // .catch((err) => {
            //     console.log(err);
            // });
            // }).catch((err) => {
            //     console.log(err);
            // });
        } catch (err) {
            req.flash("errors", err);
            res.render('/register', {
                oldData: req.body
            });
        }
    } else {
        let errEmail = '', errPassword = '', errPasswordConfirm = '';
        hasErrors.forEach((err) => {
            if (err.param === 'rg_email') errEmail = err.msg;
            if (err.param === 'rg_password') errPassword = err.msg;
            if (err.param === 'rg_password_again') errPasswordConfirm = err.msg;
        });
        res.render("auth/register", {
            errEmail: errEmail,
            errPassword: errPassword,
            errPasswordConfirm: errPasswordConfirm,
            hasErrors: hasErrors,
            oldData: req.body
        })
    }
};

let verifyAccount = async (req, res) => {
    let errorArr = [];
    let successArr = [];
    try {
        let verifySuccess = await auth.verifyAccount(req.params.token);
        successArr.push(verifySuccess);
        req.flash("success", successArr);
        return res.redirect("/login");

    } catch (error) {
        console.log(error);
    }
};

let getLogout = (req, res) => {
    req.session.destroy(function(err) {
        console.log(err);
        return res.redirect("/login");
    });

};

let checkLoggedIn = (req, res, next) => {
    if (!req.isAuthenticated()) {
        return res.redirect("/login");
    }
    next();
};

let checkLoggedOut = (req, res, next) => {
    if (req.isAuthenticated()) {
        return res.redirect("/users");
    }
    next();
};

// Xử lý yêu cầu quên mật khẩu
let handleForgotPassword = async (req, res) => {
    try {
        const { email } = req.body;
        
        // Kiểm tra email có tồn tại trong hệ thống không
        const user = await db.User.findOne({ where: { email: email } });
        
        if (!user) {
            return res.status(404).json({ message: 'Email không tồn tại trong hệ thống' });
        }
        
        // Tạo token reset password
        const resetToken = crypto.randomBytes(32).toString('hex');
        const resetTokenExpiry = Date.now() + 3600000; // Hết hạn sau 1 giờ
        
        // Lưu token vào database
        await db.PasswordReset.create({
            email: user.email,
            token: resetToken,
            expiryDate: new Date(resetTokenExpiry)
        });
        
        // Gửi email đặt lại mật khẩu
        const resetUrl = `${req.protocol}://${req.get('host')}/reset-password/${resetToken}`;
        
        await sendResetPasswordEmail(user.email, resetUrl);
        
        return res.status(200).json({ 
            message: 'Hướng dẫn đặt lại mật khẩu đã được gửi đến email của bạn'
        });
    } catch (error) {
        console.error('Lỗi xử lý quên mật khẩu:', error);
        return res.status(500).json({ 
            message: 'Đã có lỗi xảy ra. Vui lòng thử lại sau.' 
        });
    }
};

// Hàm gửi email đặt lại mật khẩu
let sendResetPasswordEmail = async (email, resetUrl) => {
    // Cấu hình SMTP
    const transporter = nodemailer.createTransport({
        host: process.env.MAIL_HOST,
        port: process.env.MAIL_PORT,
        secure: process.env.MAIL_SECURE === 'true',
        auth: {
            user: process.env.MAIL_USERNAME,
            pass: process.env.MAIL_PASSWORD
        }
    });
    
    // Nội dung email
    const mailOptions = {
        from: `"BookingCare" <${process.env.MAIL_FROM}>`,
        to: email,
        subject: 'Đặt lại mật khẩu cho tài khoản BookingCare',
        html: `
            <div style="max-width: 600px; margin: 0 auto; padding: 20px; font-family: Arial, sans-serif;">
                <h2 style="color: #3f51b5;">Đặt lại mật khẩu</h2>
                <p>Bạn đã yêu cầu đặt lại mật khẩu cho tài khoản BookingCare.</p>
                <p>Vui lòng nhấp vào liên kết dưới đây để đặt lại mật khẩu:</p>
                <p style="margin: 20px 0;">
                    <a href="${resetUrl}" style="background-color: #3f51b5; color: white; padding: 10px 20px; text-decoration: none; border-radius: 4px;">Đặt lại mật khẩu</a>
                </p>
                <p>Liên kết này sẽ hết hạn sau 1 giờ.</p>
                <p>Nếu bạn không yêu cầu đặt lại mật khẩu, vui lòng bỏ qua email này.</p>
                <p>Trân trọng,<br>Đội ngũ BookingCare</p>
            </div>
        `
    };
    
    await transporter.sendMail(mailOptions);
};

// Thêm các hàm xử lý routes cho trang reset password
let getResetPasswordPage = async (req, res) => {
    try {
        const token = req.params.token;
        
        // Kiểm tra token hợp lệ
        const passwordReset = await db.PasswordReset.findOne({ 
            where: { 
                token: token,
                expiryDate: { [Op.gt]: new Date() },
                used: false
            }
        });
        
        if (!passwordReset) {
            return res.render('auth/reset-password', { 
                token: token,
                error: 'Liên kết đặt lại mật khẩu không hợp lệ hoặc đã hết hạn' 
            });
        }
        
        return res.render('auth/reset-password', { token: token });
    } catch (error) {
        console.error('Lỗi hiển thị trang đặt lại mật khẩu:', error);
        return res.render('auth/reset-password', { 
            token: req.params.token,
            error: 'Đã có lỗi xảy ra. Vui lòng thử lại sau.' 
        });
    }
};

// Xử lý đặt lại mật khẩu
let handleResetPassword = async (req, res) => {
    try {
        const token = req.params.token;
        const { newPassword, confirmPassword } = req.body;
        
        // Kiểm tra mật khẩu
        if (newPassword !== confirmPassword) {
            return res.render('auth/reset-password', { 
                token: token,
                error: 'Mật khẩu xác nhận không khớp' 
            });
        }
        
        if (newPassword.length < 6) {
            return res.render('auth/reset-password', { 
                token: token,
                error: 'Mật khẩu phải có ít nhất 6 ký tự' 
            });
        }
        
        // Kiểm tra token hợp lệ
        const passwordReset = await db.PasswordReset.findOne({ 
            where: { 
                token: token,
                expiryDate: { [Op.gt]: new Date() },
                used: false
            }
        });
        
        if (!passwordReset) {
            return res.render('auth/reset-password', { 
                token: token,
                error: 'Liên kết đặt lại mật khẩu không hợp lệ hoặc đã hết hạn' 
            });
        }
        
        // Cập nhật mật khẩu
        const user = await db.User.findOne({ where: { email: passwordReset.email } });
        
        if (!user) {
            return res.render('auth/reset-password', { 
                token: token,
                error: 'Không tìm thấy tài khoản người dùng' 
            });
        }
        
        // Mã hóa mật khẩu mới
        const bcrypt = require('bcryptjs');
        const hashedPassword = bcrypt.hashSync(newPassword, 10);
        
        // Cập nhật mật khẩu mới
        user.password = hashedPassword;
        await user.save();
        
        // Đánh dấu token đã sử dụng
        passwordReset.used = true;
        await passwordReset.save();
        
        return res.render('auth/reset-password', { 
            success: 'Mật khẩu đã được đặt lại thành công. Bạn có thể đăng nhập bằng mật khẩu mới.' 
        });
    } catch (error) {
        console.error('Lỗi đặt lại mật khẩu:', error);
        return res.render('auth/reset-password', { 
            token: req.params.token,
            error: 'Đã có lỗi xảy ra. Vui lòng thử lại sau.' 
        });
    }
};

module.exports = {
    getLogin: getLogin,
    getRegister: getRegister,
    postRegister: postRegister,
    verifyAccount: verifyAccount,
    getLogout: getLogout,
    checkLoggedIn: checkLoggedIn,
    checkLoggedOut: checkLoggedOut,
    handleForgotPassword: handleForgotPassword,
    getResetPasswordPage: getResetPasswordPage,
    handleResetPassword: handleResetPassword
};
