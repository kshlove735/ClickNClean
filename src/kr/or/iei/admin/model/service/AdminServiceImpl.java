package kr.or.iei.admin.model.service;

<<<<<<< HEAD
public class AdminServiceImpl {
=======
import java.sql.Connection;

import kr.or.iei.admin.model.dao.AdminDAO;
import kr.or.iei.admin.model.vo.Admin;
import kr.or.iei.common.JDBCTemplate;

public class AdminServiceImpl implements AdminService {

	private AdminDAO adDAO= new AdminDAO();
	
	@Override
	public Admin selectOneUser(String adminId, String adminPwd) {
		Connection conn = JDBCTemplate.getConnection();
		Admin ad =adDAO.selectOneUser(conn, adminId, adminPwd);
		JDBCTemplate.close(conn);
		return ad;
	}
>>>>>>> 08acce95f4e0ff6e1a4929347b27a99a96720f65

}
