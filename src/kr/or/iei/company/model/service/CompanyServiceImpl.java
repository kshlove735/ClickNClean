package kr.or.iei.company.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import kr.or.iei.common.JDBCTemplate;
import kr.or.iei.company.model.dao.CompanyDAO;
import kr.or.iei.company.model.vo.Company;

public class CompanyServiceImpl implements CompanyService{
	private CompanyDAO comDAO = new CompanyDAO();
	@Override
	public ArrayList<Company> selectAllCompany() {
		Connection conn= JDBCTemplate.getConnection();
		ArrayList<Company> list= comDAO.selectAllCompany(conn);
		JDBCTemplate.close(conn);
		
		return list;
	}
	@Override
<<<<<<< HEAD
	public Company selectOneCompany(String coId) {
		Connection conn=JDBCTemplate.getConnection();
		Company com=comDAO.selectOneCompany(coId,conn);
		JDBCTemplate.close(conn);
		
=======
	public Company selectOneUser(String coId, String coPwd) {
		Connection conn= JDBCTemplate.getConnection();
		Company com = comDAO.selectOneUser(conn, coId, coPwd);
		JDBCTemplate.close(conn);
>>>>>>> 74875745efb8be881ba71691c0eb8f421fafa265
		return com;
	}

}
