<?php
<<<<<<< HEAD
=======
// Bao gồm file UserModel
include_once 'model/userModel.php';
>>>>>>> e174863 (post)

class LoginController
{
    public function __construct()
<<<<<<< HEAD

    {
        include_once 'view/login.php';

    }
}
=======
    {

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $this->handleLogin();
        } else {
            include 'view/login.php';
        }
    }

    private function handleLogin()
    {
        session_start();

        // Lấy dữ liệu từ form
        $username = $_POST['username'];
        $password = $_POST['password'];

        // Khởi tạo UserModel sau khi đã bao gồm
        $userModel = new UserModel();
        $user = $userModel->checkLogin($username, $password);


        if ($user) {
            $_SESSION['user'] = $user;
            $_SESSION['success_message'] = "Đăng nhập thành công!";
            header("Location: index.php?trang=home");
            exit;
        } else {
            $_SESSION['error_message'] = "Tài khoản hoặc mật khẩu không đúng!";
            header("Location: index.php?trang=login");
            exit;
        }
    }
}
>>>>>>> e174863 (post)
