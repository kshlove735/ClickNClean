package kr.or.iei.review.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.iei.company.model.vo.Company;
import kr.or.iei.review.model.service.ReviewService;
import kr.or.iei.review.model.service.ReviewServiceImpl;

/**
 * Servlet implementation class CoReviewAllListServlet
 */
@WebServlet("/co/coReviewAllList.do")
public class CoReviewAllListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CoReviewAllListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int currentPage;
		
		if(request.getParameter("currentPage")==null) {
			
			currentPage=1;
		}else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		
		String coId = ((Company)session.getAttribute("company")).getCoId();
		
		
		ReviewService rService = new ReviewServiceImpl();
		HashMap<String, Object> pageDataMap = rService.ReviewAllList(coId , currentPage);
		
		RequestDispatcher view = request.getRequestDispatcher("/views/company/companyReviewList.jsp");
		
		request.setAttribute("pageDataMap",pageDataMap);
		request.setAttribute("currentPage", currentPage);
		
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
