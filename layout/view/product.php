
<link rel="stylesheet" href="public/css/product.css">
       
        <div class="product_container1">
            <div class="product_catagory">
                        <p>DANH MỤC SẢN PHẨM</p>
                        <div class="product_catagory_list">
                            <a href="index.php?trang=product">Tất Cả Sản Phẩm</a><br>
                            <style >
                             .product_catagory_list a {
                              color: #000; /* Màu mặc định cho liên kết */
                            }


                            .product_catagory_list a:hover {
                              color: #FF5733; /* Màu khi rê chuột */
                            }
                            </style>
                            <?php

                            $ch = '';
                            foreach ($dm->dm as $key => $value) {
                                $ch .= '<a  href="index.php?trang=product&iddm='.$value['Id_DM'] .' &Ten_DM=' . $value['Ten_DM'] . '">' . $value['Ten_DM'] . '</a> <br>';
                            }
                            echo $ch;
                            ?>

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

                        <div class="product_catagory_hotline">
                          <p class="hotline_tittle">Hotline đặt hàng</p>
                          <p class="hotline_phone">0932.433.160</p>
                          <p class="hotline_contact">(Zalo, 7h00 – 23h cả T7,CN)</p>
                        </div>
                </div>
                        <div class="product_list">
                        <div class="header-menu">
                        <?php
                        
                        $category_name = isset($_GET['Ten_DM']) ? $_GET['Ten_DM'] : 'Tất Cả Sản Phẩm';  // Mặc định là "Tất Cả Sản Phẩm" nếu không có Ten_DM trong URL
                        ?>

                        <div class="header_link"><p class="link_now"><?php echo $category_name?>
                        </p></div>
                        <label for="sort-options">Sắp xếp theo</label>
                        <select id="sort-options">
                              <option value="rating">Sản Phẩm Mới Ra Mắt</option>
                              <option value="trending">Sản Phẩm Trending</option>
                              <option value="price-desc">Giá Từ Cao Đến Thấp</option>
                              <option value="price-asc">Giá Từ Thấp Đến Cao</option>

                          </select>
                </div>
                          
                            <!-- Products -->
                            <div class="products">
                              <!-- Product Item 1 -->
                              <?php
                               $ch ='';
                               foreach ($mangsp as $key => $value) {
                                extract($value);
                                $ch .= '
                                <div class="product">
                                  <div class="discount">-' . $GiamGia . '%</div>
                                  <a href="index.php?trang=product_detail&id='.$Id_SP.'&iddm='.$Id_DM.'">
                                  <img src="public/img/'.$Path.'" alt="' . $TenSP . '">
                                  <h3>' . $TenSP . '</h3></a>
                                  <p class="price">
                                    <span class="old-price">'. number_format($GiaGoc, 0, ',', '.') . '₫</span>
                                    <span class="new-price">'. number_format($Gia, 0, ',', '.') .'₫</span>
                                  </p>
                                </div>';
                              }
                              echo $ch;
                              
                                ?>

                            </div>
                          </div>
                

                    </div>
                 
  


            </div>