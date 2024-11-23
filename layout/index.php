<?php
include_once 'view/header.php';
$page = isset($_GET['trang']) ? $_GET['trang'] : 'home';
switch ($page) {
    case 'home':
        include_once 'controller/HomeController.php';
        $HomeController = new HomeController();
        break;
    case 'adidas':
        include_once 'controller/ProductController.php';
        $ProductController = new ProductController();
        break;
    case 'cart':
        include_once 'controller/CartController.php';
        $CartController = new CartController();
        break;
    case 'checkout':
        include_once 'controller/CheckOutController.php';
        $CheckOutController = new CheckOutController();
        break;
    
    
}
include_once 'view/footer.php';
