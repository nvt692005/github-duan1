<?php

class HomeController
{
    public function __construct($id, $iddm)

    {
        include_once 'model/homemodel.php';
        $homemodel = new homemodel();
        if ($id != '') {
            $homemodel->onesp($id);
            $homemodel->splienquan($id, $iddm);
            include_once 'view/product_detail.php';
            
        } else {
            $homemodel->dssptheodm();
            $homemodel->dsspkm();
            include_once 'view/home.php';
        }
    }
}
