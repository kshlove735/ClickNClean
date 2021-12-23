package kr.or.iei.contract.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.iei.contract.model.service.ContractService;
import kr.or.iei.contract.model.service.ContractServiceImpl;

/**
 * Servlet implementation class MemberChoiceServlet
 */
@WebServlet(name = "UserChoiceServlet", urlPatterns = { "/contract/myEstimate.do" })
public class MemberChoiceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberChoiceServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId = ((Member)session.getAttribute("member")).getUserId();
		
		int currentPage;
		
		if(request.getParameter("currentPage")==null) {
			
			//즉, index.jsp 에서 게시판으로 이동하는 경우에는 가장 첫 페이지인 1page로 셋팅
			currentPage  = 1;
		
		}else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		ContractService cService = new ContractServiceImpl();
		cService.MemberChoice(currentPage,userId);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
