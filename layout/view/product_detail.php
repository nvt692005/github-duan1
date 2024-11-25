<link rel="stylesheet" href="public/css/product_detail.css">

    <div class="container_productdetail">
      <?php

      $ch = '';
      foreach ($homemodel->motsp as $key => $value) {
        extract($value);
      $ch.= '
      <div class="header-menu">
            <div class="header_link"><a href="">Trang chủ</a> <p >'.$Ten_DM.'</p><p class="link_now">'.$TenSP.'</p></div>
            </div>
        <div class="backround_productdetail">
            <div class="productdetail_image">
                <div class="productdetail_image_main"><img src="public/img/'.$Path.'" alt=""></div>
                <div class="productdetail_image_extra">
                    <img src="public/img/'.$Path.'" alt="">
                    <img src="public/img/'.$Path.'" alt="">
                    <img src="public/img/'.$Path.'" alt="">
                    <img src="public/img/'.$Path.'" alt="">
                </div>

            </div>
            <div class="productdetail">
                <P class="productdetail_name">'.$TenSP.'</P>
                <div class="product_price"><del>'.$GiaGoc.'đ</del> <p>'.$Gia.'đ</p></div>
                <p>Mã sản phẩm: '.$Id_SP.'</p>
                <p>Tặng tất theo sản phẩm</p>
                <div class="product_size">
                    <div class="tittle_size">Size</div>
                    <p>36</p>
                    <p>37</p>
                    <p>38</p>
                    <p>39</p>
                    <p>40</p>
                    <p>41</p>
                    <p>42</p>
                    <p>43</p>
                    <p>44</p>
                </div>
                <div class="product_quanlity" >
                    <p>Chọn số lượng:</p>
                    <div class="counter">
                        <span>-</span>
                        <span>1</span>
                        <span>+</span>
                    </div>
                </div>
                <button class="click_buy">ĐẶT MUA NGAY</button>

            </div>

            <div class="product_catagory_policy">
                <div class="logo_tittle">
                 <img  height="50" src="public/img/1.png" width="100"/>
                 <p>Fivestep shoe</p>
                </div>
                <div class="features">
                 <div class="feature">
                  <img src="public/img/hoan-tien.png.png" alt="">
                  <p> Hoàn tiền<br/><strong> 100%</strong><br/>nếu hàng không chuẩn </p>
                 </div>
                 <div class="feature">
                 <img src="public/img/unbox.png" alt=""><p>Nhận hàng<br/>Kiểm tra hàng<br/>Thoải mái </p>
                 </div>
                 <div class="feature">
                  <img src="public/img/doi-tra.png" alt=""><p> Đổi trả trong<br/><strong>7 ngày </strong><br/>nếu sp lỗi</p>
                 </div>
                </div>

            </div>


        </div>
        <div class="product_describe">
            <div class="header_tittle">MÔ TẢ SẢN PHẨM</div>
            <div class="product_describe_detail">
                <p><a href="">'.$TenSP.'</a> '.$MotaSP.'</p>
                <img src="public/img/'.$Path.'" alt="">
                <p class="view_detail">Xem tiếp</p>
            </div>
        </div>';
}
echo $ch;

       
?>
        <div class="product_container">
            <div class="tittle">
                <p>Khám Phá Thêm</p>
              <div class="countdown">
                <a href="#" class="view-all">Xem tất cả</a>
              </div>
            </div>
        
            <!-- Products -->
            <div class="products">
              <!-- Product Item 1 -->
              <?php
                 $ch = '';
                 foreach ($homemodel->splienquan as $item){
                   extract($item);
                   $ch .= '
                   <div class="product">
                     <div class="discount">-'.$GiamGia.'%</div>
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
              ?>
            </div>
          </div>

    </div>
