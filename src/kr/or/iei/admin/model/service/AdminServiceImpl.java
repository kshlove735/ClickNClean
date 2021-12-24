package kr.or.iei.admin.model.service;

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

}
