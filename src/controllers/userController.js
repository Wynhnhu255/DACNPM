import bcrypt from 'bcryptjs';
import db from '../models/index';

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
    }
};

export default userController;