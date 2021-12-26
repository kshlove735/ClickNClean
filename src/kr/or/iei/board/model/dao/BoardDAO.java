package kr.or.iei.board.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import kr.or.iei.board.model.vo.Board;
import kr.or.iei.common.JDBCTemplate;

public class BoardDAO {

	public ArrayList<Board> memberNotice(Connection conn, int currentPage, int recordCountPerPage) {
		PreparedStatement pstmt =null;
		ResultSet rset = null;
		
		ArrayList<Board> list = new ArrayList<Board>();
		
		int start = currentPage * recordCountPerPage - (recordCountPerPage-1);
		int end = currentPage * recordCountPerPage;	
		
		String query = "SELECT * FROM (SELECT ROW_NUMBER() OVER(order BY BOARDNO DESC) AS NUM, BOARDNO,SUBJECT,REGDATE,BOARDTYPE FROM BOARD WHERE BOARDTYPE='user') WHERE NUM BETWEEN ? AND ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			
			rset = pstmt.executeQuery();
			
			while(rset.next())
			{
				Board board = new Board();
				
				board.setBoardNo(rset.getInt("boardNo"));
				board.setSubject(rset.getString("subject"));
				board.setRegDate(rset.getDate("regDate"));
				
				list.add(board);
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

	public String getPageNavi(Connection conn, int naviCountPerPage, int recordCountPerPage, int currentPage) {
		// TODO Auto-generated method stub
		return null;
	}

}
