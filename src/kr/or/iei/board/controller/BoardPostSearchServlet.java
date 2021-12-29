package kr.or.iei.board.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.iei.board.model.service.BoardService;
import kr.or.iei.board.model.service.BoardServiceImpl;

/**
 * Servlet implementation class BoardPostSearchServlet
 */
@WebServlet("/board/boardPostSearch.do")
public class BoardPostSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardPostSearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		    int currentPage;
			
			if(request.getParameter("currentPage")==null)
			{
				//index.jsp 에서 게시판으로 이동하는 경우에는 가장 첫페이지면 1page로 셋팅
				currentPage = 1;
			}else {
				currentPage = Integer.parseInt(request.getParameter("currentPage"));
			}
			
			request.setCharacterEncoding("UTF-8");
			
			String keyword = request.getParameter("keyword");
			String type = request.getParameter("type");
			
			//해당 값을 가지고 비즈니스 로직 처리를 해서 리워드에 해다하는 게시물을 검색하여 페이징 처리하여 리턴
			BoardService bService = new BoardServiceImpl();
			HashMap<String,Object> map = bService.selectSearchPost(currentPage,keyword,type);
			
			RequestDispatcher view = request.getRequestDispatcher("/views/board/boardSelectAllListPage.jsp");
			
			request.setAttribute("pageDataMap", map);
			request.setAttribute("currentPage", currentPage);
			request.setAttribute("keyword", keyword);
			
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
