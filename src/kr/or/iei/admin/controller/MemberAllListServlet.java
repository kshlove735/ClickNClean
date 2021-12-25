package kr.or.iei.admin.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.iei.admin.model.service.AdminMemberService;
import kr.or.iei.admin.model.service.AdminMemberServiceImpl;
import kr.or.iei.common.MemberAuthorityCheck;
import kr.or.iei.member.model.vo.Member;

/**
 * Servlet implementation class MemberAllListServlet
 */
@WebServlet("/admin/memberAllList.do")
public class MemberAllListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberAllListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
       String roll = MemberAuthorityCheck.authorityRootCheck(request, response);
		
		// 검증 절차 후 넘어온 roll이 관리자가 아니면 어제 null이 오게 된다. 그래서 null이라면 error 페이지로 안내해라
		if(roll==null) {
			response.sendRedirect("/views/commons/error.jsp");
			return;
		}
		
		//모든 회원의 정보를 가져오는 비즈니스 로직 처리
		AdminMemberService adService = new AdminMemberServiceImpl();
		
		ArrayList<Member> list = adService.memberAllList();
		
		//가져온 회원 정보를 가지고 ,jsp(view) 페이지로 이동
		RequestDispatcher view = request.getRequestDispatcher("/views/admin/memberAllList.jsp");
		
		request.setAttribute("list", list);
		request.setAttribute("roll", roll);
		
		view.forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
