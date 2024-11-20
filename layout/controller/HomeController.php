<?php

class HomeController
{
    public function __construct($id, $iddm)

    {
        include_once 'model/homemodel.php';
        $homemodel = new homemodel();
        if ($id != '') {
            include_once 'views/productdetail.php';
        } else {
            $homemodel->dssp();
            include_once 'views/home.php';
        }
    }
}
