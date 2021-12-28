package kr.or.iei.admin.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import kr.or.iei.admin.model.vo.Admin;
import kr.or.iei.admin.model.vo.HeadOffice;
import kr.or.iei.common.JDBCTemplate;

public class AdminDAO {

	public Admin selectOneUser(Connection conn, String adminId, String adminPwd) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Admin ad = null;
		
		String sql="SELECT * FROM ADMIN WHERE adminId=? AND adminPwd=? AND end_yn='N'";
		
		try {
			pstmt= conn.prepareStatement(sql);
			pstmt.setString(1, adminId);
			pstmt.setString(2, adminPwd);
			
			rset=pstmt.executeQuery();
			
			if(rset.next()) {
				ad = new Admin();
				ad.setAdminNo(rset.getInt("adminNo"));
				ad.setAdminId(rset.getString("adminId"));
				ad.setAdminPwd(rset.getString("adminPwd"));
				ad.setAdminName(rset.getString("adminName"));
				ad.setRoll(rset.getString("roll"));
				ad.setEndYN(rset.getString("end_YN").charAt(0));
				ad.setEmail(rset.getString("email"));
				ad.setPhone(rset.getString("phone"));
				ad.setTel(rset.getString("tel"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return ad;

	}
	
	public HeadOffice adminMain(Connection conn) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		HeadOffice ho = null;
		
		String sql = "SELECT BUSNUM,CEONAME,CONAME,ADDRESS,BUSTYPE,SITETEL FROM HEADOFFICE";
		
		try {
			pstmt = conn.prepareStatement(sql);
	        
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				ho = new HeadOffice();
				ho.setSiteName(rset.getString("siteName"));
				ho.setSiteUrl(rset.getString("siteUrl"));
				ho.setBusNum(rset.getString("busNum"));
				ho.setAddress(rset.getString("address"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return ho;

	}


}
