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
 * Servlet implementation class MemberPwdCheckServlet
 */
@WebServlet("/member/memberPwdCheck.do")
public class MemberPwdCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberPwdCheckServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userPwd = request.getParameter("userPwd");
		
		HttpSession session = request.getSession();
		
		String userId = ((Member)session.getAttribute("member")).getUserId();
		
		MemberService mService = new MemberServiceImpl();
		Member m = mService.selectOneUser(userId, userPwd);
		
		
		if(m!=null) {
			
			session.setAttribute("member", m); 
			RequestDispatcher view = request.getRequestDispatcher("/views/member/memberMyPage.jsp");
			view.forward(request, response);
			
		}else {
			RequestDispatcher view = request.getRequestDispatcher("/views/member/myPagePasswordCheckFail.jsp");
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
