function togglePasswordVisibility(passwordId, iconId) {
  var passwordField = document.getElementById(passwordId);
  var eyeIcon = document.getElementById(iconId);

  // Kiểm tra trạng thái hiện tại của trường mật khẩu
  if (passwordField.type === "password") {
    passwordField.type = "text"; // Hiển thị mật khẩu
    eyeIcon.classList.remove("fa-eye");
    eyeIcon.classList.add("fa-eye-slash");
  } else {
    passwordField.type = "password"; // Ẩn mật khẩu
    eyeIcon.classList.remove("fa-eye-slash");
    eyeIcon.classList.add("fa-eye");
  }
}
document.addEventListener("DOMContentLoaded", function () {
  const loginLink = document.querySelector(".right .loginlink");
  const signupLink = document.querySelector(".right .signuplink");
  const signupHereLink = document.querySelector(".signupHereLink");
  const loginHereLink = document.querySelector(".loginHereLink");
  const shoe = document.querySelector(".background-image");

  // Lấy trạng thái focus từ localStorage
  let focusState = localStorage.getItem("focusOn");

  // Xác định trang hiện tại dựa trên URL
  const currentPage = window.location.href.includes("trang=signup")
    ? "signup"
    : "login";

  // Cập nhật focus state nếu cần
  if (!focusState || focusState !== currentPage) {
    focusState = currentPage;
    localStorage.setItem("focusOn", focusState);
  }

  // Focus vào liên kết đúng
  if (focusState === "login" && loginLink) loginLink.focus();
  if (focusState === "signup" && signupLink) signupLink.focus();

  // Sự kiện khi nhấn "Tại đây" trong đăng ký hoặc đăng nhập
  if (signupHereLink) {
    signupHereLink.addEventListener("click", function () {
      localStorage.setItem("focusOn", "signup");
      window.location.href = "index.php?trang=signup";
    });
  }

  if (loginHereLink) {
    loginHereLink.addEventListener("click", function () {
      localStorage.setItem("focusOn", "login");
      window.location.href = "index.php?trang=login";
    });
  }

  // Hiệu ứng khi nhấn link "Đăng Ký" hoặc "Đăng Nhập"
  if (signupLink) {
    signupLink.addEventListener("click", function (event) {
      event.preventDefault();
      if (shoe) {
        shoe.classList.add("hide"); // Thêm hiệu ứng
        setTimeout(function () {
          window.location.href = "index.php?trang=signup";
        }, 1500); // Chờ hiệu ứng hoàn tất
      } else {
        window.location.href = "index.php?trang=signup";
      }
    });
  }

  if (loginLink) {
    loginLink.addEventListener("click", function (event) {
      event.preventDefault();
      window.location.href = "index.php?trang=login";
    });
  }
});
