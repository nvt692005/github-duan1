<?php
$page = isset($_GET['trang']) ? $_GET['trang'] : 'home';
$id = isset($_GET['id']) ? $_GET['id'] : '';
$iddm = isset($_GET['iddm']) ? $_GET['iddm'] : '';
<<<<<<< HEAD
if ($page !== 'login' && $page !== 'signup') {
    include_once 'view/header.php';
}


=======
if ($page !== 'login' && $page !== 'signup' && $page !== 'sendotp' && $page !== 'inputotp' && $page !== 'resetpassword' && $page !== 'successful') {
    include_once 'view/header.php';
}

>>>>>>> e174863 (post)
switch ($page) {
    case 'home':
        include_once 'controller/HomeController.php';
        $HomeController = new HomeController($id, $iddm);
        break;
    case 'introduce':
        include_once 'view/introduce.php';
        break;
    case 'product':
        include_once 'controller/ProductController.php';
        $ProductController = new ProductController($iddm);
        break;
<<<<<<< HEAD
    case 'product_detail':  
=======
    case 'product_detail':
>>>>>>> e174863 (post)
        include_once 'controller/HomeController.php';
        $HomeController = new HomeController($id, $iddm);
        break;
    case 'product_love':
        include_once 'view/product_love.php';
        break;
    case 'contact':
<<<<<<< HEAD
            include_once 'view/contact.php';
            break;
=======
        include_once 'view/contact.php';
        break;
>>>>>>> e174863 (post)
    case 'cart':
        include_once 'controller/CartController.php';
        $CartController = new CartController();
        break;
    case 'checkout':
        include_once 'controller/CheckOutController.php';
        $CheckOutController = new CheckOutController();
        break;
<<<<<<< HEAD
=======
    case 'post':
        include_once 'controller/PostController.php';
        $PostController = new PostController($id);
        break;
>>>>>>> e174863 (post)
    case 'login':
        include_once 'controller/LoginController.php';
        $LoginController = new LoginController();
        break;
    case 'signup':
        include_once 'controller/SignUpController.php';
        $SignUpController = new SignUpController();
        break;
<<<<<<< HEAD
=======
    case 'sendotp':
        include_once 'controller/SendOTPController.php';
        $SendOTPController = new SendOTPController();
        break;
    case 'inputotp':
        include_once 'controller/InputOTPController.php';
        $InputOTPController = new InputOTPController();
        break;
    case 'logout':
        include_once 'controller/LogOutController.php';
        $LogOutController = new LogOutController();
        break;
    case 'resetpassword':
        include_once 'controller/ResetPasswordController.php';
        $ResetPasswordController = new ResetPasswordController();
        break;
    case 'successful':
        include_once 'controller/SuccessfulController.php';
        $SuccessfulController = new SuccessfulController();
        break;
>>>>>>> e174863 (post)
    default:
        echo "Trang không tồn tại!";
        break;
}

<<<<<<< HEAD


if ($page !== 'login' && $page !== 'signup') {
    include_once 'view/footer.php';
}
=======
if ($page !== 'login' && $page !== 'signup' && $page !== 'sendotp' && $page !== 'inputotp' && $page !== 'resetpassword' && $page !== 'successful') {
    include_once 'view/footer.php';
}
>>>>>>> e174863 (post)
