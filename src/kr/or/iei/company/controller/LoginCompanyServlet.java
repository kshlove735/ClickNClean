package kr.or.iei.company.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.iei.company.model.service.CompanyService;
import kr.or.iei.company.model.service.CompanyServiceImpl;
import kr.or.iei.company.model.vo.Company;
import kr.or.iei.member.model.vo.Member;

/**
 * Servlet implementation class LoginCompanyServlet
 */
@WebServlet("/company/loginCompany.do")
public class LoginCompanyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginCompanyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// loginMemberCompany.jsp 에서 넘겨준 데이터 받기
		String coId = request.getParameter("coId");
		String coPwd = request.getParameter("coPwd");
		String secureConnect = request.getParameter("secureConnect");

		// userId와 userPwd로 비즈니스 로직 처리
		CompanyService comService = new CompanyServiceImpl();
		Company com = comService.selectOneUser(coId, coPwd);

		
		if (com != null) {	// userId와 userPwd가 일치하는 회원있다면
			HttpSession session = request.getSession();
			session.setAttribute("company", com);

			response.sendRedirect("/views/company/companyMain.jsp");


		} else {	// 없다면
			RequestDispatcher view = request.getRequestDispatcher("/views/commons/loginFail.jsp");
			view.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
