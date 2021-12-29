package kr.or.iei.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.iei.member.model.service.MemberService;
import kr.or.iei.member.model.service.MemberServiceImpl;
import kr.or.iei.member.model.vo.Member;

/**
 * Servlet implementation class LoginUserCompanyServlet
 */
@WebServlet("/member/loginMember.do")
public class LoginMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginMemberServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// loginMemberCompany.jsp 에서 넘겨준 데이터 받기
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		String secureConnect = request.getParameter("secureConnect");

		// userId와 userPwd로 비즈니스 로직 처리
		MemberService mService = new MemberServiceImpl();
		Member m = mService.selectOneUser(userId, userPwd);

		
		if (m != null) {	// userId와 userPwd가 일치하는 회원있다면
			HttpSession session = request.getSession();
			session.setAttribute("member", m);

			response.sendRedirect("/");


		} else {	// 없다면
			RequestDispatcher view = request.getRequestDispatcher("/views/commons/loginFail.jsp");
			view.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
