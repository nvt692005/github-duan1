<?php
class ProductModel
{
    public $dm;
    public $sp;
    public function dsdm()
    {
        include_once 'model/connectmodel.php';
        $dulieu = new ConnectModel();
        $sql = "select * from DanhMuc";
        $this->dm = $dulieu->selectall($sql);
    }
    public function dssp()
    {
        include_once 'model/connectmodel.php';
        $dulieu = new ConnectModel();
        $sql = "
        Select s.Id_SP, s.TenSP, s.Id_DM, s.GiaGoc, s.Gia, s.GiamGia, s.MotaSP, Path
        from sanpham s
        Join hinhanh h ON s.Id_SP = h.Id_SP
        ";
        $this->sp = $dulieu->selectall($sql);
    }
    public function dssptheodm($iddm)
{
        include_once 'model/connectmodel.php';
        $sql = "
        Select s.Id_SP, s.TenSP, s.Id_DM, s.GiaGoc, s.Gia, s.GiamGia, s.MotaSP, Path
        from sanpham s
        Join hinhanh h ON s.Id_SP = h.Id_SP
        where Id_DM=:iddm";
        
        $data = new ConnectModel();
        $data->ketnoi();
        $stmt = $data->conn->prepare($sql);
        $stmt->bindParam(":iddm", $iddm);
        $stmt->execute();
        $kq = $stmt->fetchAll(PDO::FETCH_ASSOC);
        $data->conn = null;
        return $kq;
}

}
