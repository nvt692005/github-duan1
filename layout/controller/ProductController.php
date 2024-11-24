<?php
class ProductController
{
    public function __construct($iddm)
{
    include_once 'model/productmodel.php';
    $dm = new ProductModel();
    $dm->dsdm();  // Lấy danh mục
    
    
    if (empty($iddm)) {
        // Trường hợp không có id danh mục (hiển thị tất cả sản phẩm)
        $dm->dssp();  // Lấy tất cả sản phẩm
        $mangsp = $dm->sp;
    } else {
        // Trường hợp có id danh mục (hiển thị sản phẩm theo danh mục)
        $mangsp = $dm->dssptheodm($iddm);
    }

    // Gửi dữ liệu tới view
    include_once 'view/product.php';
}

}
