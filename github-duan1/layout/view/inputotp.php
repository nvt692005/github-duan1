?>

<html lang="vi">

<head>
  <meta charset="UTF-8">
  <meta name="viewport"
    content="width=device-width, initial-scale=1.0">
  <title>Nhập mã OTP</title>
  <link
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css"
    rel="stylesheet">
  <link rel="stylesheet" href="public/css/forgotpass.css">
</head>

<body>
  <div class="wrapper">
    <div class="container">
      <div class="inner-content">
        <div class="header">
          <a href="index.php?trang=login">
            <div class="back-button">
              <i class="fa-solid fa-angle-left"></i>
            </div>
          </a>
          <h1><i class="fas fa-key"></i> Nhập mã xác nhận</h1>
        </div>

        <!-- Hiển thị thông báo lỗi nếu có -->
        <?php if (isset($_SESSION['otp_error'])): ?>
          <p class="error-message">
            <?php echo htmlspecialchars($_SESSION['otp_error']); ?></p>
          <?php unset($_SESSION['otp_error']); // Xóa thông báo lỗi sau khi hiển thị
          ?>
        <?php endif; ?>

        <form method="POST" action="index.php?trang=inputotp">
          <div class="input-group group-otp">
            <label for="otp">Nhập mã OTP</label><br>
            <p class="note-otp">Vui lòng nhập mã OTP đã được gửi đến
              email của bạn.</p>
            <div class="otp-container">
              <div class="otp-inputs">
                <input type="text" name="otp" maxlength="6" required>
              </div>
            </div>
            <p class="resend-text">Chưa nhận được mã? <a href="#">Gửi
                lại</a></p>
          </div>
          <button class="btn" type="submit">Xác minh</button>
        </form>

        <div class="image-container">
          <img src="public/img/otp.png"
            alt="Person thinking with warning signs and email illustration" />
        </div>
      </div>
    </div>
  </div>
</body>

</html>