<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport"
    content="width=device-width, initial-scale=1.0">
  <title>Thay đổi mật khẩu</title>
  <link
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css"
    rel="stylesheet">
  <style>
    body {
      margin: 0;
      font-family: Arial, sans-serif;
      background-color: #f9f9f9;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .container {
      text-align: center;
      background-color: #fff;
      border-radius: 12px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
      padding: 30px 20px;
      width: 350px;
    }

    .success-icon {
      font-size: 50px;
      color: #2ecc71;
      margin-bottom: 20px;
    }

    h1 {
      font-size: 24px;
      color: #333;
      margin-bottom: 10px;
    }

    p {
      font-size: 14px;
      color: #666;
      margin-bottom: 20px;
    }

    .btn {
      background-color: #6c5ce7;
      color: #fff;
      border: none;
      border-radius: 6px;
      font-size: 16px;
      padding: 10px 20px;
      cursor: pointer;
    }

    .btn:hover {
      background-color: #5a4bcf;
    }
  </style>
</head>

<body>
  <div class="container">
    <div class="success-icon">
      <i class="fas fa-check"></i>
    </div>
    <h1>Thành Công</h1>
    <p>Chúc mừng! Mật khẩu của bạn đã được thay đổi.</p>
    <button class="btn" type="button"
      onclick="window.location.href='index.php?trang=login';">Đăng
      Nhập Ngay</button>
  </div>
</body>

</html>