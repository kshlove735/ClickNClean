package kr.or.iei.admin.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import kr.or.iei.common.JDBCTemplate;
import kr.or.iei.member.model.vo.Member;

public class AdminMemberDAO {

	public ArrayList<Member> memberAllList(Connection conn) {

		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		ArrayList<Member> list = new ArrayList<Member>();
		
		String query = "SELECT USERNO,USERNAME,USERID,PHONE,EMAIL,END_YN FROM MEMBER ORDER BY BOARDNO DESC";
		
		try {
			pstmt = conn.prepareStatement(query);
			
			rset = pstmt.executeQuery();
			
			while(rset.next())
			{
				Member m = new Member();
				
				m.setUserNo(rset.getInt("userno"));
				m.setUserName(rset.getString("username"));
				m.setUserId(rset.getString("userid"));
				m.setEmail(rset.getString("email"));
				m.setPhone(rset.getString("phone"));
				m.setEnrollDate(rset.getDate("enrollDate"));
				m.setEndYN(rset.getString("end_yn").charAt(0));
				
				list.add(m);
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


}
