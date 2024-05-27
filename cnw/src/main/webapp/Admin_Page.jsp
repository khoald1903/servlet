<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="UTF-8">
    <title> Trang quản lý</title>
    <link rel="stylesheet" href="./assets/css/app.css">
    <link rel="stylesheet" href="./assets/css/main.css">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="stylesheet" href="/fontawesome-free-6.4.0-web/css/all.css" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet" />

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>
</head>

<body>
    <div class="sidebar">
        <div class="logo-details">
            <i class='bx bx-store-alt'></i>
            <span class="logo_name">NKH SHOP</span>
        </div>
        <ul class="nav-links">
            <li id="Dashboard">
                <a href="./Dashboard.jsp" class="active">
                    <i class='bx bx-grid-alt'></i>
                    <span class="links_name">Dashboard</span>
                </a>
            </li>
            <li id="QLSP">
                <a href="./QLSP.jsp">
                    <i class='bx bx-box'></i>
                    <span class="links_name">Quản lí sản phẩm</span>
                </a>
            </li>
            <li id="QLDH">
                <a href="./QLDH.jsp">
                    <i class='bx bx-list-ul'></i>
                    <span class="links_name">Quản lí đơn hàng</span>
                </a>
            </li>
            <li id="QLTK">
                <a href="./QLTK_Show.jsp">
                    <i class='bx bxs-user-account'></i>
                    <span class="links_name">Quản lí tài khoản</span>
                </a>
            </li>
            <li id="QLKH">
                <a href="<%= request.getContextPath() %>/UserController?mod=view">
                    <i class='bx bxs-user-circle'></i>
                    <span class="links_name">Quản lí khách hàng </span>
                </a>
            </li>
            <li id="QLNV">
                <a href="<%= request.getContextPath() %>/EmployeeController?mod=view">
                    <i class='bx bx-user'></i>
                    <span class="links_name">Quản lí nhân viên</span>
                </a>
            </li>
        </ul>
    </div>

    </ul>



    <script src="./js/app.js"></script>
    <script src="./assets/js/Admin_Page.js"></script>

</body>

</html>