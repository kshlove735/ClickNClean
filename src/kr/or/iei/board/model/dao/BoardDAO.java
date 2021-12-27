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

	public ArrayList<Board> companyNotice(Connection conn, int currentPage, int recordCountPerPage) {
		PreparedStatement pstmt =null;
		ResultSet rset = null;
		
		ArrayList<Board> list = new ArrayList<Board>();
		
		int start = currentPage * recordCountPerPage - (recordCountPerPage-1);
		int end = currentPage * recordCountPerPage;	
		
		String query = "SELECT * FROM (SELECT ROW_NUMBER() OVER(order BY BOARDNO DESC) AS NUM, BOARDNO,SUBJECT,REGDATE,BOARDTYPE FROM BOARD WHERE BOARDTYPE='com') WHERE NUM BETWEEN ? AND ?";
		
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

	public Board boardView(Connection conn, int boardNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		Board board = null;
		
		String query = "SELECT BOARD.SUBJECT,BOARD.REGDATE,BOARD.WRITER,BOARD.CONTENT FROM BOARD" + 
				       "LEFT JOIN MEMBER ON(BOARD.WRITER=MEMBER.USERID)" + 
				       "WHERE BOARDNO=? AND BOARD.END_YN='N'";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, boardNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next())
			{
                board = new Board();
				
				board.setSubject(rset.getString("subject"));
				board.setContent(rset.getString("content"));
				board.setWriter(rset.getString("writer"));
				board.setRegDate(rset.getDate("regDate"));
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return board;
	}

}
