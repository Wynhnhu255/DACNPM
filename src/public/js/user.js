$(document).ready(function() {
    $('#updatePasswordUserSetting').on('click', function(e) {
        e.preventDefault();
        
        let oldPassword = $('#oldPassword').val();
        let newPassword = $('#newPassword').val();
        let confirmPassword = $('#confirmPassword').val();

        // Validate input
        if (!oldPassword || !newPassword || !confirmPassword) {
            alertify.error('Vui lòng điền đầy đủ thông tin');
            return;
        }

        if (newPassword !== confirmPassword) {
            alertify.error('Mật khẩu mới không khớp');
            return;
        }

        $.ajax({
            url: '/user/change-password',
            method: 'POST',
            data: {
                oldPassword: oldPassword,
                newPassword: newPassword,
                confirmPassword: confirmPassword
            },
            success: function(response) {
                alertify.success(response.message);
                $('#modalSettingUser').modal('hide');
                // Clear form
                $('#oldPassword').val('');
                $('#newPassword').val('');
                $('#confirmPassword').val('');
            },
            error: function(error) {
                alertify.error(error.responseJSON.message);
            }
        });
    });
});