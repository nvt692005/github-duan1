<<<<<<< HEAD
=======
<?php
session_start();
?>
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

</head>
<script src="public/js/login.js"></script>

<body>
  <div class="circle circle-yellow"></div>
  <div class="circle circle-blue"></div>
  <div class="background-image"></div>
  <div class="container">
    <div class="left">
<<<<<<< HEAD
      <span class="home"><a href="#">Trang chủ</a></span>
=======
      <span class="home"><a href="index.php?trang=home">Trang
          chủ</a></span>
>>>>>>> e174863 (post)
      <h1>Đăng Nhập để Tiến Hành Mua Sắm</h1>
      <p>
        Nếu bạn chưa có tài khoản,<br><span
          style="display: block; padding-top: 10px;">
          Đăng ký ngay <a href="index.php?trang=signup"
<<<<<<< HEAD
            class="signupHereLink">tại
            đây!</a>
=======
            class="signupHereLink">tại đây!</a>
>>>>>>> e174863 (post)
        </span>
      </p>
    </div>
    <div class="right">
      <div class="right-content">
        <div class="language" style>
          <select>
            <option>Vietnamese</option>
          </select>
          <a href="index.php?trang=login" class="loginlink">Đăng
            nhập</a>
          <a href="index.php?trang=signup" class="signuplink">Đăng
            ký</a>
<<<<<<< HEAD

        </div>
        <form>
          <div class="input-group">
            <input placeholder="Tài khoản" type="text" />
=======
        </div>

        <!-- Hiển thị thông báo nếu có -->
        <?php if (isset($_SESSION['error_message'])): ?>
          <div class="alert alert-danger"
            style="margin-bottom: 20px; color: red;">
            <?php
            if (isset($_SESSION['error_message'])) {
              echo "<script>alert('" . addslashes($_SESSION['error_message']) . "');</script>";
              unset($_SESSION['error_message']); // Xóa thông báo sau khi hiển thị
            }
            ?>
            <?php unset($_SESSION['error_message']); // Xóa thông báo sau khi hiển thị
            ?>
          </div>
        <?php endif; ?>

        <?php if (isset($_SESSION['success_message'])): ?>
          <div class="alert alert-success"
            style="margin-bottom: 20px; color: red;">
            <?php echo $_SESSION['success_message']; ?>
            <?php unset($_SESSION['success_message']); // Xóa thông báo sau khi hiển thị
            ?>
          </div>
        <?php endif; ?>

        <form method="POST" action="index.php?trang=login">
          <div class="input-group">
            <input placeholder="Tài khoản" type="text"
              name="username" />
>>>>>>> e174863 (post)
            <i class="fas fa-user"></i>
          </div>
          <div class="input-group">
            <input id="password" placeholder="Mật khẩu"
<<<<<<< HEAD
              type="password" />
            <i class="fas fa-eye" id="togglePassword"
              onclick="togglePasswordVisibility('password', 'togglePassword')"></i>
          </div>
          <a class="forgot-password" href="#"> Quên mật khẩu ? </a>
          <button type="submit">ĐĂNG NHẬP</button>
        </form>
=======
              type="password" name="password" />
            <i class="fas fa-eye" id="togglePassword"
              onclick="togglePasswordVisibility('password', 'togglePassword')"></i>
          </div>
          <a class="forgot-password" href="index.php?trang=sendotp">
            Quên mật khẩu ? </a>
          <button type="submit">ĐĂNG NHẬP</button>
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