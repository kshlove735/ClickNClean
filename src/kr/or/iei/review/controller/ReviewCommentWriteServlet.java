package kr.or.iei.review.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.iei.company.model.vo.Company;
import kr.or.iei.review.model.service.ReviewService;
import kr.or.iei.review.model.service.ReviewServiceImpl;
import kr.or.iei.review.model.vo.Comments;

/**
 * Servlet implementation class ReviewCommentWriteServlet
 */
@WebServlet("/review/reviewCommentWrite.do")
public class ReviewCommentWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewCommentWriteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		int reviewNo = Integer.parseInt(request.getParameter("reviewNo"));
		int currentPage = Integer.parseInt(request.getParameter("currentPage"));
		String content = request.getParameter("comment");
		
		String coId = ((Company)request.getSession().getAttribute("company")).getCoId();
		
		
		System.out.println(reviewNo);
		Comments c = new Comments();
		c.setReviewNo(reviewNo);
		c.setContent(content);
		c.setUserId(coId);
		
		ReviewService rService = new ReviewServiceImpl();
		int result = rService.insertReviewComment(c);
		
		if(result>0) {
			response.sendRedirect("/co/coReviewAllList.do?reviewNo="+reviewNo+"&currentPage="+currentPage);
		}else {
			response.sendRedirect("/views/commons/error.jsp");
			
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
