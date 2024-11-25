<?php
class HomeModel
{
    public $mangsptheodm;
    public $motsp;
    public $splienquan;
    public $mangspkm;



    public function dsspkm()
    {
        include_once 'model/connectmodel.php';
        $data = new ConnectModel();
        $sql = "
        SELECT s.Id_SP, s.TenSP, s.Id_DM, s.GiaGoc, s.Gia, s.GiamGia, s.MotaSP, h.Path 
        FROM Sanpham s 
        JOIN hinhanh h ON s.ID_SP = h.ID_SP 
        WHERE s.GiamGia >= 50
        LIMIT 5;
        ";
        $data->selectall($sql);
        $this->mangspkm = $data->selectall($sql);
    }
    public function onesp($id)
    {
        include_once 'model/connectmodel.php';
        $data = new ConnectModel();
        $sql = "
        Select s.Id_SP, s.TenSP,Ten_DM, s.Gia, s.GiaGoc, s.MotaSP, h.Path
        FROM sanpham s
        JOIN DanhMuc d ON d.Id_DM = s.Id_DM
        JOIN hinhanh h ON s.Id_SP = h.Id_SP
        WHERE s.Id_SP = :id
        ";
        $this->motsp = $data->selectone($sql, $id);
     
        
    }
    

    public function splienquan($id, $iddm)
{
    include_once 'model/connectmodel.php';
    try {
        $data = new ConnectModel();
        $data->ketnoi();

        $sql = "
        SELECT s.Id_SP, TenSP, s.Id_DM, GiaGoc, Gia, GiamGia, h.Path
        FROM sanpham s
        JOIN hinhanh h ON s.Id_SP = h.Id_SP
        WHERE s.Id_DM = :iddm AND s.Id_SP <> :id
        LIMIT 5";

        $stmt = $data->conn->prepare($sql);
        $stmt->bindParam(":id", $id, PDO::PARAM_INT);
        $stmt->bindParam(":iddm", $iddm, PDO::PARAM_INT);
        $stmt->execute();

        $this->splienquan = $stmt->fetchAll(PDO::FETCH_ASSOC);
    } catch (PDOException $e) {
        // Xử lý lỗi nếu có
        echo "Error: " . $e->getMessage();
        $this->splienquan = [];
    } finally {
        // Đảm bảo đóng kết nối
        $data->conn = null;
    }
}


public function dssptheodm()
{
    include_once 'model/connectmodel.php';
    $data = new ConnectModel();

    // Truy vấn sản phẩm mới ra mắt (theo NgayDang)
    $sqlNewProducts = "
        SELECT 
            s.Id_SP, s.TenSP, s.GiaGoc, s.Gia, s.GiamGia, h.Path, s.NgayDang
        FROM Sanpham s
        JOIN hinhanh h ON s.ID_SP = h.ID_SP
        WHERE s.NgayDang IS NOT NULL
        ORDER BY s.NgayDang ASC
        LIMIT 5
    ";

    // Truy vấn sản phẩm nhiều lượt xem (theo LuotXem)
    $sqlTopViewedProducts = "
        SELECT 
            s.Id_SP, s.TenSP, s.GiaGoc, s.Gia, s.GiamGia, h.Path, s.LuotXem
        FROM Sanpham s
        JOIN hinhanh h ON s.ID_SP = h.ID_SP
        WHERE s.LuotXem IS NOT NULL
        ORDER BY s.LuotXem DESC
        LIMIT 5
    ";

    // Thực thi truy vấn cho "Sản phẩm Mới Ra Mắt"
    $data->ketnoi();
    $stmt = $data->conn->prepare($sqlNewProducts);
    $stmt->execute();
    $newProducts = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Thực thi truy vấn cho "Sản phẩm Nhiều Lượt Xem"
    $stmt = $data->conn->prepare($sqlTopViewedProducts);
    $stmt->execute();
    $topViewedProducts = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Kết hợp các sản phẩm từ hai truy vấn
    $products = array_merge($newProducts, $topViewedProducts);

    // Nhóm sản phẩm theo tiêu chí (Sản phẩm Mới Ra Mắt / Sản phẩm Nhiều Lượt Xem)
    $groupedProducts = [];
    foreach ($newProducts as $product) {
        $groupedProducts['Sản phẩm Mới Ra Mắt'][] = $product;
    }

    foreach ($topViewedProducts as $product) {
        $groupedProducts['Sản phẩm Trending'][] = $product;
    }

    $data->conn = null;
    $this->mangsptheodm = $groupedProducts; // Lưu kết quả sản phẩm theo tiêu chí
}




}
