<link rel="stylesheet" href="public/css/checkout.css">
    <div id="checkout-wrapper">
        <div class="container">
            <div id="checkout-row">
                <!-- Info Section -->
                <div id="info-box">
                    <div id="info-form">
                        <h3 id="info-title">THÔNG TIN THANH TOÁN</h3>
                        <form>
                            <!-- Full Name -->
                            <div id="name-group">
                                <label for="name-input">Họ và tên <span>*</span></label>
                                <input type="text" id="name-input" placeholder="Nhập họ và tên" required>
                            </div>

                            <!-- Phone -->
                            <div id="phone-group">
                                <label for="phone-input">Số điện thoại <span>*</span></label>
                                <input type="tel" id="phone-input" placeholder="Nhập số điện thoại" required>
                            </div>

                            <!-- City and District -->
                            <div id="location-row">
                                <div id="city-group">
                                    <label for="city-select">Tỉnh/Thành phố <span>*</span></label>
                                    <select id="city-select">
                                        <option>Hà Nội</option>
                                        <option>Hồ Chí Minh</option>
                                        <option>Đà Nẵng</option>
                                    </select>
                                </div>
                                <div id="district-group">
                                    <label for="district-select">Quận/Huyện <span>*</span></label>
                                    <select id="district-select">
                                        <option>Chọn Quận/Huyện</option>
                                        <option>Ba Đình</option>
                                        <option>Hoàn Kiếm</option>
                                        <option>Đống Đa</option>
                                    </select>
                                </div>
                            </div>

                            <!-- Address -->
                            <div id="address-group">
                                <label for="address-input">Địa chỉ <span>*</span></label>
                                <input type="text" id="address-input" placeholder="Nhập địa chỉ cụ thể. Số nhà, tên đường..." required>
                            </div>

                            <!-- Notes -->
                            <div id="notes-group">
                                <label for="notes-input">Ghi chú</label>
                                <textarea id="notes-input" rows="5" placeholder="Nhập ghi chú nếu có..."></textarea>
                            </div>
                        </form>
                    </div>
                </div>

                <!-- Order Section -->
                <div id="order-box">
                    <div id="order-summary">
                        <h3 id="order-title">ĐƠN HÀNG CỦA BẠN</h3>
                        <table id="order-table">
                            <thead>
                                <tr>
                                    <th>Sản phẩm</th>
                                    <th>Tổng</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Giày Thể Thao × 1</td>
                                    <td>1,200,000 VND</td>
                                </tr>
                                <tr>
                                    <td>Áo Hoodie × 2</td>
                                    <td>800,000 VND</td>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th>Phí khác</th>
                                    <td>0 VND</td>
                                </tr>
                                <tr style="background-color: #007bff;">
                                    <th>Tổng</th>
                                    <td><strong>2,000,000 VND</strong></td>
                                </tr>
                            </tfoot>
                        </table>

                        <!-- Payment Methods -->
                        <h4 id="payment-title">Phương Thức Thanh Toán</h4>
                        <div id="payment-cash">
                            <input type="radio" name="payment-method" id="payment-cash-input" value="cash" checked>
                            <label for="payment-cash-input">Thanh toán tiền mặt</label>
                        </div>
                        <div id="payment-bank">
                            <input type="radio" name="payment-method" id="payment-bank-input" value="bank">
                            <label for="payment-bank-input">Chuyển khoản ngân hàng</label>
                        </div>

                        <!-- Submit Button -->
                        <button id="submit-btn">Đặt hàng</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
