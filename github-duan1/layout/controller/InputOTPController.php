<?php
class InputOTPController
{
  public function __construct()
  {
    session_start();

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
      if (!empty($_POST['otp'])) {
        $inputOTP = trim($_POST['otp']);


        if (isset($_SESSION['otp']) && $inputOTP == $_SESSION['otp']) {
          $otpExpirationTime = 5 * 60;
          $otpCreatedAt = $_SESSION['otp_created_at'] ?? 0;
          $currentTime = time();
          if (($currentTime - $otpCreatedAt) <= $otpExpirationTime) {
            $_SESSION['otp_verified'] = true;
            if (isset($_SESSION['email'])) {
              $_SESSION['verified_email'] = $_SESSION['email'];
            } else {
              $_SESSION['otp_error'] = "Không tìm thấy email để xác nhận.";
              header('Location: index.php?trang=inputotp');
              exit();
            }

            header('Location: index.php?trang=resetpassword');
            exit();
          } else {
            $_SESSION['otp_error'] = "Mã OTP đã hết hạn. Vui lòng yêu cầu mã OTP mới.";
            header('Location: index.php?trang=inputotp');
            exit();
          }
        } else {
          $_SESSION['otp_error'] = "Mã OTP không chính xác. Vui lòng thử lại.";
          header('Location: index.php?trang=inputotp');
          exit();
        }
      } else {
        $_SESSION['otp_error'] = "Vui lòng nhập mã OTP.";
        header('Location: index.php?trang=inputotp');
        exit();
      }
    }

    include_once 'view/inputotp.php';
  }
}