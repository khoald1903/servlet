<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="ISO-8859-1">
<title>Thêm nhân viên</title>
<link rel="stylesheet" href="./css/QLNV_Add.css">
<link rel="stylesheet" href="./css/base.css">
<link rel="stylesheet" href="./css/main.css">
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css'
	rel='stylesheet'>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" />
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="stylesheet"
	href="/Admin Page/fontawesome-free-6.4.0-web/css/all.css" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
	rel="stylesheet" />

<script
	src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>
<script type="text/javascript">
function check() {
    var userID = document.getElementById("Username").value;
    var usernames = <%= (List<String>) request.getAttribute("usernames") %>;
    if (usernames.includes(userID)) {
    	alert("Username has existed!");
        document.getElementById("Username").value = "";
    }
}
</script>
</head>

<body>
	<div class="sidebar">
		<div class="logo-details">
			<i class='bx bx-store-alt'></i> <span class="logo_name">NKH
				SHOP</span>
		</div>
		<ul class="nav-links">
			<li id="Dashboard"><a href="Dashboard.jsp"> <i
					class='bx bx-grid-alt'></i> <span class="links_name">Dashboard</span>
			</a></li>
			<li id="QLSP"><a href="QLSP.jsp"> <i class='bx bx-box'></i>
					<span class="links_name">Quản lí sản phẩm</span>
			</a></li>
			<li id="QLDH"><a href="QLDH.jsp"> <i class='bx bx-list-ul'></i>
					<span class="links_name">Quản lí đơn hàng</span>
			</a></li>
			<li id="QLTK"><a href="QLTK_Show.jsp"> <i
					class='bx bxs-user-account'></i> <span class="links_name">Quản lí tài khoản</span>
			</a></li>
			<li id="QLKH"><a href="<%= request.getContextPath() %>/UserController?mod=view" class="active"> <i
					class='bx bxs-user-circle'></i> <span class="links_name">Quản lí khách hàng </span>
			</a></li>
			<li id="QLNV"><a href="QLNV.jsp"> <i class='bx bx-user'></i>
					<span class="links_name">Quản lí nhân viên</span>
			</a></li>
		</ul>
	</div>

	<section class="home-section">
		<nav class="home-navbar">
			<div class="sidebar-button">
				<i class='bx bx-menu sidebarBtn'></i> <span class="dashboard">Quản
					lý khách hàng > Thêm</span>
			</div>
			<a id="dangxuat" class="sidebar-button anchor_logout"> <i
				class="fa-solid fa-arrow-right-from-bracket"></i> <span
				class="dashboard">Đăng xuất</span>
			</a>
		</nav>
		<div class="home-content">
			<div class="home-content--title">
				<label for="" class="lb_thongtinchung">THÔNG TIN CHUNG</label>
			</div>
			<form action="EmployeeController" method="post" name="f">
				<div class="home-content--infor">
					<div class="home-content--infor-left">
						<ul class="home-content--infor-list">
							<li class="home-content--infor-item"><label for="HoTen">Tên
									nhân viên</label></li>
							<li
								class="home-content--infor-item home-content--infor-item--text">
								<input id="HoTen" type="text" name="HoTen" required>
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
											<label class="label_gender"> <input id="Male"
												type="radio" class="option-input radio input__radio"
												name="gender" value="1" checked> Nam
											</label> <label> <input id="Female" type="radio"
												class="option-input radio input__radio" name="gender"
												value="0"> Nữ
											</label>
										</div>
									</div>
								</div>
							</li>
						</ul>
						<ul class="home-content--infor-list">
							<li class="home-content--infor-item"><label for="Address">Địa
									chỉ</label></li>
							<li
								class="home-content--infor-item home-content--infor-item--text">
								<input id="Address" type="text" name="Address">
							</li>
						</ul>
						<ul class="home-content--infor-list">
							<li class="home-content--infor-item"><label for="Phone">Số
									điện thoại</label></li>
							<li
								class="home-content--infor-item home-content--infor-item--text">
								<input id="Phone" type="text" name="Phone">
							</li>
						</ul>
					</div>
					<div class="home-content--infor-right">
						<ul class="home-content--infor-list">
							<li class="home-content--infor-item"><label for="Email">Email</label>
							</li>
							<li
								class="home-content--infor-item home-content--infor-item--text">
								<input id="Email" type="text" name="Email">
							</li>
						</ul>

						<ul
							class="home-content--infor-list home-content--infor-list--tendangnhap">
							<li class="home-content--infor-item"><label for="Username">Tên
									đăng nhập</label></li>
							<li
								class="home-content--infor-item home-content--infor-item--text">
								<input id="Username" type="text" name="Username" required onblur="check()">
							</li>
						</ul>
						<ul class="home-content--infor-list">
							<li class="home-content--infor-item"><label for="Pass" >Mật
									khẩu ban đầu</label></li>
							<li
								class="home-content--infor-item home-content--infor-item--text">
								<input id="Pass" type="text" name="Pass" required>
							</li>
						</ul>
					</div>
				</div>
				<input type="hidden" name="mod" value="added">
				<div class="home-content--button">
					<button type="submit" id="Add_Bt" class="snip1582">Đăng ký</button>
				</div>
			</form>
		</div>
	</section>



	<script src="./Admin Page/js/app.js"></script>

	<script src="./Admin Page/js/QLKH_Add.js"></script>
	<script src="./logout.js"></script>
</body>

</html>