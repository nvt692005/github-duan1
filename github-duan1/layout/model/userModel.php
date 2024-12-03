<?php
class UserModel
{
  private $data;


  public function __construct()
  {

    include_once 'model/connectmodel.php';
    $this->data = new ConnectModel();
  }


  public function checkUserExists($username, $email)
  {
    $sql = "SELECT * FROM nguoidung WHERE TaiKhoan = :username OR Email = :email";
    $params = ['username' => $username, 'email' => $email];
    return $this->data->selectall($sql, $params);
  }

  public function addUser($username, $password, $email)
  {
    $hashPassword = password_hash($password, PASSWORD_DEFAULT);
    $sql = "INSERT INTO nguoidung (TaiKhoan, MatKhau, Email) VALUES (:username, :password, :email)";
    $params = [
      ':username' => $username,
      ':password' => $hashPassword,
      ':email' => $email
    ];
    try {
      $conn = $this->data->ketnoi();
      $stmt = $conn->prepare($sql);
      $stmt->execute($params);
      return $stmt->rowCount();
    } catch (Exception $e) {
      echo "Có lỗi xảy ra: " . $e->getMessage();
      return false;
    }
  }

  public function checkLogin($username, $password)
  {
    $sql = "SELECT * FROM nguoidung WHERE TaiKhoan = :username";
    $params = ['username' => $username];
    $result = $this->data->selectall($sql, $params);
    if (count($result) > 0) {
      $user = $result[0];

      if ($user['TaiKhoan'] === $username && $password === $user['MatKhau']) {

        return $user;
      }
    }
    return false;
  }
  public function checkEmailExists($email)
  {
    $sql = "SELECT * FROM nguoidung WHERE Email = :email LIMIT 1";
    $params = [':email' => $email];
    $result = $this->data->selectall($sql, $params);
    return $result;
  }

  public function updatePasswordByEmail($newPassword)
  {
    if (!isset($_SESSION['verified_email'])) {
      echo "Không tìm thấy email trong phiên làm việc.";
      return false;
    }

    $email = $_SESSION['verified_email']; // Lấy email từ session
    echo "Email nhận từ session: " . $email . "<br>";

    // Kiểm tra sự tồn tại của email trong cơ sở dữ liệu
    $conn = $this->data->ketnoi();
    $checkEmailSql = "SELECT * FROM nguoidung WHERE Email = :email";
    $stmt = $conn->prepare($checkEmailSql);
    $stmt->execute([':email' => $email]);

    if ($stmt->rowCount() === 0) {
      echo "Email không tồn tại.";
      return false;
    }

    // Mã hóa và cập nhật mật khẩu mới
    $hashPassword = password_hash($newPassword, PASSWORD_DEFAULT);
    $updateSql = "UPDATE nguoidung SET MatKhau = :password WHERE Email = :email";
    $updateStmt = $conn->prepare($updateSql);
    $updateResult = $updateStmt->execute([
      ':password' => $hashPassword,
      ':email' => $email
    ]);

    if ($updateResult) {
      header("Location: index.php?trang=successful");
      exit();
    } else {
      echo '<div class="alert alert-danger">Lỗi: Không thể thay đổi mật khẩu. Vui lòng thử lại.</div>';
      return false;
    }
  }
}
