<html lang="vi">

<head>
  <meta charset="UTF-8">
  <meta name="viewport"
    content="width=device-width, initial-scale=1.0">
  <title>Quên mật khẩu</title>
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

          <h1><i class="fas fa-key"></i> Quên mật khẩu</h1>
        </div>
        <p class="note-email">Vui lòng nhập địa chỉ email của bạn để
          đặt lại
          mật khẩu.</p>


        <?php if (isset($_SESSION['otp_error'])): ?>
        <p class="error-message">
          <?php echo htmlspecialchars($_SESSION['otp_error']); ?>
        </p>
        <?php unset($_SESSION['otp_error']); ?>
        <?php endif; ?>


        <form method="POST" action="index.php?trang=sendotp">
          <div class="input-group">
            <label for="email">Nhập địa chỉ email của bạn</label>
            <input id="email" name="email" type="email"
              placeholder="Nhập địa chỉ email của bạn" required />
            <a href="#">Quay lại để đăng nhập</a>
          </div>
          <button class="btn" type="submit">Gửi yêu cầu</button>
        </form>

        <div class="image-container">
          <img src="public/img/image4.png"
            alt="Person thinking with warning signs and email illustration" />
        </div>
        <div class="social-login">
          <div class="social-login-text">
            <span>Hoặc tiếp tục với</span>
          </div>
          <div class="social-login-icons">
            <div class="google">
              <img src="public/img/google-icon-logo-svgrepo-com.svg"
                alt="Google">
            </div>
            <div class="apple">
              <img src="public/img/apple-black-logo-svgrepo-com.svg"
                alt="Apple">
            </div>
            <div class="facebook">
              <img src="public/img/facebook-3-logo-svgrepo-com.svg"
                alt="Facebook">
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>

</html>