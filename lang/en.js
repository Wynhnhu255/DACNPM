export const transValidation = {
    email_incorrect: "Email không khả dụng",
    gender_incorrect: "Giới tính không khả dụng",
    password_incorrect: "Mật khẩu không đúng",
    password_confirmation_incorrect: "Mật khẩu không khớp",
};

export const transMailBookingNew = {
    subject: "Thông báo email",
    template: (data) => {
        return `<h3> Cảm ơn vì đã đặt lích khám chữa bệnh ở Doctor Care! </h3>
        <h4>Thông tin lịch hẹn: </h4>
        <div>Bác sĩ: ${data.doctor} </div>
        <div>Vào lúc: ${data.time}</div>
        <div>Ngày: ${data.date}</div>
        <div>Trạng thái: <b> Lịch khám của bạn đang chờ được xác nhận</b></div>
        <h4>Doctors Care sẽ gửi email cho bạn ngay khi lịch khám của bạn được xác nhận!</h4>`;
    },
};

export const transMailBookingFailed = {
    subject: "Thông báo email",
    template: (data) => {
        return `<h3>Cảm ơn vì đã đặt lích khám chữa bệnh ở Doctor Care!  </h3>
        <h4>Thông tin lịch hẹn:</h4>
        <div>Bác sĩ: ${data.doctor} </div>
        <div>Vào lúc: ${data.time}</div>
        <div>Ngày: ${data.date}</div>
        <div>Trạng thái: <b>Hủy - ${data.reason}</b></div>
        <h4>Vui lòng liên hệ với bộ phận hỗ trợ nếu bạn gặp vấn đề khi đặt lịch khám <b> 113 113 </b></h4>`;
    },
};

export const transMailBookingSuccess = {
    subject: "Thông báo email",
    template: (data) => {
        return `<h3>Cảm ơn vì đã đặt lích khám chữa bệnh ở Doctor Care! </h3>
        <h4>Thông tin lịch hẹn:</h4>
        <div>Bác sĩ: ${data.doctor} </div>
        <div>Vào lúc: ${data.time}</div>
        <div>Ngày: ${data.date}</div>
        <div>Status: <b>Đặt lịch thành công!</b></div>
        <h4>Cam on vi da den</h4>`;
    },
};

export const transMailRemedy = {
    subject: "Thông báo email",
    template: (data) => {
      return `<h3>Cảm ơn vì đã đặt lịch khám chữa bệnh tại Doctor Care!</h3>
              Sau khi bạn đã khám tại phòng khám của bác sĩ <b>${data.doctor}</b>, bạn có thể xem chi tiết hóa đơn từ file đính kèm email này. </h4>
              <div>Mật khẩu để giải nén file đính kèm có dạng như sau: <i>Họ và tên đầy đủ không dấu - 3 chữ số đầu tiên của số điện thoại - 2 chữ số cuối của năm sinh của bạn.</i></div>
              <br>
              <div>Ví dụ: Họ và tên: Hary Pham, với số điện thoại đã đăng ký: 0123456789 và năm sinh: 1910, mật khẩu giải nén là: <b>harypham-012-10</b></div>
              <br>
              <div>Trong trường hợp không nhận được file đính kèm hoặc không giải nén được, vui lòng liên hệ với tổng đài hỗ trợ <b>911 911</b></div>
              <h4>Xin cảm ơn!</h4>`;
    },
  };
