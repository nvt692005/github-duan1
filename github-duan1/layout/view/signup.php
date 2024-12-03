<<<<<<< HEAD
=======
<?php
session_start(); ?>
>>>>>>> e174863 (post)
<html>

<head>
  <link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <link
    href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&amp;display=swap"
    rel="stylesheet" />
  <link rel="stylesheet" href="public/css/login.css">
  <link
    href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;600&display=swap"
    rel="stylesheet">
  <meta name="viewport"
    content="width=device-width, initial-scale=1.0">
<<<<<<< HEAD

=======
>>>>>>> e174863 (post)
</head>
<script src="public/js/login.js"></script>

<body>
  <div class="circle circle-yellow"></div>
  <div class="circle circle-blue"></div>
  <div class="background-image"
    style="background-image: url('public/img/pngegg\ \(2\).png')">
  </div>
<<<<<<< HEAD
  <div class="container">

    <div class="left">
      <span class="home"><a href="#">Trang chủ</a></span>
=======

  <?php if (isset($_SESSION['error_message'])): ?>
    <div class="error-message">
      <span><?php echo $_SESSION['error_message']; ?></span>
    </div>
    <?php unset($_SESSION['error_message']); ?>
  <?php endif; ?>

  <?php if (isset($_SESSION['success_message'])): ?>
    <div class="success-message">
      <span><?php echo $_SESSION['success_message']; ?></span>
    </div>
    <?php unset($_SESSION['success_message']); ?>
  <?php endif; ?>

  <div class="container">
    <div class="left">
      <span class="home"><a href="index.php?trang=home">Trang
          chủ</a></span>
>>>>>>> e174863 (post)
      <h1>Đăng Nhập để Tiến Hành Mua Sắm</h1>
      <p>
        Nếu bạn đã có tài khoản,<br>
        <span style="display: block; padding-top: 10px;">
          Đăng nhập ngay <a href="index.php?trang=login"
            class="loginHereLink">tại
            đây!</a>
        </span>
      </p>
<<<<<<< HEAD

      </p>
    </div>

=======
      </p>
    </div>
>>>>>>> e174863 (post)
    <div class=" right">
      <div class="right-content">
        <div class="language"
          style="position: absolute; top: -14.5%;">
          <select>
            <option>Vietnamese</option>
          </select>
          <a href="index.php?trang=login" class="loginlink">Đăng
            nhập</a>
          <a href="index.php?trang=signup" class="signuplink">Đăng
            ký</a>
        </div>
<<<<<<< HEAD
        <form>
          <div class="input-group">
            <input placeholder="Tài khoản" type="text" />
=======

        <form method="POST" action="index.php?trang=signup">
          <div class="input-group">
            <input placeholder="Tài khoản" type="text" name="username"
              value="<?php echo isset($_SESSION['form_data']['username']) ? $_SESSION['form_data']['username'] : ''; ?>"
              required />
>>>>>>> e174863 (post)
            <i class="fas fa-user"></i>
          </div>
          <div class="input-group">
            <input id="password" placeholder="Mật khẩu"
<<<<<<< HEAD
              type="password" />
=======
              type="password" name="password" required />
>>>>>>> e174863 (post)
            <i class="fas fa-eye" id="togglePassword1"
              onclick="togglePasswordVisibility('password', 'togglePassword1')"></i>
          </div>
          <div class="input-group">
            <input id="password1" placeholder="Nhập lại mật khẩu"
<<<<<<< HEAD
              type="password" />
=======
              type="password" name="confirm_password" required />
>>>>>>> e174863 (post)
            <i class="fas fa-eye" id="togglePassword2"
              onclick="togglePasswordVisibility('password1', 'togglePassword2')"></i>
          </div>
          <div class="input-group">
            <input id="email" placeholder="Nhập email của bạn"
<<<<<<< HEAD
              type="email" />
            <i class="fa-solid fa-envelope"></i>
          </div>
          <a class="forgot-password" href="#"> Quên mật khẩu ?
          </a>
          <button type="submit">ĐĂNG KÝ</button>
        </form>
=======
              type="email" name="email"
              value="<?php echo isset($_SESSION['form_data']['email']) ? $_SESSION['form_data']['email'] : ''; ?>"
              required />
            <i class="fa-solid fa-envelope"></i>
          </div>
          <a class="forgot-password" href="#">Quên mật khẩu ?</a>
          <button type="submit">ĐĂNG KÝ</button>
        </form>



>>>>>>> e174863 (post)
        <div class="social-login">
          <div class="social-login-text">
            <span>Hoặc tiếp tục với</span>
          </div>
          <div class="social-login-icons">
            <div class="google">
              <img src="public/img/google-icon-logo-svgrepo-com.svg"
                alt>
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