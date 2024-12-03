<?php
session_start();
include_once 'model/UserModel.php';

class ResetPasswordController
{
  private $userModel;

  public function __construct()
  {
    $this->userModel = new UserModel();
  }

  public function handleResetPassword()
  {
    $message = '';

    if (!isset($_SESSION['otp_verified']) || $_SESSION['otp_verified'] !== true) {
      $message = "OTP chưa được xác thực. Vui lòng xác thực OTP trước.";
      include 'view/resetpassword.php';
      return;
    }

    $email = isset($_SESSION['verified_email']) ? $_SESSION['verified_email'] : '';

    if (empty($email)) {
      $message = "Email không tồn tại trong phiên làm việc.";
      include 'view/resetpassword.php';
      return;
    }

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
      if (isset($_POST['new_password'], $_POST['confirm_password'])) {
        $newPassword = $_POST['new_password'];
        $confirmPassword = $_POST['confirm_password'];

        if ($newPassword === $confirmPassword) {
          $updateResult = $this->userModel->updatePasswordByEmail($email, $newPassword);
          if ($updateResult === true) {
            $message = "Mật khẩu đã được thay đổi thành công.";
          } else {
            $message = "Lỗi: Không thể thay đổi mật khẩu. Vui lòng thử lại.";
          }
        } else {
          $message = "Mật khẩu xác nhận không khớp.";
        }
      } else {
        $message = "Thông tin không đầy đủ.";
      }
    }


    $message = $message ?? '';


    include 'view/resetpassword.php';
  }
}


$controller = new ResetPasswordController();
$controller->handleResetPassword();
