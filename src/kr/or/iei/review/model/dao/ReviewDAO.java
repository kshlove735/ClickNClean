package kr.or.iei.review.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import kr.or.iei.common.JDBCTemplate;
import kr.or.iei.review.model.vo.Review;

public class ReviewDAO {

	public ArrayList<Review> ReviewAllList(String coId, Connection conn, int currentPage, int recordCountPerPage) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		ArrayList<Review> list = new ArrayList<Review>();
		
		int start = currentPage * recordCountPerPage -(recordCountPerPage-1);
		int end = currentPage * recordCountPerPage;
		
		
		String query = "select * from(select ROW_NUMBER() OVER (order BY reviewNo desc) as num, " + 
						"review.*, C.area, C.CLEANTYPE, member.userName " + 
						"from review left join member on (review.userId = member.userId) " + 
						"left join (select * from contract left join condition on (contract.conditionNo=condition.conditionNo)) C " + 
						"on (review.contractNo = C.contractNo) " + 
						"where review.END_YN='N' and review.coId=?) " + 
						"where num between ? and ? ";
		
		try {
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, coId);
			pstmt.setInt(2, start);
			pstmt.setInt(3, end);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Review r = new Review();
				
				r.setRegDate(rset.getDate("regDate"));
				r.setCleanType(rset.getString("cleanType"));
				r.setArea(rset.getString("area"));
				r.setContent(rset.getString("content"));
				r.setUserName(rset.getString("userName"));
				r.setEndYN(rset.getString("end_YN").charAt(0));

				list.add(r);
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

	public String getReviewPageNavi(String coId, Connection conn, int naviCountPerPage, int currentPage, int recordCountPerPage) {
		
		int recordTotalCount = totalReivewCount(coId, conn);
		
		
		int pageTotalCount = 0;
		
		if(recordTotalCount % recordCountPerPage > 0) {
			pageTotalCount = (recordTotalCount/recordCountPerPage)+1;
		}else {
			pageTotalCount = (recordTotalCount/recordCountPerPage);
		}
		
		int startNavi = (((currentPage - 1) / naviCountPerPage) * naviCountPerPage)+1;
		int endNavi = startNavi + (naviCountPerPage -1);
		
		if(endNavi > pageTotalCount) {
			endNavi = pageTotalCount;
		}
		
		StringBuilder sb = new StringBuilder();
		
		if(startNavi != 1) {
			sb.append("<a href='/co/coReviewAllList.do?currentPage=" + (startNavi-1)+"'>< Prev</a>     ");
		}
		
		for(int i = startNavi; i <= endNavi; i++) {
			if(i == currentPage) {
				sb.append("<a href='/co/coReviewAllList.do?currentPage=" + i + "'><b style='font-size:1.2rem'>"+i+"</b></a>" );
			}else {
				sb.append("<a href='/co/coReviewAllList.do?currentPage=" + i + "'>" + i + "</a> " );
			}
		}
		
		if(endNavi != pageTotalCount) {
			sb.append("<a href='/co/coReviewAllList.do?currentPage="+(endNavi+1)+"'>   Next ></a> ");
		}
		return sb.toString();
	}

	private int totalReivewCount(String coId, Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		int count = 0;
		
		String query = "select count(*) as count from review where end_YN = 'N' and coId =?";
		
		try {
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, coId);
			
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
