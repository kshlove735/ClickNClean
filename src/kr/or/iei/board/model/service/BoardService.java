package kr.or.iei.board.model.service;

import java.util.HashMap;

import kr.or.iei.board.model.vo.Board;

public interface BoardService {

	HashMap<String, Object> memberNotice(int currentPage);

	HashMap<String, Object> companyNotice(int currentPage);

	Board boardView(int currentPage);

}
