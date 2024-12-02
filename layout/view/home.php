<div class="banner">
  <div class="banner-left">
    <img src="public/img/baner.png" alt="Gi Cung Re 11.11 Sale">
  </div>
  <div class="banner-right">
    <img src="public/img/banner2.png" alt="AF1 All White">
  </div>
</div>

<div class="product_container">
  <div class="tittle_hot">
    <p>Giá Sốc⚡Hôm Nay</p>
    <div class="countdown">
      <a href="#" class="view-all">Xem tất cả</a>
    </div>
  </div>

  <!-- Sản phẩm khuyến mãi -->
  <div class="products">
    <?php
    $ch = '';
    foreach ($homemodel->mangspkm as $item){
      extract($item);
      $ch .= '
      <div class="product">
        <div class="discount">-' . $GiamGia . '%</div>
        <a href="index.php?trang=product_detail&id='.$Id_SP.'&iddm='.$Id_DM.'">
        <img src="public/img/' . $Path . '" alt="' . $TenSP . '">
        <h3>' . $TenSP . '</h3></a>
        <p class="price">
          <span class="old-price">'. number_format($GiaGoc, 0, ',', '.') . '₫</span>
          <span class="new-price">'. number_format($Gia, 0, ',', '.') .'₫</span>
        </p>
      </div>';
    }
    echo $ch;
    ?>
  </div>
</div>
<?php
// Hiển thị sản phẩm theo danh mục
if (!empty($homemodel->mangsptheodm)) {
  $ch = ''; // Khởi tạo biến $ch để chứa HTML

  foreach ($homemodel->mangsptheodm as $categoryName => $products) {
      $ch .= "<div class='product_container'>";  // Mở container sản phẩm
      $ch .= "<div class='tittle'><p>" . $categoryName . "</p></div>";  // Tên danh mục
      $ch .= "<div class='products'>";  // Mở danh sách sản phẩm

      foreach ($products as $sanpham) {
          extract($sanpham);  // Lấy thông tin sản phẩm từ mảng

          // Nối HTML của sản phẩm vào biến $ch
          $ch .= "<div class='product'>";
          $ch .= "<div class='discount'>-" . $GiamGia . "%</div>";
          
          // Dùng dấu nháy kép cho href và dấu nháy đơn cho chuỗi PHP
          $ch .= '<a href="index.php?trang=product_detail&id=' . $Id_SP . '&iddm=' . $Id_DM . '">';
          $ch .= "<img src='public/img/" . $Path . "' alt='" . $TenSP . "'>";
          $ch .= "<h3>" . $TenSP . "</h3>";
          $ch .= "</a>";
          
          $ch .= "<p class='price'>
                  <span class='old-price'>" . number_format($GiaGoc, 0, ',', '.') . "₫</span>
                  <span class='new-price'>" . number_format($Gia, 0, ',', '.') . "₫</span>
                </p>";
          $ch .= "</div>";  // Đóng div.product
      }

      $ch .= "</div>";  // Đóng div.products
      $ch .= "</div>";  // Đóng div.product_container
  }

  // In ra chuỗi HTML đã được tạo
  echo $ch;
} else {
  echo "<p>Không có sản phẩm trong các danh mục này.</p>";
}


