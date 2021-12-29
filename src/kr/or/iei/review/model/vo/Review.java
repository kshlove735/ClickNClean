package kr.or.iei.review.model.vo;

import java.sql.Date;

public class Review {

	private int reviewNo;
	private int contractNo;
	private String userId;
	private String coId;
	private int score;
	private Date regDate;
	private String photo;
	private char endYN;
	private String content;
	private String cleanType;
	private String area;
	private String userName;
	
	public Review() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Review(int reviewNo, int contractNo, String userId, String coId, int score, Date regDate, String photo,
			char endYN) {
		super();
		this.reviewNo = reviewNo;
		this.contractNo = contractNo;
		this.userId = userId;
		this.coId = coId;
		this.score = score;
		this.regDate = regDate;
		this.photo = photo;
		this.endYN = endYN;
	}

	public int getReviewNo() {
		return reviewNo;
	}

	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}

	public int getContractNo() {
		return contractNo;
	}

	public void setContractNo(int contractNo) {
		this.contractNo = contractNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getCoId() {
		return coId;
	}

	public void setCoId(String coId) {
		this.coId = coId;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public char getEndYN() {
		return endYN;
	}

	public void setEndYN(char endYN) {
		this.endYN = endYN;
	}

	
	
	
	
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getCleanType() {
		return cleanType;
	}

	public void setCleanType(String cleanType) {
		this.cleanType = cleanType;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Override
	public String toString() {
		return "Review [reviewNo=" + reviewNo + ", contractNo=" + contractNo + ", userId=" + userId + ", coId=" + coId
				+ ", score=" + score + ", regDate=" + regDate + ", photo=" + photo + ", endYN=" + endYN + "]";
	}
	
	
}
