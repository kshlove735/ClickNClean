package kr.or.iei.company.model.service;

import java.util.ArrayList;

import kr.or.iei.company.model.vo.Company;

public interface CompanyService {
	ArrayList<Company> selectAllCompany();

	/**
	 * @Author : SeungHyun Kim(kshlove735)
	 * @Date : 2021. 12. 24.
	 * @return : Company
	 * @subscription : 사업자 회원 로그인
	 */
	public Company selectOneUser(String coId, String coPwd);

	
	
	/**
	 * @Author : SeungHyun Kim(kshlove735)
	 * @Date : 2021. 12. 26.
	 * @return : String
	 * @subscription :  이름, 이메일, roll 을 통해 userId 찾는 메소드
	 */
	String searchIdUsingEmail(String roll, String userName, String email);
}
