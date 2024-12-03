<<<<<<< HEAD
=======
<?php
session_start(); // Bắt đầu session
?>

>>>>>>> e174863 (post)
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport"
    content="width=device-width, initial-scale=1.0">
  <title>Shop Giày</title>
  <script src="https://kit.fontawesome.com/a076d05399.js"></script>
<<<<<<< HEAD
 
=======

>>>>>>> e174863 (post)
  <link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
    integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="public/css/index.css">
</head>
<<<<<<< HEAD
=======
<style>
.nav-links {
  display: flex;
  align-items: center;
  gap: 15px;
  /* Khoảng cách giữa các biểu tượng */
  position: relative;
}

.dropdown-content {
  display: none;
  position: absolute;
  top: 30px;
  ;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
  z-index: 1;
  border-radius: 5px;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {
  background-color: #ddd;
  border-radius: 5px;
}

.nav-links:hover .dropdown-content {
  display: block;
  /* Show the dropdown when hovering over the user icon */
}
</style>
>>>>>>> e174863 (post)

<body>
  <div class="container">
    <!-- Header -->
    <div class="header_background">
      <div class="header">
        <div class="header_left">
<<<<<<< HEAD
        <img src="public/img/1.png">
        <div class="search-bar">
          <input type="text" placeholder="Tìm kiếm nhanh sản phẩm...">
          <button>
            <i class="fa-solid fa-magnifying-glass"
              style="color: #FFD43B;height: 16px;"></i>
          </button>
        </div>
        </div>

        <div class="nav-links">
        <a href="index.php?trang=product_love"><i class="fa-solid fa-heart"></i></i></a>
          <a href="index.php?trang=cart"><i class="fa-solid fa-cart-shopping"></i></a>
          <a href="index.php?trang=login"> <i class="fa-solid fa-user"></i></a>
          
        </div>
        
=======
          <img src="public/img/1.png">
          <div class="search-bar">
            <input type="text"
              placeholder="Tìm kiếm nhanh sản phẩm...">
            <button>
              <i class="fa-solid fa-magnifying-glass"
                style="color: #FFD43B;height: 16px;"></i>
            </button>
          </div>
        </div>

        <div class="nav-links">
          <a href="index.php?trang=product_love"><i
              class="fa-solid fa-heart"></i></a>
          <a href="index.php?trang=cart"><i
              class="fa-solid fa-cart-shopping"></i></a>

          <?php if (isset($_SESSION['user']) && isset($_SESSION['user']['TaiKhoan'])): ?>
          <div class="user-menu">
            <p class="user-info">
              <i class="fa-solid fa-user"
                style="color: white; margin-right: 10px;"></i>
              <strong><?php echo htmlspecialchars($_SESSION['user']['TaiKhoan']); ?></strong>
            </p>
            <div class="dropdown-content">
              <a href="index.php?trang=logout">Đăng xuất</a>
              <a href="index.php?trang=manage_products">Quản lý sản
                phẩm</a>
            </div>
          </div>
          <?php else: ?>
          <a href="index.php?trang=login"><i
              class="fa-solid fa-user"></i></a>
          <?php endif; ?>
        </div>

>>>>>>> e174863 (post)
      </div>
    </div>

    <div class="categories">
<<<<<<< HEAD
      <div class="category-item"><a href="index.php?trang=home">Trang Chủ</a></div>
      <div class="category-item"><a href="index.php?trang=introduce">Giới Thiệu</a></div>
      <div class="category-item"><a href="index.php?trang=product">Sản phẩm</a></div>
      <div class="category-item"><a href="index.php?trang=contact">Liên Hệ</a></div>
      <div class="category-item"><a href="index.php?trang=new">Tin Tức</a></div>

    </div>
   
=======
      <div class="category-item"><a href="index.php?trang=home">Trang
          Chủ</a></div>
      <div class="category-item"><a
          href="index.php?trang=introduce">Giới Thiệu</a></div>
      <div class="category-item"><a href="index.php?trang=product">Sản
          phẩm</a></div>
      <div class="category-item"><a
          href="index.php?trang=contact">Liên Hệ</a></div>
      <div class="category-item"><a href="index.php?trang=post">Tin
          Tức</a></div>

    </div>
>>>>>>> e174863 (post)
