package model.bo;

import java.sql.SQLException;
import java.util.List;

import model.bean.Account;
import model.bean.User;
import model.bean.UserInfor;
import model.dao.EmployeeDAO;

public class EmployeeBO {
	EmployeeDAO employeeDAO = new EmployeeDAO();
	public boolean addEmployee(User user, Account account) throws ClassNotFoundException, SQLException {
		return employeeDAO.addEmployee(user, account);
	}
	public List<String> getListUsername() throws SQLException, ClassNotFoundException {
		return employeeDAO.getListUsername();
	}
	public boolean DeleteEmployee(String id) throws SQLException, ClassNotFoundException {
		return employeeDAO.DeleteEmployee(id);
	}
	public boolean UpdateEmployee(User user, Account account) throws SQLException, ClassNotFoundException {
		return employeeDAO.UpdateEmployee(user, account);
	}
	public UserInfor getEmployeeInfor(String username) throws SQLException, ClassNotFoundException {
		return employeeDAO.getEmployeeInfor(username);
	}
	public List<UserInfor> getListEmployee(String text) throws SQLException, ClassNotFoundException {
		return employeeDAO.getListEmployee(text);
	}
}
