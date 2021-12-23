package kr.or.iei.contract.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import kr.or.iei.common.JDBCTemplate;
import kr.or.iei.contract.model.vo.Contract;

public class ContractDAO {

	public ArrayList<Contract> memberChoice(int currentPage, Connection conn, int recordCountPerPage, String userId) {

		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Contract> list = new ArrayList<Contract>();
		
		int start = currentPage * recordCountPerPage - (recordCountPerPage-1);
		int end =  currentPage * recordCountPerPage;
		
		String query = "select * " + 
					   "from(select row_number()over(order by conditionNo desc)as num, condition.*" + 
					   "from condition" + 
					   "left join contract on(condition.conditionNo=contract.conditionNo) " + 
					   "where contract.userId=?) " + 
					   "where num between ? and ?";
		
		
		try {
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, userId);
			pstmt.setInt(2, start);
			pstmt.setInt(2, end);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				Contract cd = new Contract();
				
				cd.setConditionNo(rset.getInt("conditionNo"));
				cd.setUserId(rset.getString("userId"));
				cd.setCleanType(rset.getString("cleanType"));
				cd.setHouseType(rset.getString("houseType"));
				cd.setArea(rset.getString("area"));
				cd.setHouseSize(rset.getInt("houseSize"));
				cd.setReqDate(rset.getDate("reqDate"));
				
				list.add(cd);
				
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return list;
		
	}

	public String getPageNavi(int naviCountPerPage, Connection conn, int currentPage, int recordCountPerPage, String userId) {

		
		int recordtotalCount = totalCount(conn, userId); //전체 글 개수
		
		int pageTotalCount = 0; //전체 페이지 개수
		
		pageTotalCount = (int)Math.ceil(recordtotalCount / (double)recordCountPerPage);
		
		int startNavi = (((currentPage - 1) / naviCountPerPage) * naviCountPerPage) +1;
		int endNavi = startNavi + (naviCountPerPage - 1);
		
		
		if(endNavi > pageTotalCount) {
			endNavi = pageTotalCount;
		}
		
		StringBuilder sb = new StringBuilder();
		
		if(startNavi!=1) {
			sb.append("<a href='/board/boardAllSelect.do?currentPage="+(startNavi-1)+"'>< Prev </a> ");
		}
		
		for(int i=startNavi; i<=endNavi;i++ ) {
			
			if(i==currentPage) {
				sb.append("<a href='/board/boardAllSelect.do?currentPage="+i+"'><B style='font-size:1.2em'>"+i+"</B></a> ");
		
			}else {
				sb.append("<a href='/board/boardAllSelect.do?currentPage="+i+"'>"+i+"</a> ");
			}
		}
		
		if(endNavi!=pageTotalCount) {
			sb.append("<a href='/board/boardAllSelect.do?currentPage="+(endNavi+1)+"'>Next ></a> ");
		}
		
		return sb.toString();
	}
	
	public int totalCount(Connection conn, String userId) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		int count = 0;
		String query = "select count(*) as count from condition where userId=?";
		
		try {
			pstmt = conn.prepareStatement(query);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				
				count = rset.getInt("count");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return count;
	}

}
