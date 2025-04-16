import bcrypt from 'bcryptjs';
import db from '../models/index';
import fs from 'fs';
import path from 'path';
const userController = {
    changePassword: async (req, res) => {
        try {
            // Get user ID from req.user instead of req.session.user
            if (!req.user || !req.user.id) {
                return res.status(401).json({
                    message: 'Vui lòng đăng nhập để thực hiện chức năng này'
                });
            }

            let userId = req.user.id;
            let { oldPassword, newPassword, confirmPassword } = req.body;

            // Validate input
            if (!oldPassword || !newPassword || !confirmPassword) {
                return res.status(400).json({
                    message: 'Vui lòng điền đầy đủ thông tin'
                });
            }

            // Check if passwords match
            if (newPassword !== confirmPassword) {
                return res.status(400).json({
                    message: 'Mật khẩu mới không khớp'
                });
            }

            // Get user
            let user = await db.User.findOne({
                where: { id: userId }
            });

            if (!user) {
                return res.status(404).json({
                    message: 'Không tìm thấy người dùng'
                });
            }

            // Verify old password
            let isValidPassword = await bcrypt.compare(oldPassword, user.password);
            if (!isValidPassword) {
                return res.status(400).json({
                    message: 'Mật khẩu hiện tại không đúng'
                });
            }

            // Hash new password
            let salt = await bcrypt.genSalt(10);
            let hashedPassword = await bcrypt.hash(newPassword, salt);

            // Update password
            await user.update({ password: hashedPassword });

            return res.status(200).json({
                message: 'Đổi mật khẩu thành công'
            });

        } catch (error) {
            console.error(error);
            return res.status(500).json({
                message: 'Có lỗi xảy ra'
            });
        }
    },
    updateUserInfo: async (req, res) => {
        try {
            if (!req.user || !req.user.id) {
                return res.status(401).json({ message: 'Bạn chưa đăng nhập' });
            }
    
            const userId = req.user.id;
            const { email, name, phone, gender, address, description, avatar, avatarFileName } = req.body;
    
            const user = await db.User.findOne({ where: { id: userId } });
            if (!user) {
                return res.status(404).json({ message: 'Không tìm thấy người dùng' });
            }
    
            // Xây dựng đối tượng updateData
            const updateData = {};
            if (email && email.trim() !== "") updateData.email = email.trim();
            if (name && name.trim() !== "") updateData.name = name.trim();
            if (phone && phone.trim() !== "") updateData.phone = phone.trim();
            if (gender && gender.trim() !== "") updateData.gender = gender.trim();
            if (address && address.trim() !== "") updateData.address = address.trim();
            if (description && description.trim() !== "") updateData.description = description.trim();
    
            // Xử lý avatar nếu có
            if (avatar && avatarFileName) {
                const uploadDir = path.join(__dirname, '../public/images/users');
                const filePath = path.join(uploadDir, avatarFileName);
    
                // Tạo thư mục nếu chưa tồn tại
                if (!fs.existsSync(uploadDir)) {
                    fs.mkdirSync(uploadDir, { recursive: true });
                }
    
                // Lưu file từ Base64
                const base64Data = avatar.replace(/^data:image\/\w+;base64,/, '');
                fs.writeFileSync(filePath, base64Data, { encoding: 'base64' });
    
                // Lưu tên file vào database
                updateData.avatar = avatarFileName;
    
                // Xóa avatar cũ nếu có
                if (user.avatar) {
                    const oldFilePath = path.join(uploadDir, user.avatar);
                    if (fs.existsSync(oldFilePath)) {
                        fs.unlinkSync(oldFilePath);
                    }
                }
            }
    
            // Cập nhật thông tin người dùng
            await user.update(updateData);
    
            return res.status(200).json({
                message: 'Cập nhật thông tin thành công',
                avatar: updateData.avatar || user.avatar
            });
    
        } catch (error) {
            console.error(error);
            return res.status(500).json({ message: 'Lỗi server' });
        }
    }

};

export default userController;