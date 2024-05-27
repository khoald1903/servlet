package model.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import model.bean.Account;
import model.bean.User;

public class CheckLoginDAO {
	public Connection getConnection() throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3307/cnw";
		return DriverManager.getConnection(url, "root", "");
	}
	public boolean isExistUser(String username, String password) throws SQLException, ClassNotFoundException
	{
		Connection cnn = getConnection();
		String sql = "select * from account where username = '" + username + "' && password='" + password + "'";
		Statement st = cnn.createStatement();
		ResultSet rs = st.executeQuery(sql);
		while(rs.next()) {
			String user = rs.getString(1);
			String pass = rs.getString(2);
			if(user.equals(username) && pass.equals(password)) {
				return true;
			}
		}
		return false;
	}
	public Account getAccountByUserName(String username) throws SQLException, ClassNotFoundException {
		Connection cnn = getConnection();
		String sql = "select * from account where username = '" + username + "'";
		Statement st = cnn.createStatement();
		ResultSet rs = st.executeQuery(sql);
		while(rs.next()) {
			if(rs.getString(1).equals(username)) {
				return new Account(rs.getString(1), rs.getString(2), rs.getInt(3));
			}
		}
		return null;
	}
	public User getUserByUserName(String username) throws SQLException, ClassNotFoundException {
		Connection cnn = getConnection();
		String sql = "select * from user where username = '" + username + "'";
		Statement st = cnn.createStatement();
		ResultSet rs = st.executeQuery(sql);
		//(`username`, `name`, `email`, `phonenumber`, `address`)
		while(rs.next()) {
			if(rs.getString(1).equals(username)) {
				return new User(rs.getString(1), rs.getString(2), rs.getBoolean(3), rs.getString(4), rs.getString(5), rs.getString(6));
			}
		}
		return null;
	}
}