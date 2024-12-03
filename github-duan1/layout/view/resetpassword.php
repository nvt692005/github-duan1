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
  <style>
  .alert {
    position: absolute;
    top: 0px;
    left: 50%;
    transform: translateX(-50%);
    width: 100%;
    padding: 15px;
    font-size: 16px;
    font-family: Arial, sans-serif;
    box-shadow: 0px 6px 15px rgba(0, 0, 0, 0.2);

    text-align: center;
    z-index: 999;
  }

  .alert-danger {
    background: linear-gradient(to bottom, #F14658, #DC2537);
    color: white;
    border: 1px solid #3900A6;
  }

  .alert-success {
    background: linear-gradient(to bottom, #F14658, #DC2537);
    color: white;
    border: 1px solid #4CAF50;
  }
  </style>

</head>

<body>
  <div class="wrapper">
    <div class="container">
      <div class="inner-content">
        <div class="header">
          <div class="back-button">
            <i class="fa-solid fa-angle-left"></i>
          </div>
          <h1><i class="fas fa-key"></i> Đặt lại mật khẩu mới</h1>
        </div>
        <p class="notepass">Tạo mật khẩu mới. Đảm bảo mật khẩu khác
          với
          những mật khẩu trước để tăng cường bảo mật.</p>


        <?php if (isset($message) && !empty($message)): ?>
        <div
          class="alert <?php echo (strpos($message, 'thành công') !== false) ? 'alert-success' : 'alert-danger'; ?>">
          <?php echo $message; ?>
        </div>
        <?php endif; ?>



        <form method="POST" action="index.php?trang=resetpassword">
          <div class="input-group">
            <div class="input-pass">
              <label for="new_password">Nhập mật khẩu mới</label>
              <input placeholder="Nhập mật khẩu" type="password"
                name="new_password" id="new_password" required />
              <i class="fas fa-eye" id="togglePassword1"
                onclick="togglePasswordVisibility('new_password', this)"></i>
            </div>
            <div class="input-pass2">
              <label for="confirm_password" class="label2">Xác nhận
                mật khẩu</label>
              <input placeholder="Nhập lại mật khẩu" type="password"
                name="confirm_password" id="confirm_password"
                required />
              <i class="fas fa-eye" id="togglePassword2"
                onclick="togglePasswordVisibility('confirm_password', this)"></i>
            </div>
            <input type="hidden" name="email"
              value="<?php echo $_SESSION['verified_email']; ?>">
          </div>
          <button class="btn" type="submit"
            style="margin-bottom: 20px;">Thay đổi mật khẩu</button>
        </form>


        <div class="image-container">
          <img src="public/img/setpass.png"
            alt="Person thinking with warning signs and email illustration" />
        </div>
      </div>
    </div>
  </div>
  <script src="js/pass.js"></script>
</body>

</html>