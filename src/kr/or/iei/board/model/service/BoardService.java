package kr.or.iei.board.model.service;

import java.util.HashMap;

import kr.or.iei.board.model.vo.Board;

public interface BoardService {

		/**
		 * @Author : jieun Kim
		 * @Date : 2021-12-23
		 * @subscription : 회원 공지사항 및 FAQ
		 */
	HashMap<String, Object> memberNotice(int currentPage);

		/**
		 * @Author : jieun Kim
		 * @Date : 2021-12-25
		 * @subscription : 업체 공지사항 및 FAQ
		 */
	HashMap<String, Object> companyNotice(int currentPage);

		/**
		 * @Author : jieun Kim
		 * @Date : 2021-12-27
		 * @subscription : 게시글
		 */
	Board boardView(int currentPage);

		/**
		 * @Author : jieun Kim
		 * @Date : 2021-12-27
		 * @subscription : 검색 엔진
		 */
	HashMap<String, Object> selectSearchPost(int currentPage, String keyword, String type);

}
