<%@page import="model.bean.UserInfor"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
<meta charset="UTF-8">
<title>Quản lý khách hàng</title>
<link rel="stylesheet" href="./css/QLKH.css">
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

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>

<!-- 2 link -->
<!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<script
	src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>
<!-- <script src="./js/app.js"></script> -->

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
					class='bx bxs-user-account'></i> <span class="links_name">Quản
						lí tài khoản</span>
			</a></li>
			<li id="QLKH"><a href="<%= request.getContextPath() %>/UserController?mod=view" class="active"> <i
					class='bx bxs-user-circle'></i> <span class="links_name">Quản
						lí khách hàng </span>
			</a></li>
			<li id="QLNV"><a href="<%= request.getContextPath() %>/EmployeeController?mod=view"> <i class='bx bx-user'></i>
					<span class="links_name">Quản lí nhân viên</span>
			</a></li>
		</ul>
	</div>

	<section class="home-section">
		<nav>
			<div class="sidebar-button">
				<i class='bx bx-menu sidebarBtn'></i> <span class="dashboard">Quản
					lý khách hàng</span>
			</div>
			<a id="dangxuat" class="sidebar-button anchor_logout"> <i
				class="fa-solid fa-arrow-right-from-bracket"></i> <span
				class="dashboard">Đăng xuất</span>
			</a>
		</nav>

		<div class="home-content">
			<div class="home__content-tool">
				<ul class="home__content-tool-list">
					<li class="home__content-tool-item home__content-tool-item--button">
						<form action="UserController" method="post">
							<button class="snip1582" type="submit"">
								<i class="fa-solid fa-circle-plus"></i> Thêm khách hàng
							</button>
							<input type="hidden" value="add" name="mod">
						</form>


					</li>
					<form action="UserController" method="post">
						<li class="home__content-tool-item home__content-tool-item--search">
							<div class="box__search">
								<div class="container-4">
									<input type="search" id="search" name="tsearch" placeholder="Search..." />
									<button id="Search" class="icon" type="submit">
										<i class="fa fa-search"></i>
									</button>
									<input type="hidden" value="search" name= "mod">
								</div>
							</div>
						</li>
					</form>
				</ul>
			</div>
			<style>
.table .btn-default {
	background-color: #e12d27;
}

.table .btn-defaul {
	background-color: #01dcf9;
}
</style>

			<%
			List<UserInfor> account = (List<UserInfor>) request.getAttribute("userinfors");
			%>
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<table id="productTable"
							class="table table-bordered 
                                        table-condensed table-striped">
							<thead>

								<tr>
									<th>Xoá</th>
									<th>Mã khách hàng</th>
									<th>Tên khách hàng</th>
									<th>Giới tính</th>
									<th>Email</th>
									<th>Địa chỉ</th>
									<th>Số điện thoại</th>
									<th>Mật khẩu</th>
									<th>Sửa</th>
								</tr>
								<%
								for (UserInfor user : account) {
								%>
								<tr>
									<td><a
										href="UserController?mod=del&del=<%=user.getUsername()%>">Xoá</a></td>
									<td><%=user.getUsername()%></td>
									<td><%=user.getName()%></td>
									<td><%=(user.isGender() == true) ? "Nam" : "Nữ"%></td>
									<td><%=user.getEmail()%></td>
									<td><%=user.getAddress()%></td>
									<td><%=user.getPhonenumber()%></td>
									<td><%=user.getPassword()%></td>
									<td><a
										href="UserController?mod=update&update=<%=user.getUsername()%>">Cập
											nhật</a></td>
								</tr>
								<%
								}
								%>
							</thead>
						</table>
					</div>
				</div>

			</div>

		</div>
	</section>
	<script>
        function deleteKH(id) {
            console.log(id);
            var result = confirm("Bạn có muốn xóa khách hàng này?");
            if (result == true) {
                fetch(`http://localhost:8089/taikhoan/deletec/${id}`, {
                    method: 'DELETE',
                })
                    .then(response => {
                        if (response.ok) {
                            alert('Xóa thành công');
                            location.reload();
                        } else {
                            throw new Error('Failed to delete resource');
                        }
                    })
                    .catch(error => console.error(`Error deleting resource: ${error.message}`));
            }

        }
    </script>
	<script src="./js/QLKH.js"></script>
	<script src="./js/app.js"></script>
	<script src="./Admin_Page.js"></script>
	<script src="./logout.js"></script>
</body>

</html>