package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bean.Account;
import model.bean.User;
import model.bean.UserInfor;
import model.bo.EmployeeBO;

@WebServlet("/EmployeeController")
public class EmployeeController extends HttpServlet {
	EmployeeBO employeeBO = new EmployeeBO();
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String mod = request.getParameter("mod");
		switch (mod) {
		case "added":
			handleRegistrationAndRedirect(request, response);
			break;
		case "add":
			handleValidate(request, response);
			break;
		case "del":
			handleDelete(request, response, request.getParameter("del"));
			break;
		case "update":
			handleLoadData(request, response, request.getParameter("update"));
			break;
		case "updated":
			handleUpdate(request, response);
			break;
		case "logout":
			handleLogout(request);
			break;
		default:
			handleDefault(request, response, request.getParameter("tsearch"));
			break;
		}
	}

	private void handleValidate(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			List<String> usernames;
			try {
				usernames = employeeBO.getListUsername();
				String destination = null;
				request.setAttribute("usernames", usernames);
				destination = "/QLNV_Add.jsp";
				RequestDispatcher rd = getServletContext().getRequestDispatcher(destination);
				rd.forward(request, response);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
	}

	private void handleRegistrationAndRedirect(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String hoTen = request.getParameter("HoTen");
		String diaChi = request.getParameter("Address");
		boolean gender = request.getParameter("gender").equals("1");
		String soDienThoai = request.getParameter("Phone");
		String email = request.getParameter("Email");
		String tenDangNhap = request.getParameter("Username");
		String matKhau = request.getParameter("Pass");
		User user = new User(tenDangNhap, hoTen, gender, email, soDienThoai, diaChi);
		Account account = new Account(tenDangNhap, matKhau, 2);

		try {
			boolean check = employeeBO.addEmployee(user, account);
			String destination = null;
			if (check) {
				List<UserInfor> userinfors = employeeBO.getListEmployee(null);
				request.setAttribute("userinfors", userinfors);
				destination = "/QLNV.jsp";
			} else {
				destination = "/QLNV_Add.jsp";
			}
			RequestDispatcher rd = getServletContext().getRequestDispatcher(destination);
			rd.forward(request, response);
			System.out.println(check);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}


	private void handleDelete(HttpServletRequest request, HttpServletResponse response, String id)
			throws ServletException, IOException {
		try {
			boolean check = employeeBO.DeleteEmployee(id);
			List<UserInfor> userinfors = employeeBO.getListEmployee(null);
			request.setAttribute("userinfors", userinfors);
			String destination = null;
			destination = "/QLNV.jsp";
			RequestDispatcher rd = getServletContext().getRequestDispatcher(destination);
			rd.forward(request, response);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
	private void handleLoadData(HttpServletRequest request, HttpServletResponse response, String id)
			throws ServletException, IOException {
		try {
			UserInfor userInfor = employeeBO.getEmployeeInfor(id);
			request.setAttribute("userInfor", userInfor);
			String destination = null;
			destination = "/QLNV_Update.jsp";
			RequestDispatcher rd = getServletContext().getRequestDispatcher(destination);
			rd.forward(request, response);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
	private void handleUpdate(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String hoTen = request.getParameter("HoTen");
			String diaChi = request.getParameter("Address");
			boolean gender = request.getParameter("gender").equals("1");
			String soDienThoai = request.getParameter("Phone");
			String email = request.getParameter("Email");
			String tenDangNhap = request.getParameter("Username");
			String matKhau = request.getParameter("Pass");
			boolean check = employeeBO.UpdateEmployee(new User(tenDangNhap, hoTen, gender , email, soDienThoai, diaChi), new Account(tenDangNhap, matKhau, 2));
			List<UserInfor> userinfors = employeeBO.getListEmployee(null);
			request.setAttribute("userinfors", userinfors);
			String destination = null;
			destination = "/QLNV.jsp";
			RequestDispatcher rd = getServletContext().getRequestDispatcher(destination);
			rd.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private void handleDefault(HttpServletRequest request, HttpServletResponse response, String text)
			throws ServletException, IOException {
		try {
			List<UserInfor> userinfors = employeeBO.getListEmployee(text);
			request.setAttribute("userinfors", userinfors);
			String destination = null;
			destination = "/QLNV.jsp";
			RequestDispatcher rd = getServletContext().getRequestDispatcher(destination);
			rd.forward(request, response);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
	private void handleLogout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("account");
		session.removeAttribute("user");
	}

}
