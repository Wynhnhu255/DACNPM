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
    let avatarFile = $('#update-avatar')[0]?.files[0];

    if (avatarFile) {
        // Tách tên file
        let avatarFileName = avatarFile.name;

        // Chuyển file thành Base64
        let reader = new FileReader();
        reader.onload = function (event) {
            let avatarBase64 = event.target.result; // Chuỗi Base64 của file

            // Gửi dữ liệu lên server
            sendUpdateRequest(email, name, phone, gender, address, description, avatarBase64, avatarFileName);
        };
        reader.readAsDataURL(avatarFile); // Đọc file dưới dạng Base64
    } else {
        // Gửi dữ liệu mà không có avatar
        sendUpdateRequest(email, name, phone, gender, address, description, null, null);
    }
});

function sendUpdateRequest(email, name, phone, gender, address, description, avatar, avatarFileName) {
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
            avatar: avatar, // Base64 hoặc null
            avatarFileName: avatarFileName // Tên file hoặc null
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
}