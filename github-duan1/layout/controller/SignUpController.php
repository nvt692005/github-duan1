<?php
<<<<<<< HEAD

class SignUpController
{
  public function __construct()

  {
    include_once 'view/signup.php';
=======
// Bao gồm file UserModel để sử dụng các phương thức
include_once 'model/userModel.php';

class SignUpController
{
  // Hàm khởi tạo
  public function __construct()
  {
    // Kiểm tra xem có phải là POST không (form gửi dữ liệu)
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
      $this->handleSignUp(); // Nếu là POST, gọi hàm đăng ký
    } else {
      include 'view/signup.php'; // Nếu không, hiển thị form đăng ký
    }
  }

  // Hàm xử lý đăng ký
  private function handleSignUp()
  {
    session_start(); // Đảm bảo session đã bắt đầu

    // Lấy dữ liệu từ form
    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $confirmPassword = $_POST['confirm_password'];

    // Lưu dữ liệu tạm thời để giữ lại khi xảy ra lỗi
    $_SESSION['form_data'] = [
      'username' => $username,
      'email' => $email
    ];

    // Kiểm tra mật khẩu có khớp không
    if ($password !== $confirmPassword) {
      $_SESSION['error_message'] = "Mật khẩu không khớp!";
      header("Location: index.php?trang=signup");
      exit;
    }

    $userModel = new UserModel();
    $existingUser = $userModel->checkUserExists($username, $email);

    if (count($existingUser) > 0) {
      $_SESSION['error_message'] = "Tài khoản hoặc email đã tồn tại!";
    } else {
      if ($userModel->addUser($username, $password, $email)) {
        unset($_SESSION['form_data']);
        $_SESSION['success_message'] = "Đăng ký thành công!";
        header("Location: index.php?trang=login");
        exit;
      } else {
        $_SESSION['error_message'] = "Đã xảy ra lỗi, vui lòng thử lại!";
      }
    }

    // Quay lại form đăng ký
    header("Location: index.php?trang=signup");
    exit;
>>>>>>> e174863 (post)
  }
}
