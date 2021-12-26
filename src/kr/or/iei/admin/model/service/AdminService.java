package kr.or.iei.admin.model.service;

import kr.or.iei.admin.model.vo.Admin;

public interface AdminService {

	Admin selectOneUser(String adminId, String adminPwd);

}
