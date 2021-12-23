package kr.or.iei.admin.model.vo;

public class admin {

	private int AdminNo;
	private String AdminId;
	private String AdminPwd;
	private String Roll;
	private char end_YN;
	private String email;
	private String phone;	
	
	public admin() {
		super();
		// TODO Auto-generated constructor stub
	}
	

	public admin(int adminNo, String adminId, String adminPwd, String roll, char end_YN, String email, String phone) {
		super();
		AdminNo = adminNo;
		AdminId = adminId;
		AdminPwd = adminPwd;
		Roll = roll;
		this.end_YN = end_YN;
		this.email = email;
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "admin [AdminNo=" + AdminNo + ", AdminId=" + AdminId + ", AdminPwd=" + AdminPwd + ", Roll=" + Roll
				+ ", end_YN=" + end_YN + ", email=" + email + ", phone=" + phone + "]";
	}
	
	public int getAdminNo() {
		return AdminNo;
	}
	public void setAdminNo(int adminNo) {
		AdminNo = adminNo;
	}
	public String getAdminId() {
		return AdminId;
	}
	public void setAdminId(String adminId) {
		AdminId = adminId;
	}
	public String getAdminPwd() {
		return AdminPwd;
	}
	public void setAdminPwd(String adminPwd) {
		AdminPwd = adminPwd;
	}
	public String getRoll() {
		return Roll;
	}
	public void setRoll(String roll) {
		Roll = roll;
	}
	public char getEnd_YN() {
		return end_YN;
	}
	public void setEnd_YN(char end_YN) {
		this.end_YN = end_YN;
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
