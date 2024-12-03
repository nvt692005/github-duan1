<?php
// Bao gồm các tệp cần thiết để sử dụng PHPMailer
require_once 'Mail/PHPMailer/src/Exception.php';
require_once 'Mail/PHPMailer/src/PHPMailer.php';
require_once 'Mail/PHPMailer/src/SMTP.php';

// Dùng PHPMailer và Exception từ thư viện PHPMailer
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

class SendOTPController
{
  public function __construct()
  {
    // Bắt đầu phiên làm việc (session)
    session_start();

    // Kiểm tra nếu form gửi là POST
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
      $email = $_POST['email'];  // Lấy email từ form

      // Kiểm tra xem email có hợp lệ không
      if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $_SESSION['message'] = "Email không hợp lệ.";  // Lưu thông báo lỗi
        header("Location: index.php?trang=sendotp");  // Quay lại trang sendotp
        exit();
      }

      // Kiểm tra nếu OTP đã được gửi trước đó và chưa hết hạn
      if ($this->isOtpValid()) {
        $_SESSION['message'] = "Bạn đã yêu cầu OTP trước đó. Vui lòng thử lại sau 5 phút.";
        header("Location: index.php?trang=sendotp");  // Quay lại trang sendotp
        exit();
      }


      // Tạo OTP mới và lưu vào session
      $_SESSION['otp'] = rand(100000, 999999);  // Tạo mã OTP ngẫu nhiên
      $_SESSION['email'] = $email;  // Lưu email vào session
      $_SESSION['otp_created_at'] = time();  // Lưu thời gian tạo OTP vào session

      // Tiêu đề và nội dung email
      $title = "Mã xác thực OTP";
      $content = "Mã OTP của bạn là: {$_SESSION['otp']}";

      if ($this->sendMail($title, $content, $email)) {
        $_SESSION['message'] = "Mã OTP đã được gửi đến email của bạn.";
        header("Location: index.php?trang=inputotp");
      } else {
        $_SESSION['message'] = "Có lỗi khi gửi email.";
        header("Location: index.php?trang=sendotp");
      }
      exit();
    } else {
      include 'view/sendotp.php';
    }
  }

  // Hàm kiểm tra OTP có hợp lệ không (chưa hết hạn)
  private function isOtpValid()
  {
    if (isset($_SESSION['otp_created_at']) && time() - $_SESSION['otp_created_at'] < 300) {
      return true;
    }
    return false;
  }


  // Hàm gửi email
  private function sendMail($title, $content, $addressMail)
  {
    $mail = new PHPMailer(true);
    try {
      $mail->isSMTP();
      $mail->Host       = 'smtp.gmail.com';
      $mail->SMTPAuth   = true;
      $mail->Username   = 'nguyendung2k50@gmail.com';
      $mail->Password   = 'peas oghe fxrv jwjv';
      $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
      $mail->Port       = 465;

      $mail->setFrom('nguyendung2k50@gmail.com', 'vscodestd');
      $mail->addAddress($addressMail);

      // Nội dung email
      $mail->isHTML(true);
      $mail->Subject = $title;
      $mail->Body    = $content;
      $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

      return $mail->send();
    } catch (Exception $e) {
      $_SESSION['message'] = "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
      return false;
    }
  }
}