let sidebar = document.querySelector(".sidebar");
let sidebarBtn = document.querySelector(".sidebarBtn");
sidebarBtn.onclick = function () {
    sidebar.classList.toggle("active");
    if (sidebar.classList.contains("active")) {
        sidebarBtn.classList.replace("bx-menu", "bx-menu-alt-right");
    } else
        sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
}

function returnQLDH(){
    location.replace("QLDH.jsp");
}
function returnQLKH_Add(){
    location.replace("QLKH_Add.jsp");
}
function returnQLNV_Add(){
    location.replace("QLNV_Add.jsp");
}
function returnQLSP_Add(){
    location.replace("QLSP_Add.jsp");
}
function returnQLTK_Show(){
    location.replace("QLTK_Show.jsp");
}
function returnQLTK_Update(){
    location.replace("QLTK_Update.jsp");
}
function returnQLTK_ChangePass(){
    location.replace("QLTK_ChangePass.jsp");
}
function returnQLKho_Add(){
    location.replace("QLKho_Add.jsp");
}
function returnQLNCC_Add(){
    location.replace("QLNCC_Add.jsp");
}
function returnQLSP_AddDetail(){
    location.replace("QLSP_AddDetail.jsp");
}



