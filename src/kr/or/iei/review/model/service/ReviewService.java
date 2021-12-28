package kr.or.iei.review.model.service;

import java.util.HashMap;

public interface ReviewService {

	HashMap<String, Object> ReviewAllList(String coId, int currentPage);

}
