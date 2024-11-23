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
  <div class="background-image"
    style="background-image: url('public/img/pngegg\ \(2\).png')">
  </div>
  <div class="container">

    <div class="left">
      <span class="home"><a href="#">Trang chủ</a></span>
      <h1>Đăng Nhập để Tiến Hành Mua Sắm</h1>
      <p>
        Nếu bạn đã có tài khoản,<br>
        <span style="display: block; padding-top: 10px;">
          Đăng nhập ngay <a href="index.php?trang=login"
            class="loginHereLink">tại
            đây!</a>
        </span>
      </p>

      </p>
    </div>

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
        <form>
          <div class="input-group">
            <input placeholder="Tài khoản" type="text" />
            <i class="fas fa-user"></i>
          </div>
          <div class="input-group">
            <input id="password" placeholder="Mật khẩu"
              type="password" />
            <i class="fas fa-eye" id="togglePassword1"
              onclick="togglePasswordVisibility('password', 'togglePassword1')"></i>
          </div>
          <div class="input-group">
            <input id="password1" placeholder="Nhập lại mật khẩu"
              type="password" />
            <i class="fas fa-eye" id="togglePassword2"
              onclick="togglePasswordVisibility('password1', 'togglePassword2')"></i>
          </div>
          <div class="input-group">
            <input id="email" placeholder="Nhập email của bạn"
              type="email" />
            <i class="fa-solid fa-envelope"></i>
          </div>
          <a class="forgot-password" href="#"> Quên mật khẩu ?
          </a>
          <button type="submit">ĐĂNG KÝ</button>
        </form>
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