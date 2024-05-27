package model.bo;
import java.sql.SQLException;

import model.bean.Account;
import model.bean.User;
import model.dao.CheckLoginDAO;

public class CheckLoginBO {
	CheckLoginDAO checkLoginDAO = new CheckLoginDAO();
	public boolean isValidUser(String username, String password) throws ClassNotFoundException, SQLException
	{
		return checkLoginDAO.isExistUser(username, password);
	}
	public Account getAccountByUserName(String username) throws SQLException, ClassNotFoundException{
		return checkLoginDAO.getAccountByUserName(username);
	}
	public User getUserByUserName(String username) throws SQLException, ClassNotFoundException{
		return checkLoginDAO.getUserByUserName(username);
	}
}