<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="UTF-8">
    <title> Admin Page </title>
    <link rel="stylesheet" href="./css/app.css">
    <link rel="stylesheet" href="./css/main.css">
    <link rel="stylesheet" href="./css/Dashboard.css">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="stylesheet" href="/Admin Page/fontawesome-free-6.4.0-web/css/all.css" />
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

    <!-- 2 link -->
    <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> -->
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
                <a href="/Admin Page/Dashboard.jsp" class="active">
                    <i class='bx bx-grid-alt'></i>
                    <span class="links_name">Dashboard</span>
                </a>
            </li>
            <li id="QLSP">
                <a href="/Admin Page/QLSP.jsp">
                    <i class='bx bx-box'></i>
                    <span class="links_name">Quản lí sản phẩm</span>
                </a>
            </li>
            <li id="QLDH">
                <a href="/Admin Page/QLDH.jsp">
                    <i class='bx bx-list-ul'></i>
                    <span class="links_name">Quản lí đơn hàng</span>
                </a>
            </li>
            <li id="QLTK">
                <a href="/Admin Page/QLTK_Show.jsp">
                    <i class='bx bxs-user-account'></i>
                    <span class="links_name">Quản lí tài khoản</span>
                </a>
            </li>
            <li id="QLKH">
                <a href="/Admin Page/QLKH.jsp">
                    <i class='bx bxs-user-circle'></i>
                    <span class="links_name">Quản lí khách hàng </span>
                </a>
            </li>
            <li id="QLNV">
                <a href="/Admin Page/QLNV.jsp">
                    <i class='bx bx-user'></i>
                    <span class="links_name">Quản lí nhân viên</span>
                </a>
            </li>

            <li id="QLNCC">
                <a href="/Admin Page/QLNCC.jsp">
                    <i class="fa-solid fa-truck-fast" style="color: #ffffff;"></i>
                    <span class="links_name">Quản lí nhà cung cấp</span>
                </a>
            </li>
            <li id="QLKho">
                <a href="/Admin Page/QLKho.jsp">
                    <i class="fa-solid fa-warehouse" style="color: #ffffff;"></i>
                    <span class="links_name">Quản lí kho hàng</span>
                </a>
            </li>
        </ul>
    </div>
    <section class="home-section">
        <div>
            <nav>
                <div class="sidebar-button">
                    <i class='bx bx-menu sidebarBtn'></i>
                    <span class="dashboard">Dashboard</span>
                </div>
                <!-- <div class="search-box">
                <input type="text" placeholder="Search...">
                <i class='bx bx-search'></i>
            </div> -->
                <a href="" class="sidebar-button anchor_logout">
                    <i class="fa-solid fa-arrow-right-from-bracket"></i>
                    <span class="dashboard">Đăng xuất</span>
                </a>
            </nav>

            <div class="home-content">
                <div class="overview-boxes">
                    <div class="box">
                        <div class="right-side">
                            <div class="box-topic">Đơn hàng</div>
                            <div id="number_bill" class="number"></div>
                            <!-- <div class="indicator">
                                <i class='bx bx-up-arrow-alt'></i>
                                <span class="text">Up from yesterday</span>
                            </div> -->
                        </div>
                        <i class="fa-solid fa-cart-plus icon_dashboard icon_dashboard-order"></i>
                    </div>
                    <div class="box">
                        <div class="right-side">
                            <div class="box-topic">Doanh thu</div>
                            <div id="number_sales" class="number"></div>
                            <!-- <div class="indicator">
                                <i class='bx bx-up-arrow-alt'></i>
                                <span class="text">Up from yesterday</span>
                            </div> -->
                        </div>
                        <i class="fa-solid fa-hand-holding-dollar icon_dashboard icon_dashboard-revenue"></i>
                    </div>
                    <div class="box">
                        <div class="right-side">
                            <div class="box-topic">Nhân viên</div>
                            <div id="number_employee" class="number"></div>
                            <!-- <div class="indicator">
                                <i class='bx bx-up-arrow-alt'></i>
                                <span class="text">Up from yesterday</span>
                            </div> -->
                        </div>
                        <i class="fa-solid fa-users icon_dashboard icon_dashboard-customer" style="color: #b6ad54;"></i>
                    </div>
                    <div class="box">
                        <div class="right-side">
                            <div class="box-topic">Khách hàng</div>
                            <div id="number_customer" class="number"></div>
                            <!-- <div class="indicator">
                                <i class='bx bx-down-arrow-alt down'></i>
                                <span class="text">Down From Today</span>
                            </div> -->
                        </div>
                        <i class="fa-solid fa-user icon_dashboard icon_dashboard-customer"></i>
                    </div>
                </div>


                <div class="chart">
                    <div class="chart-left">
                        <div class="statistic">
                            <ul class="statistic_list">
                                <li class="statistic_item">
                                    <label for="">Tháng</label>
                                    <input type="text" class="input_statistic" id="month">
                                </li>
                                <li class="statistic_item">
                                    <label for="">Năm</label>
                                    <input type="text" class="input_statistic" id="year">
                                </li>
                                <li class="statistic_item">
                                    <button id="bt" class="btn-statistic">Thống kê</button>
                                </li>
                            </ul>
                        </div>
                        <div class="linechart">
                            <div class="title title_linechart">Doanh thu</div>
                            <canvas id="canvas_line" data-color-datalabels="#ffffff"></canvas>
                        </div>
                    </div>
                    <div class="chart-right">
                        <div class="doughnutchart">
                            <div class="title">Hãng sản phẩm đang có</div>
                            <canvas id="canvas_doughnut"></canvas>
                        </div>
                        <div class="barchart">
                            <div class="title">Sản phẩm bán chạy</div>
                            <canvas id="canvas_bar"></canvas>
                        </div>
                    </div>
                </div>

            </div>
        </div>


    </section>


    <script src="https://cdn.jsdelivr.net/npm/chart.js@4.3.0/dist/chart.umd.min.js"></script>
    <script src="/Admin Page/js/app.js"></script>
    <script src="/Admin_Page.js"></script>
    <script src="/Admin Page/js/Dashboard.js"></script>

</body>

</html>