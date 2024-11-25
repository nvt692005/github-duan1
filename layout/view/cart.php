<link rel="stylesheet" href="public/css/cart.css">
    <!-- Wave Overlay -->
    <div class="wave-overlay"></div>

<!-- Cart Container -->
<div class="cart-container">
    <h1 class="cart-title">Giỏ Hàng Của Bạn</h1>
    <div class="cart-content">
        <!-- Cart Items Section -->
        <div class="cart-items">
            <!-- Header Row -->
            <div class="cart-header">
                <div class="header-column">Sản phẩm</div>
                <div class="header-column">Size</div>
                <div class="header-column">Giá</div>
                <div class="header-column">Mã giảm giá</div>
                <div class="header-column">Số lượng</div>
                <div class="header-column">Thao tác</div>
            </div>

            <!-- Cart Item -->
            <div class="cart-item">
                <div class="item-column">
                    <div class="item-image">
                        <img src="https://via.placeholder.com/100" alt="Product Image">
                    </div>
                    <div class="item-details">
                        <h3 class="item-name">Giày Louis Vuitton x Travis Scott</h3>
                    </div>
                </div>
                <div class="item-column">
                    <p class="item-size">36</p>
                </div>
                <div class="item-column">
                    <p class="item-price">1,200,000 VND</p>
                </div>
                <div class="item-column">
                    <p class="item-discount">-10%</p>
                </div>
                <div class="item-column">
                    <div class="item-quantity">
                        <button class="btn-quantity">-</button>
                        <input type="text" value="1">
                        <button class="btn-quantity">+</button>
                    </div>
                </div>
                <div class="item-column">
                    <button class="btn-delete">Xóa</button>
                </div>
            </div>

            <!-- Back to Shop Button -->
            <a href="index.php" class="btn-back-to-shop">Quay Lại Cửa Hàng</a>
        </div>

        <!-- Summary Section -->
        <div class="cart-summary">
            <h2 class="summary-title">Tóm Tắt Thanh Toán</h2>
            <div class="summary-details">
                <p>Tạm tính: <span>2,400,000 VND</span></p>
                <p>Phí vận chuyển: <span>30,000 VND</span></p>
                <div class="summary-discount-box">
                    Mã giảm giá: -120,000 VND
                </div>
                <p>Thuế VAT (10%): <span>243,000 VND</span></p>
                <p class="summary-total">Tổng cộng: <span>2,553,000 VND</span></p>
            </div>
            <a href="index.php?trang=checkout" class="btn-checkout">Thanh Toán</a>
            <p class="summary-note">Tất cả các đơn hàng đều được xử lý trong 24 giờ.</p>
        </div>
    </div>
</div>

