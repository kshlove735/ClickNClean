package kr.or.iei.review.model.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import kr.or.iei.common.JDBCTemplate;
import kr.or.iei.review.model.dao.ReviewDAO;
import kr.or.iei.review.model.vo.Review;

public class ReviewServiceImpl implements ReviewService{
	 
	private ReviewDAO rDAO = new ReviewDAO();
	@Override
	public HashMap<String, Object> ReviewAllList(String coId, int currentPage) {
		
		Connection conn = JDBCTemplate.getConnection();

		int recordCountPerPage = 4;

		ArrayList<Review> list = rDAO.ReviewAllList(coId, conn, currentPage, recordCountPerPage);
		
		
		
		int naviCountPerPage = 5;

		String pageNavi = rDAO.getReviewPageNavi(coId, conn, naviCountPerPage, currentPage, recordCountPerPage);
		
		JDBCTemplate.close(conn);

		HashMap<String, Object> hm = new HashMap<String, Object>();
	
		hm.put("list", list);
		hm.put("pageNavi", pageNavi);
		
		
		
		return hm;

	}
	

}
