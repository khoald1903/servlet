<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="model.bean.UserInfor"%>
<html lang="en" dir="ltr">

<head>
<meta charset="UTF-8">
<title>Cập nhật thông tin khách hàng</title>
<link rel="stylesheet" href="./css/QLKH_Add.css">
<link rel="stylesheet" href="./css/base.css">
<link rel="stylesheet" href="./css/main.css">
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css'
	rel='stylesheet'>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" />
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="stylesheet" href="./fontawesome-free-6.4.0-web/css/all.css" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
	rel="stylesheet" />

<script
	src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>

</head>

<body>
	<div class="sidebar">
		<div class="logo-details">
			<i class='bx bx-store-alt'></i> <span class="logo_name">NKH
				SHOP</span>
		</div>
		<ul class="nav-links">
			<li id="Dashboard"><a href="./Dashboard.jsp"> <i
					class='bx bx-grid-alt'></i> <span class="links_name">Dashboard</span>
			</a></li>
			<li id="QLSP"><a href="./QLSP.jsp"> <i class='bx bx-box'></i>
					<span class="links_name">Quản lí sản phẩm</span>
			</a></li>
			<li id="QLDH"><a href="./QLDH.jsp"> <i class='bx bx-list-ul'></i>
					<span class="links_name">Quản lí đơn hàng</span>
			</a></li>
			<li id="QLTK"><a href="./QLTK_Show.jsp"> <i
					class='bx bxs-user-account'></i> <span class="links_name">Quản
						lí tài khoản</span>
			</a></li>
			<li id="QLKH"><a href="<%= request.getContextPath() %>/UserController?mod=view"> <i
					class='bx bxs-user-circle'></i> <span class="links_name">Quản
						lí khách hàng </span>
			</a></li>
			<li id="QLNV"><a href="./QLNV.jsp"> <i class='bx bx-user'></i>
					<span class="links_name">Quản lí nhân viên</span>
			</a></li>

			<li id="QLNCC"><a href="./QLCC.jsp"> <i
					class="fa-solid fa-truck-fast" style="color: #ffffff;"></i> <span
					class="links_name">Quản lí nhà cung cấp</span>
			</a></li>
			<li id="QLKho"><a href="./QLKho.jsp"> <i
					class="fa-solid fa-warehouse" style="color: #ffffff;"></i> <span
					class="links_name">Quản lí kho hàng</span>
			</a></li>
		</ul>
	</div>

	<section class="home-section">
		<nav class="home-navbar">
			<div class="sidebar-button">
				<i class='bx bx-menu sidebarBtn'></i> <span class="dashboard">Quản
					lý khách hàng > Cập nhật</span>
			</div>
			<a id="dangxuat" class="sidebar-button anchor_logout"> <i
				class="fa-solid fa-arrow-right-from-bracket"></i> <span
				class="dashboard">Đăng xuất</span>
			</a>
		</nav>
		<% UserInfor user = (UserInfor) request.getAttribute("userInfor"); %>
		<div class="home-content">
			<div class="home-content--title">
				<label for="" class="lb_thongtinchung">THÔNG TIN CHUNG</label>
			</div>
			<form id="userForm" action="UserController" method="post" name="f">
				<div class="home-content--infor">
					<div class="home-content--infor-left">
						<ul class="home-content--infor-list">
							<li class="home-content--infor-item"><label for="ID">Mã
									khách hàng</label></li>
							<li
								class="home-content--infor-item home-content--infor-item--text">
								<input id="ID" type="text" value="<%= user.getUsername()%>"
								name="Username" readonly>
							</li>
						</ul>
						<ul class="home-content--infor-list">
							<li class="home-content--infor-item"><label for="Name">Tên
									khách hàng</label></li>
							<li
								class="home-content--infor-item home-content--infor-item--text">
								<input id="HoTen" type="text" value="<%= user.getName()%>"
								name="HoTen">
							</li>
						</ul>
						<ul class="home-content--infor-list">
							<li class="home-content--infor-item"><label for="">Giới
									tính</label></li>
							<li
								class="home-content--infor-item home-content--infor-item--text">
								<div class='content_gender'>
									<div class="dpx">
										<div class='py'>
											<label class="label_gender"> <input id="gender"
												type="radio" class="option-input radio input__radio"
												name="gender" value="1"
												<%= (user.isGender() == true) ? "checked" : "" %> /> Nam
											</label> <label class="label_gender"> <input id="gender"
												type="radio" class="option-input radio input__radio"
												name="gender" value="0"
												<%= (user.isGender() == false) ? "checked" : "" %> /> Nữ
											</label>
										</div>
									</div>
								</div>
							</li>
						</ul>
					</div>
					<div class="home-content--infor-right">
						<ul class="home-content--infor-list">
							<li class="home-content--infor-item"><label for="Email">Email</label>
							</li>
							<li
								class="home-content--infor-item home-content--infor-item--text">
								<input id="Email" type="text" value="<%= user.getEmail()%>"
								name="Email">
							</li>
						</ul>
						<ul class="home-content--infor-list">
							<li class="home-content--infor-item"><label for="Phone">Số
									điện thoại</label></li>
							<li
								class="home-content--infor-item home-content--infor-item--text">
								<input id="Phone" type="text"
								value="<%= user.getPhonenumber()%>" name="Phone">
							</li>
						</ul>
						<ul class="home-content--infor-list">
							<li class="home-content--infor-item"><label for="Address">Địa
									chỉ</label></li>
							<li
								class="home-content--infor-item home-content--infor-item--text">
								<input id="Address" type="text" value="<%= user.getAddress()%>"
								name="Address">
							</li>
						</ul>
						<ul class="home-content--infor-list">
							<li class="home-content--infor-item"><label for="Pass">Mật
									khẩu</label></li>
							<li
								class="home-content--infor-item home-content--infor-item--text">
								<input id="Pass" type="text" value="<%= user.getPassword()%>"
								name="Pass">
							</li>
						</ul>
					</div>
				</div>
				<input type="hidden" name="mod" value="updated">
				<div class="home-content--button">
					<button id="Update" class="snip1582" type="submit">
						<i class="fa-regular fa-pen-to-square" style="color: #ffffff;"></i>
						Lưu thay đổi
					</button>
				</div>
			</form>
		</div>

	</section>

	<script src="/Admin Page/js/QLKH_Update.js"></script>
	<script src="/Admin Page/js/app.js"></script>
	<script src="/Admin_Page.js"></script>
	<script src="/logout.js"></script>
</body>

</html>