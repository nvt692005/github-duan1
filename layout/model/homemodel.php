<?php
class HomeModel
{
    public $mangsp;



    public function dssp()
    {
        include_once 'model/connectmodel.php';
        $data = new ConnectModel();
        $sql = "select * from sanpham";
        $data->selectall($sql);
        $this->mangsp = $data->selectall($sql);
    }
}