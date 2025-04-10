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

$('#updateInfoUserSetting').on('click', function (e) {
    e.preventDefault();

    let email = $('#emailUser').val();
    let name = $('#nameUser').val();
    let phone = $('#phoneUser').val();
    let gender = $('input[name="gender"]:checked').val();
    let address = $('#addressUser').val();
    let description = $('#descriptionUser').val();
    let avatar = $('#avatarUser')[0]?.files[0];

    $.ajax({
        url: '/user/update-info',
        method: 'POST',
        contentType: 'application/json',
        data: JSON.stringify({
            email: email,
            name: name,
            phone: phone,
            gender: gender,
            address: address,
            description: description,
            avatar: avatar
        }),
        success: function (response) {
            alertify.success(response.message);
            $('#modalSettingUser').modal('hide');
            if (response.avatar) {
                $('#avatarPreview').attr('src', '/images/users/' + response.avatar + '?timestamp=' + new Date().getTime());
            }
        },
        error: function (err) {
            alertify.error(err.responseJSON?.message || 'Cập nhật thất bại');
        }
    });
});