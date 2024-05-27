package model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.bean.Account;
import model.bean.User;
import model.bean.UserInfor;

public class UserDAO {
	public Connection getConnection() throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3307/cnw";
		return DriverManager.getConnection(url, "root", "");
	}

	public boolean addUser(User user, Account account) throws ClassNotFoundException, SQLException {
		Connection cnn = getConnection();
		String sql = "INSERT INTO `user`(`username`, `name`, `gender`, `email`, `phonenumber`, `address`) "
				+ "VALUES (?, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement statement = cnn.prepareStatement(sql);
			statement.setString(1, user.getUsername());
			statement.setString(2, user.getName());
			statement.setBoolean(3, user.getGender());
			statement.setString(4, user.getEmail());
			statement.setString(5, user.getPhonenumber());
			statement.setString(6, user.getAddress());

			statement.executeUpdate();
		} catch (SQLException e) {
			System.out.println("Loixxx");
			return false;
		}
		String sql1 = "INSERT INTO `account`(`username`, `password`, `priority`) " + "VALUES (?, ?, ?)";
		try {
			PreparedStatement statement = cnn.prepareStatement(sql1);
			statement.setString(1, account.getUsername());
			statement.setString(2, account.getPassword());
			statement.setInt(3, account.getPriority());
			statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Loi");
			return false;
		}

		return true;
	}

	public List<String> getListUsername() throws SQLException, ClassNotFoundException {
		Connection cnn = getConnection();
		String sql = "select username from account";
		Statement st = cnn.createStatement();
		ResultSet rs = st.executeQuery(sql);
		List<String> result = new ArrayList<>();
		while (rs.next()) {
			result.add("\"" + rs.getString(1) + "\"");
		}
		return result;
	}

	public boolean DeleteUser(String id) throws SQLException, ClassNotFoundException {
		Connection cnn = getConnection();
		String sql = "delete from account where username = '" + id + "'";
		String sql1 = "delete from user where username = '" + id + "'";
		Statement st = cnn.createStatement();
		int temp = st.executeUpdate(sql);
		return (st.executeUpdate(sql1) * temp) != 0 ? true : false;
	}

	public boolean UpdateUser(User user, Account account) throws SQLException, ClassNotFoundException {
		Connection cnn = getConnection();
		String sql = "UPDATE `user` SET `name`=?, `gender`=?, `email`=?, `phonenumber`=?, `address`=? WHERE `username`=?";

		PreparedStatement preparedStatement = cnn.prepareStatement(sql);
		preparedStatement.setString(1, user.getName());
		preparedStatement.setBoolean(2, user.getGender());
		preparedStatement.setString(3, user.getEmail());
		preparedStatement.setString(4, user.getPhonenumber());
		preparedStatement.setString(5, user.getAddress());
		preparedStatement.setString(6, user.getUsername());

		int rowsUpdated = preparedStatement.executeUpdate();
		String sql1 = "UPDATE `account` SET `password`=? WHERE `username`=?";
		PreparedStatement preparedStatement1 = cnn.prepareStatement(sql1);
		preparedStatement1.setString(1, account.getPassword());
		preparedStatement1.setString(2, account.getUsername());

		int rowsUpdated1 = preparedStatement1.executeUpdate();

		return rowsUpdated * rowsUpdated1 > 0;
	}

	public Account getAccountByUserName(String username) throws SQLException, ClassNotFoundException {
		Connection cnn = getConnection();
		String sql = "select * from account where username = '" + username + "'";
		Statement st = cnn.createStatement();
		ResultSet rs = st.executeQuery(sql);
		while (rs.next()) {
			if (rs.getString(1).equals(username)) {
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
		// (`username`, `name`, `email`, `phonenumber`, `address`)
		while (rs.next()) {
			if (rs.getString(1).equals(username)) {
				return new User(rs.getString(1), rs.getString(2), rs.getBoolean(3), rs.getString(4), rs.getString(5),
						rs.getString(6));
			}
		}
		return null;
	}

	public UserInfor getUserInfor(String username) throws SQLException, ClassNotFoundException {
		Connection cnn = getConnection();
		String sql = "SELECT * FROM account " + "JOIN user ON account.username = user.username "
				+ "WHERE account.priority = 1" + "&& user.username = '" + username + "'";
		Statement st = cnn.createStatement();
		ResultSet rs = st.executeQuery(sql);
		// (`username`, `name`, `email`, `phonenumber`, `address`)
		while (rs.next()) {
			return new UserInfor(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getString(5), rs.getBoolean(6),
					rs.getString(7), rs.getString(8), rs.getString(9));
		}
		return null;
	}

	public List<UserInfor> getListUser(String text) throws SQLException, ClassNotFoundException {
		Connection cnn = getConnection();
		String sql = "SELECT * FROM account " + "JOIN user ON account.username = user.username "
				+ "WHERE account.priority = 1";
		if (text != null) {
			sql += " AND account.username LIKE '%" + text + "%'";
		}
		Statement st = cnn.createStatement();
		ResultSet rs = st.executeQuery(sql);
		List<UserInfor> result = new ArrayList<UserInfor>();
		// (`username`, `name`, `email`, `phonenumber`, `address`)
		while (rs.next()) {
			result.add(new UserInfor(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getString(5), rs.getBoolean(6),
					rs.getString(7), rs.getString(8), rs.getString(9)));
		}
		return result;
	}
}
