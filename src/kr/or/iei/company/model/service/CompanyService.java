package kr.or.iei.company.model.service;

import java.util.ArrayList;

import kr.or.iei.company.model.vo.Company;

public interface CompanyService {
	ArrayList<Company> selectAllCompany();

	Company selectOneCompany(String coId);
}
