<?php
class PostModel
{
  public $chitietbaiviet;
  public $relatedPosts;

  // Lấy chi tiết bài viết theo ID
  public function layChiTietBaiViet($id)
  {
    include_once 'model/connectmodel.php';
    $data = new ConnectModel();
    $sql = "SELECT * FROM baiviet WHERE id = :id";
    $params = [':id' => $id];
    $result = $data->selectoneSingle($sql, $params);

    if (!empty($result)) {
      $this->chitietbaiviet = $result;
    } else {
      $this->chitietbaiviet = null;
    }
  }

  // Lấy bài viết liên quan
  public function layBaiVietLienQuan($id)
  {
    include_once 'model/connectmodel.php';
    $data = new ConnectModel();
    $sql = "SELECT * FROM baiviet WHERE id != :id LIMIT 5";
    $params = [':id' => $id];
    $this->relatedPosts = $data->selectall($sql, $params);
  }
}
