package kr.or.iei.admin.model.vo;

public class Admin {

	private int adminNo;
	private String adminId;
	private String adminPwd;
	private String roll;
	private char endYN;
	private String email;
	private String phone;

	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Admin(int adminNo, String adminId, String adminPwd, String roll, char endYN, String email, String phone) {
		super();
		this.adminNo = adminNo;
		this.adminId = adminId;
		this.adminPwd = adminPwd;
		this.roll = roll;
		this.endYN = endYN;
		this.email = email;
		this.phone = phone;
	}

	public int getAdminNo() {
		return adminNo;
	}

	public void setAdminNo(int adminNo) {
		this.adminNo = adminNo;
	}

	public String getAdminId() {
		return adminId;
	}

	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}

	public String getAdminPwd() {
		return adminPwd;
	}

	public void setAdminPwd(String adminPwd) {
		this.adminPwd = adminPwd;
	}

	public String getRoll() {
		return roll;
	}

	public void setRoll(String roll) {
		this.roll = roll;
	}

	public char getEndYN() {
		return endYN;
	}

	public void setEndYN(char endYN) {
		this.endYN = endYN;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

}
