package kr.or.iei.board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.iei.board.model.service.BoardService;
import kr.or.iei.board.model.service.BoardServiceImpl;



/**
 * Servlet implementation class BoardDeleteServlet
 */
@WebServlet("/board/boardDelete.do")
public class BoardDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 삭제할 게시물의 번호
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
				
		System.out.println(boardNo);
		
		//비즈니스 로직 처리
		BoardService bService = new BoardServiceImpl();
		int result = bService.boardDelete(boardNo);
		
				
		RequestDispatcher view = request.getRequestDispatcher("/views/board/boardDelete.jsp");
				
		if(result>0)
		{
			request.setAttribute("result", true);
		}else
		{
			request.setAttribute("result", false);
		}
				
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
