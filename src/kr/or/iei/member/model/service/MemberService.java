package kr.or.iei.member.model.service;

import kr.or.iei.member.model.vo.Member;

public interface MemberService {

	
	
	/**
	 * @Author : SeungHyun Kim(kshlove735)
	 * @Date : 2021. 12. 23.
	 * @return : Member
	 * @subscription : 개인 회원 로그인
	 */
	public Member selectOneUser( String userId, String userPwd);

	

}
