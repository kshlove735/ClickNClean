package kr.or.iei.contract.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import kr.or.iei.common.JDBCTemplate;
import kr.or.iei.company.model.vo.Company;
import kr.or.iei.contract.model.dao.ContractDAO;
import kr.or.iei.contract.model.vo.Contract;

public class ContractServiceImpl implements ContractService{
	private ContractDAO conDAO=new ContractDAO();
	@Override
	public ArrayList<Company> selectConditionCompany(String area, String cleanType) {
		Connection conn =JDBCTemplate.getConnection();
		ArrayList<Company> list=conDAO.selectConditionCompany(area,cleanType,conn);
		return list;
	}
	@Override
	public int insertCondition(Contract con) {
		Connection conn=JDBCTemplate.getConnection();
		int result =conDAO.insertCondtion(con,conn);
		if(result>0) JDBCTemplate.commit(conn);
		else JDBCTemplate.rollback(conn);
		JDBCTemplate.close(conn);
		return result;
	}

}
