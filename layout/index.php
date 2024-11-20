<?php
include_once 'view/header.php';
$page = isset($_GET['trang']) ? $_GET['trang'] : 'home';
switch ($page) {
    case 'home':
        include_once 'controller/HomeController.php';   
    }
    
include_once 'views/footer.php';
?>