<?php
class PostController
{
  public function __construct($id = null)
  {
    include_once 'model/PostModel.php';
    $postModel = new PostModel();

    if ($id == null) {
      $id = 1;  // Mặc định lấy bài viết 1 nếu không có id
    }

    // Lấy chi tiết bài viết và bài viết liên quan
    $postModel->layChiTietBaiViet($id);
    $postModel->layBaiVietLienQuan($id);

    // Lưu dữ liệu vào biến
    $baiViet = $postModel->chitietbaiviet;
    $relatedPosts = $postModel->relatedPosts;

    // Gọi view để hiển thị bài viết
    include_once 'view/post.php';
  }
}
