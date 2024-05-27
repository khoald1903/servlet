package model.bean;

public class UserInfor {
	private String username;
	private String password;
	private int priority;
	private String name;
	private boolean gender;
	private String email;
	private String phonenumber;
	private String address;
	public UserInfor() {
		// TODO Auto-generated constructor stub
	}
	public UserInfor(String username, String password, int priority, String name, boolean gender, String email,
			String phonenumber, String address) {
		super();
		this.username = username;
		this.password = password;
		this.priority = priority;
		this.name = name;
		this.gender = gender;
		this.email = email;
		this.phonenumber = phonenumber;
		this.address = address;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public boolean isGender() {
		return gender;
	}
	public void setGender(boolean gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "UserInfor [username=" + username + ", password=" + password + ", priority=" + priority + ", name="
				+ name + ", gender=" + gender + ", email=" + email + ", phonenumber=" + phonenumber + ", address="
				+ address + "]";
	}
	
}
