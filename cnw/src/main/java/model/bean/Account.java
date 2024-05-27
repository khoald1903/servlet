package model.bean;

public class Account {
	private String username;
	private String password;
	private int priority;
	public Account() {
		// TODO Auto-generated constructor stub
	}
	public Account(String username, String password, int priority) {
		super();
		this.username = username;
		this.password = password;
		this.priority = priority;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getPriority() {
		return priority;
	}
	public void setPriority(int priority) {
		this.priority = priority;
	}
	@Override
	public String toString() {
		return "Account [username=" + username + ", password=" + password + ", priority=" + priority + "]";
	}
	
}
