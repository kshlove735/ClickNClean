package kr.or.iei.board.model.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import kr.or.iei.board.model.dao.BoardDAO;
import kr.or.iei.board.model.vo.Board;
import kr.or.iei.common.JDBCTemplate;

public class BoardServiceImpl implements BoardService{
	
	private BoardDAO bDAO = new BoardDAO();

	@Override
	public HashMap<String, Object> memberNotice(int currentPage) {
        
		Connection conn = JDBCTemplate.getConnection();
		
		//하나의 Page에서 몇개의 목록으로 보여줄 것인지에 대한 값이 필요
		int recordCountPerPage = 15;
		
		ArrayList<Board> list = bDAO.memberNotice(conn,currentPage,recordCountPerPage);
		
		/*
		for(Board board : list)
		{
			System.out.println("게시글 번호 : "+board.getBoardNo()+"/"+"게시글 제목 : "+board.getSubject());
		}
		*/
		
		//하나의 PageNavi bar에 보여질 navi의 개수 설정
		int naviCountPerPage = 5;
		
		String pageNavi = bDAO.getPageNavi(conn,naviCountPerPage,recordCountPerPage,currentPage);
		
		JDBCTemplate.close(conn);
		
		//2가지 방법
		//1. 별도의 vo를 따로 만드는 방법
		//2. HashMap를 이용하는 방법
		
		HashMap<String,Object> hm = new HashMap<String,Object>();
		
		hm.put("list", list);
		hm.put("pageNavi", pageNavi);
		
		return hm;
	}

	@Override
	public HashMap<String, Object> companyNotice(int currentPage) {
		
        Connection conn = JDBCTemplate.getConnection();
		
		//하나의 Page에서 몇개의 목록으로 보여줄 것인지에 대한 값이 필요
		int recordCountPerPage = 15;
		
		ArrayList<Board> list = bDAO.companyNotice(conn,currentPage,recordCountPerPage);
		
		//하나의 PageNavi bar에 보여질 navi의 개수 설정
		int naviCountPerPage = 5;
		
		String pageNavi = bDAO.getPageNavi(conn,naviCountPerPage,recordCountPerPage,currentPage);
		
		JDBCTemplate.close(conn);
		
		//2가지 방법
		//1. 별도의 vo를 따로 만드는 방법
		//2. HashMap를 이용하는 방법
		
		HashMap<String,Object> hm = new HashMap<String,Object>();
		
		hm.put("list", list);
		hm.put("pageNavi", pageNavi);
		
		return hm;
	}

	@Override
	public Board boardView(int boardNo) {
        Connection conn = JDBCTemplate.getConnection();
		
		// 1개의 게시물을 가져오기 위한 DAO
		Board board = bDAO.boardView(conn,boardNo);
		JDBCTemplate.close(conn);
		return board;
	}



}
