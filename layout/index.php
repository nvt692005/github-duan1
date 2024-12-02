<?php
$page = isset($_GET['trang']) ? $_GET['trang'] : 'home';
$id = isset($_GET['id']) ? $_GET['id'] : '';
$iddm = isset($_GET['iddm']) ? $_GET['iddm'] : '';
if ($page !== 'login' && $page !== 'signup') {
    include_once 'view/header.php';
}


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
    case 'product_detail':  
        include_once 'controller/HomeController.php';
        $HomeController = new HomeController($id, $iddm);
        break;
    case 'product_love':
        include_once 'view/product_love.php';
        break;
    case 'contact':
            include_once 'view/contact.php';
            break;
    case 'cart':
        include_once 'controller/CartController.php';
        $CartController = new CartController();
        break;
    case 'checkout':
        include_once 'controller/CheckOutController.php';
        $CheckOutController = new CheckOutController();
        break;
    case 'login':
        include_once 'controller/LoginController.php';
        $LoginController = new LoginController();
        break;
    case 'signup':
        include_once 'controller/SignUpController.php';
        $SignUpController = new SignUpController();
        break;
    default:
        echo "Trang không tồn tại!";
        break;
}



if ($page !== 'login' && $page !== 'signup') {
    include_once 'view/footer.php';
}