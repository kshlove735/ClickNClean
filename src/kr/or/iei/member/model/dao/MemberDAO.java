package kr.or.iei.member.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import kr.or.iei.common.JDBCTemplate;
import kr.or.iei.member.model.vo.Member;

public class MemberDAO {

	public Member selectOneUser(Connection conn, String userId, String userPwd) {
		PreparedStatement pstmt =null;
		ResultSet rset = null;
		Member m = null;
		
		String sql = "SELECT * FROM MEMBER WHERE userId=? AND userPwd=? AND end_yn='N'";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			pstmt.setString(2, userPwd);
			rset=pstmt.executeQuery();
			
			if(rset.next()) {
				m=new Member();
				m.setUserNo(rset.getInt("userNo"));
				m.setUserId(rset.getString("userId"));
				m.setUserPwd(rset.getString("userPwd"));
				m.setUserName(rset.getString("userName"));
				m.setPhone(rset.getString("phone"));
				m.setEmail(rset.getString("email"));
				m.setEnrollDate(rset.getDate("enrollDate"));
				m.setEndYN(rset.getString("end_YN").charAt(0));
				m.setRoll(rset.getString("roll"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return m;
	
	}

	

}
