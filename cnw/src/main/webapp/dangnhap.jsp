<!DOCTYPE html>
<html lang="en">

<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Đăng nhập tài khoản</title>
<link rel="stylesheet" href="./assets/css/base.css" />
<link rel="stylesheet" href="./assets/css/dangnhap.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" />
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="stylesheet"
	href="/assets/fontawesome-free-6.4.0-web/css/all.css" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
	rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous" />
</head>

<body>
	<header>
		<div
			style="position: relative; background: url(assets/img/giohang.png); width: 100%; height: 400px; margin-bottom: 50px;">
			<nav class="header__navbar">
				<ul class="header__navbar-list">
					<li class="header__navbar-item"><img src="assets/img/logo.png"
						alt="" class="header__navbar-item--logo" /></li>
				</ul>
				<ul class="header__navbar-list">
					<li class="header__navbar-item"><a href="trangchu.jsp"
						class="header__navbar-item--a">TRANG CHỦ</a></li>
					<li class="header__navbar-item header__navbar-item--has-notify">
						<!-- Position --> <a href=""
						class="header__navbar-item--a header__navbar-item--yellow">SẢN
							PHẨM <i class="fa-solid fa-caret-down"></i>
					</a>
						<div class="header__dropdown--NAM">
							<ul class="header__dropdown--NAM-list">
								<li class="header__dropdown--NAM-item"><a
									href="giaythethao.jsp" class="header__dropdown--NAM-link">
										Giày thể thao </a></li>
								<li class="header__dropdown--NAM-item"><a
									href="giaysneaker.jsp" class="header__dropdown--NAM-link">
										Giày Sneakers </a></li>
								<li class="header__dropdown--NAM-item"><a
									href="giayda.jsp" class="header__dropdown--NAM-link"> Giày
										da </a></li>
							</ul>
						</div>
					</li>

					<li id="register" class="header__navbar-item"><a
						href="dangky.jsp" class="header__navbar-item--a">ĐĂNG KÝ</a></li>
					<li id="login" class="header__navbar-item"><a
						href="dangnhap.jsp" class="header__navbar-item--a">ĐĂNG NHẬP</a>
					</li>
					<li id="user" class="header__navbar-item"><i
						class="fa-solid fa-user" style="color: #ffffff;"></i> <a
						id="displayName" href="Admin_Page.jsp"
						class="header__navbar-item--a"></a></li>
					<!-- <li class="header__navbar-item">
            <a href="dangnhap.jsp" class="header__navbar-item--a">ĐĂNG NHẬP</a>
        </li> -->
					<li id="cart" class="header__navbar-item"><a
						href="giohang.jsp" class="header__navbar-item--a"> <i
							class="fa-solid fa-cart-shopping header__navbar-item--icon-giohang"></i>
					</a></li>
					<li id="LOGOUT" class="header__navbar-item">
						<button href="" class="header__navbar-item--button">ĐĂNG
							XUẤT</button>
					</li>
				</ul>
			</nav>
			<div class="header__title">
				<ul class="header__title-list header__title--large">
					<li class="header__title-item">ĐĂNG NHẬP</li>
				</ul>
				<ul class="header__title-list header__title--small">
					<li class="header__title-item header__title-item--yellow">
						TRANG CHỦ</li>
					<li class="header__title-item">/</li>
					<li class="header__title-item">ĐĂNG NHẬP</li>
				</ul>
			</div>
		</div>
	</header>
	<main>
		<div>
			<ul class="main__title">
				<li class="main__title-item main__title-item--content">
					<h1>THÔNG TIN ĐĂNG NHẬP</h1>
				</li>
				<li class="main__title-item main__title-item--line">
					<div class="main__title-item--midline"></div>
				</li>
			</ul>
		</div>
		<form action="CheckLoginServlet" name="f1" method="post">
			<div class="main__block">
				<ul class="main__infor-list">
					<li class="main__infor-item"><label for="username"
						class="main__infor-item--title">Tên đăng nhập</label></li>
					<li class="main__infor-item"><input type="text" id="username"
						name="username" class="main__infor-item--content"></li>
					<li class="main__infor-item"><label for="password"
						class="main__infor-item--title">Mật khẩu</label></li>
					<li class="main__infor-item"><input type="password"
						id="password" name="password" class="main__infor-item--content">
					</li>
					<li class="main__infor-item"><a href="quenmatkhau.jsp"
						class="main__infor-item--a_quenmatkhau">Quên mật khẩu?</a></li>
					<li><input type="text" id="success-message"
						style="display: none;"></li>
				</ul>
			</div>
			<div class="main__button">
				<button type="submit" id="loginForm" class="main__button-dangnhap">Đăng
					nhập</button>
			</div>
		</form>

	</main>

	<footer>
		<div class="footer__infor">
			<!-- Icons-->
			<ul class="footer__list">
				<li class="footer__item"><a href="" class="footer__item--icon">
						<i class="fa-brands fa-facebook"></i>
				</a></li>
				<li class="footer__item"><a href="" class="footer__item--icon">
						<i class="fa-brands fa-instagram"></i>
				</a></li>
				<li class="footer__item"><a href="" class="footer__item--icon">
						<i class="fa-brands fa-twitter"></i>
				</a></li>
			</ul>

			<!-- Thông tin -->
			<ul class="footer__list">
				<li class="footer__item">
					<h3 class="footer__item--title">THÔNG TIN NKH</h3>
				</li>
				<li class="footer__item">
					<h4 class="footer__item--contact">Địa chỉ: 120 Nguyễn Lương
						Bằng, Phường Hòa Khánh Bắc, Quận Liên Chiểu, Thành phố Đà Nẵng</h4>
				</li>
				<li class="footer__item">
					<h4 class="footer__item--contact">Hotline: 0826664434</h4>
				</li>
				<li class="footer__item">
					<h4 class="footer__item--contact">Website: https://nkh.vn</h4>
				</li>
				<li class="footer__item">
					<h4 class="footer__item--contact">Email: nkhvn@gmail.com</h4>
				</li>
			</ul>

			<!-- Danh mục nổi bật -->
			<ul class="footer__list">
				<li class="footer__item">
					<h3 class="footer__item--title">DANH MỤC NỔI BẬT</h3>
				</li>
				<li class="footer__item"><a href=""
					class="footer__item--danhmucsp"> Giày thể thao </a></li>
				<li class="footer__item"><a href=""
					class="footer__item--danhmucsp"> Giày Sneakers </a></li>
				<li class="footer__item"><a href=""
					class="footer__item--danhmucsp"> Giày da </a></li>
			</ul>

			<!-- Địa chỉ -->
			<ul class="footer__list">
				<li class="footer__item">
					<h3 class="footer__item--title">TÌM CHÚNG TÔI</h3>
				</li>
				<li class="footer__item"><a
					href="https://www.google.com/maps/place/120+Nguy%E1%BB%85n+L%C6%B0%C6%A1ng+B%E1%BA%B1ng,+Ho%C3%A0+Kh%C3%A1nh+B%E1%BA%AFc,+Li%C3%AAn+Chi%E1%BB%83u,+%C4%90%C3%A0+N%E1%BA%B5ng+550000,+Vi%E1%BB%87t+Nam/@16.0761082,108.1402153,15z/data=!3m1!4b1!4m6!3m5!1s0x314218d1551f2fb5:0x8c83c8054a4dced0!8m2!3d16.0761084!4d108.1489701!16s%2Fg%2F11qn88w7ql?hl=vi">
						<img src="./assets/img/ggmap.png" alt=""
						class="footer__item--img-ggmap">
				</a></li>
			</ul>
		</div>
	</footer>
	<script src="./assets/js/dangnhap.js"></script>
	<script src="./assets/js/trangchu_AfterLogin.js"></script>
</body>

</html>