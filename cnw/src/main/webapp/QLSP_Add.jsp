<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="UTF-8">
    <title> Thêm sản phẩm </title>
    <link rel="stylesheet" href="/Admin Page/css/QLSP_Add.css">
    <link rel="stylesheet" href="/Admin Page/css/base.css">
    <link rel="stylesheet" href="/Admin Page/css/main.css">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="stylesheet" href="/Admin Page/fontawesome-free-6.4.0-web/css/all.css" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet" />

    <!-- Button, search, dropdown -->
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
                <a href="/Admin Page/Dashboard.html" >
                    <i class='bx bx-grid-alt'></i>
                    <span class="links_name">Dashboard</span>
                </a>
            </li>
            <li id="QLSP">
                <a href="/Admin Page/QLSP.html" class="active_sidebar">
                    <i class='bx bx-box'></i>
                    <span class="links_name">Quản lí sản phẩm</span>
                </a>
            </li>
            <li id="QLDH">
                <a href="/Admin Page/QLDH.html">
                    <i class='bx bx-list-ul'></i>
                    <span class="links_name">Quản lí đơn hàng</span>
                </a>
            </li>
            <li id="QLTK">
                <a href="/Admin Page/QLTK_Show.html" >
                    <i class='bx bxs-user-account'></i>
                    <span class="links_name">Quản lí tài khoản</span>
                </a>
            </li>
            <li id="QLKH">
                <a href="/Admin Page/QLKH.html" >
                    <i class='bx bxs-user-circle'></i>
                    <span class="links_name">Quản lí khách hàng </span>
                </a>
            </li>
            <li id="QLNV">
                <a href="/Admin Page/QLNV.html">
                    <i class='bx bx-user'></i>
                    <span class="links_name">Quản lí nhân viên</span>
                </a>
            </li>
            <li id="QLNCC">
                <a href="/Admin Page/QLNCC.html" >
                    <i class="fa-solid fa-truck-fast" style="color: #ffffff;"></i>
                    <span class="links_name">Quản lí nhà cung cấp</span>
                </a>
            </li>
            <li id="QLKho">
                <a href="/Admin Page/QLKho.html" >
                    <i class="fa-solid fa-warehouse" style="color: #ffffff;"></i>
                    <span class="links_name">Quản lí kho hàng</span>
                </a>
            </li>
        </ul>
    </div>

    <section class="home-section">

        <nav class="home-navbar">
            <div class="sidebar-button">
                <i class='bx bx-menu sidebarBtn'></i>
                <span class="dashboard">Quản lý sản phẩm > Thêm</span>
            </div>
            <a id="dangxuat" class="sidebar-button anchor_logout">
        <i class="fa-solid fa-arrow-right-from-bracket"></i>
        <span  class="dashboard">Đăng xuất</span>
      </a>
        </nav>

        <div class="home-content">
            <div class="home-content--title">
                <label for="" class="lb_thongtinchung">THÔNG TIN CHUNG</label>
            </div>
            <div class="home-content--infor">
                <div class="home-content--infor-left">
                    <ul class="home-content--infor-list">
                        <li class="home-content--infor-item">
                            <label for="">Mã sản phẩm:</label>
                        </li>
                        <li class="home-content--infor-item home-content--infor-item--text">
                            <input type="text" id="MaSP" class="input_text">
                        </li>
                    </ul>
                    <ul class="home-content--infor-list">
                        <li class="home-content--infor-item">
                            <label for="">Tên sản phẩm:</label>
                        </li>
                        <li class="home-content--infor-item home-content--infor-item--text">
                            <input type="text" id="TenSP" class="input_text">
                        </li>
                    </ul>
                    <ul class="home-content--infor-list">
                        <li class="home-content--infor-item">
                            <label for="">Giá bán:</label>
                        </li>
                        <li class="home-content--infor-item home-content--infor-item--text">
                            <input type="text" id="giaban" class="input_text">
                        </li>
                    </ul>
                    <ul class="home-content--infor-list">
                        <li class="home-content--infor-item">
                            <label for="">Nhãn hiệu:</label>
                        </li>
                        <li class="home-content--infor-item home-content--infor-item--text">
                            <div class="select">
                                <select id="brand-select">

                                </select>
                            </div>
                        </li>
                    </ul>
                    <ul class="home-content--infor-list">
                        <li class="home-content--infor-item">
                            <label for="">Loại mặt hàng:</label>
                        </li>
                        <li class="home-content--infor-item home-content--infor-item--text">
                            <div class="select">
                                <select id="category-select">

                                </select>
                            </div>
                        </li>
                    </ul>

                    
                </div>
                <div class="home-content--infor-right">
                    <ul class="home-content--infor-list">
                        <li class="home-content--infor-item">
                            <label for="">Mức khuyến mãi:</label>
                        </li>
                        <li class="home-content--infor-item home-content--infor-item--text">
                            <div class="select">
                                <select id="discount-select">

                                </select>
                            </div>
                        </li>
                    </ul>
                    <ul class="home-content--infor-list">
                        <li class="home-content--infor-item">
                            <label for="">Hình ảnh:</label>
                        </li>
                        <li class="home-content--infor-item">
                            <input type="file" id="input-images" accept="image/*" onchange="loadFiles(event)">
                            <div id="output-images"></div>
                        </li>
                    </ul>
                    <ul class="home-content--infor-list home-content--infor-list--mota">
                        <li class="home-content--infor-item">
                            <label for="">Mô tả:</label>
                        </li>
                        <li class="home-content--infor-item home-content--infor-item--text">
                            <input type="text" id="input_mota" class="input_text">
                        </li>
                    </ul>
                </div>
            </div>
            <div class="home-content--button">
                <button id="continue" class="snip1582" >       <!-- //Thay đổi id cái ni -->
                   <i class="fa-solid fa-arrow-right" style="color: #ffffff;"></i>
                    Tiếp tục
                </button>
            </div>
        </div>
    </section>
    <script type="text/javascript" src="/Admin Page/js/app.js"></script>
    <script src="/Admin Page/js/QLSP_Add.js"></script>
    <script src="/Admin_Page.js"></script>
     <script src="/logout.js"></script>
</body>

</html>