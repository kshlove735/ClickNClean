package kr.or.iei.contract.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import kr.or.iei.common.JDBCTemplate;
import kr.or.iei.company.model.vo.Company;
import kr.or.iei.contract.model.dao.ContractDAO;
import kr.or.iei.contract.model.vo.Contract;

public class ContractServiceImpl implements ContractService{

	private ContractDAO cDAO = new ContractDAO();
	
	
	@Override
	public ArrayList<Company> selectConditionCompany(String area) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Contract> MemberChoice(int currentPage, String userId) {

		Connection conn = JDBCTemplate.getConnection();
		
		int recordCountPerPage = 3;
		
		ArrayList<Contract> list = cDAO.memberChoice(currentPage, conn, recordCountPerPage, userId);
		
		int naviCountPerPage = 5;
		
		String pageNavi =  cDAO.getPageNavi(naviCountPerPage, conn, currentPage, recordCountPerPage, userId);
		
		return null;
	}

}
