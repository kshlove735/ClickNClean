package kr.or.iei.member.model.service;

import java.sql.Connection;

import kr.or.iei.common.JDBCTemplate;
import kr.or.iei.member.model.dao.MemberDAO;
import kr.or.iei.member.model.vo.Member;

public class MemberServiceImpl implements MemberService{

	private MemberDAO mDAO= new MemberDAO();
	
	@Override
	public Member selectOneUser( String userId, String userPwd) {
		Connection conn = JDBCTemplate.getConnection();
		Member m =mDAO.selectOneUser(conn, userId, userPwd);
		JDBCTemplate.close(conn);
		return m;
		
	}

	

}
