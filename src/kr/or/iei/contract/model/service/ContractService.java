package kr.or.iei.contract.model.service;

import java.util.ArrayList;

import kr.or.iei.company.model.vo.Company;

public interface ContractService {

	ArrayList<Company> selectConditionCompany(String area);

}
