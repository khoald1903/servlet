package model.bo;

import java.sql.SQLException;
import java.util.List;

import model.bean.Account;
import model.bean.User;
import model.bean.UserInfor;
import model.dao.UserDAO;

public class UserBO {
	UserDAO userDAO = new UserDAO();
	public boolean addUser(User user, Account account) throws ClassNotFoundException, SQLException {
		return userDAO.addUser(user, account);
	}
	public List<UserInfor> getListUser(String text) throws ClassNotFoundException, SQLException{
		return userDAO.getListUser(text);
	}
	public boolean DeleteUser(String id) throws SQLException, ClassNotFoundException {
		return userDAO.DeleteUser(id);
	}
	public boolean UpdateUser(User user, Account account) throws SQLException, ClassNotFoundException {
		return userDAO.UpdateUser(user, account);
	}
	public UserInfor getUserInfor(String username) throws SQLException, ClassNotFoundException {
		return userDAO.getUserInfor(username);
	}
	public List<String> getListUsername() throws SQLException, ClassNotFoundException {
		return userDAO.getListUsername();
	}
}
