package kr.or.iei.admin.model.vo;

public class Admin {

	private int adminNo;
	private String adminId;
	private String adminPwd;
	private String adminName;
	private String roll;
<<<<<<< HEAD
	private char end_YN;
	private String email;
	private String phone;
	private String tel;
	
=======
	private char endYN;
	private String email;
	private String phone;
	private String tel;

>>>>>>> 08acce95f4e0ff6e1a4929347b27a99a96720f65
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}

<<<<<<< HEAD
	public Admin(int adminNo, String adminId, String adminPwd, String adminName, String roll, char end_YN, String email,
=======
	public Admin(int adminNo, String adminId, String adminPwd, String adminName, String roll, char endYN, String email,
>>>>>>> 08acce95f4e0ff6e1a4929347b27a99a96720f65
			String phone, String tel) {
		super();
		this.adminNo = adminNo;
		this.adminId = adminId;
		this.adminPwd = adminPwd;
		this.adminName = adminName;
		this.roll = roll;
<<<<<<< HEAD
		this.end_YN = end_YN;
=======
		this.endYN = endYN;
>>>>>>> 08acce95f4e0ff6e1a4929347b27a99a96720f65
		this.email = email;
		this.phone = phone;
		this.tel = tel;
	}

<<<<<<< HEAD
	@Override
	public String toString() {
		return "Admin [adminNo=" + adminNo + ", adminId=" + adminId + ", adminPwd=" + adminPwd + ", adminName="
				+ adminName + ", roll=" + roll + ", end_YN=" + end_YN + ", email=" + email + ", phone=" + phone
				+ ", tel=" + tel + "]";
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
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public String getRoll() {
		return roll;
	}
	public void setRoll(String roll) {
		this.roll = roll;
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
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	


	
=======
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

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
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

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

>>>>>>> 08acce95f4e0ff6e1a4929347b27a99a96720f65
}
