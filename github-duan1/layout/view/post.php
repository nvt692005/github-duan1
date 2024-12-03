<link rel="stylesheet" href="public/css/new.css">

<div class="container-post">
  <div class="list_post">
    <?php
    if (!empty($baiViet) && is_array($baiViet)) {
      echo "<h1>" . htmlspecialchars($baiViet['tieude']) . "</h1>";
      echo ' <div class="datepost">';
      echo "<p><i class='fa-regular fa-calendar'></i> <strong> Ngày đăng:</strong> " . htmlspecialchars($baiViet['ngaydang']) . "</p>";
      echo "<p><i class='fa-solid fa-user'></i><strong>Người đăng:</strong> " . htmlspecialchars($baiViet['nguoidang']) . "</p>";
      echo "</div>";
      echo "<div class='content'>" . $baiViet['noidung'] . "</div>";
    } else {
      echo "<p>Bài viết không tồn tại.</p>";
    }
    ?>
  </div>

  <!-- Bài viết liên quan -->
  <div class="Related-articles">
    <h3>Bài viết liên quan</h3>
    <ul>
      <?php
      if (!empty($relatedPosts) && is_array($relatedPosts)) {
        foreach ($relatedPosts as $post) {
          echo "<li class='post-item'>";
          echo "<div class='thumbnail-container'>";
          $basePath = "public/img/";
          $imagePath = $basePath . htmlspecialchars($post['thumbnail']);
          echo "<img src='" . $imagePath . "' alt='Thumbnail' class='thumbnail'>";
          echo "</div>";
          echo "<div class='post-info'>";
          echo "<a href='index.php?trang=post&id=" . htmlspecialchars($post['id']) . "'>" . htmlspecialchars($post['tieude']) . "</a>";
          echo "<p>Ngày đăng: " . htmlspecialchars($post['ngaydang']) . "</p>";
          echo "</div>";
          echo "</li>";
        }
      } else {
        echo "<p>Không có bài viết liên quan.</p>";
      }
      ?>
    </ul>
  </div>
</div>