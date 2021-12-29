package kr.or.iei.review.model.vo;

import java.sql.Date;

public class Comments {
	
	private int commentNo;
	private int reviewNo;
	private String content;
	private String userId;
	private Date regDate;
	private char delYN;
	public Comments() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Comments(int commentNo, int reviewNo, String content, String userId, Date regDate, char delYN) {
		super();
		this.commentNo = commentNo;
		this.reviewNo = reviewNo;
		this.content = content;
		this.userId = userId;
		this.regDate = regDate;
		this.delYN = delYN;
	}
	public int getCommentNo() {
		return commentNo;
	}
	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}
	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public char getDelYN() {
		return delYN;
	}
	public void setDelYN(char delYN) {
		this.delYN = delYN;
	}
	
	
	

}
