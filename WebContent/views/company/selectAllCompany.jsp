<%@page import="kr.or.iei.company.model.vo.Company"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Document</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link href="/assets/css/selectAllCompany.css?after" rel="stylesheet" 
	type="text/css" />
<link href="/assets/css/footer.css" rel="stylesheet" type="text/css" />
 <link href="/assets/css/header.css" rel="stylesheet" type="text/css"/>
</head>
<style>

</style>


<body id="bodycss">
	<%
		ArrayList<Company> list = (ArrayList<Company>) request.getAttribute("list");
	%>
	

	<jsp:include page="/views/commons/header.jsp" />
	<div id="contentArea">
		<div class="contentHead">
			<span id="contentTitle">클릭N클린의 청소 업체 리스트</span>
			<div id="category">
				<span id="categoryTitle">카테고리</span>



				<form id=categoryForm>
					<table>
						<tr>
							<td><select class="option"
								aria-label="Default select example" id="area">
									<option selected>지역</option>
									<option>서울</option>
									<option>인천</option>
									<option>세종</option>
									<option>대전</option>
									<option>대구</option>
									<option>광주</option>
									<option>울산</option>
									<option>부산</option>
									<option>경기도</option>
									<option>충청북도</option>
									<option>충청남도</option>
									<option>전라북도</option>
									<option>전라남도</option>
									<option>경상북도</option>
									<option>경상남도</option>
							</select></td>
							<td><select class="option"
								aria-label="Default select example" id="cleanType">
									<option selected>분야</option>
									<option>입주청소</option>
									<option>이사청소</option>
									<option>부분청소</option>
							</select></td>
							<td><select class="option"
								aria-label="Default select example" id="etc">
									<option selected>순</option>
									<option>평점순</option>
									<option>리뷰순</option>
							</select></td>
							
						</tr>
					</table>
				</form>
			<script>
				$('.option').change(function(){
					var area=$('#area').val();
					var cleanType=$('#cleanType').val();
					var etc=$('#etc').val();
					
					$.ajax({
						url:"/company/selectCompanyCategory.do",
						data:{area:area,cleanType:cleanType,etc:etc},
						type:"get",
						dataType:"json",
						success:function(){
							
						},
						error:function(){
							
						}
					})
				})
			</script>

			</div>
		</div>
		<hr>
		<span id="bodyTitle"></span>
		<%for(Company com:list){ %>
		<div class="contentBody">
			<div id="left">
				<div id="companyLogoArea">
					
					<img id="companyLogo"
						src="/assets/img/%EB%B6%80%EB%B6%84%EC%B2%AD%EC%86%8C2.JPG">
						
				</div>
				<div id="toInfoArea">
					<form action="/company/selectProfile.do" get="post">
						<input type="hidden" name="coId" value="<%=com.getCoId() %>"  />
						<input type="submit" style="height: 60px"
							class="btn btn-outline-info" id="toInfoBtn" value="업체 프로필 보기">
							
						</form>
				</div>
				
			</div>
			<div id="right">
				<div id="reviewArea">
					<%
					int score=0;
					if(com.getReviewNum()!=0){
						score=com.getSumScore()/com.getReviewNum();
					}
					%>
					<div id="review">평점 : <%=score %> / 리뷰수 : <%=com.getReviewNum() %></div>
				</div>
				<div id="infoArea">
					<div id="info">업체소개<%=com.getCoInfo() %></div>
				</div>
				<div id="sideArea">
					<div id="side">업무시간: <%=com.getWorkHour() %> / 상담시간: <%=com.getMeetHour() %> / 지역: <%=com.getArea() %> </div>
				</div>
			</div>
		</div>
		<br><br>
		<%} %>
	</div>
	<div id="footer">
		<div id="caution">
			<p>클릭N클린은 통신판매중개자로서 청소서비스의 주거래 당사자가 아니며, 청소서비스의 분쟁과 계약사항은 회원사와
				당사자간에 있습니다.</p>
		</div>
		<div id="footer_inner">
			<div id="footer_inner_center">
				<div id="footer_inner_left">
					<span>클릭N클린 고객센터</span> <br> <a href="tel:010-3306-6303">010-3306-6303</a>
					<br> 영업시간 : 09:00 ~ 18:00 <br> (공휴일 휴무)
				</div>
				<div id="footer_inner_right">
					<div id="busyInfo">
						<p>클릭N클린(주)</p>
						<address>
							대표: 김승현 <br> 주소 : 서울특별시 중구 세종대로 136 파이낸스빌딩 3층 저스트코 S3119
							(태평로1가) <br> 사업자등록번호 : 585-86-00882 <br> 통신판매업번호 :
							2017-인천계양-0583호 <br> E-mail : help@clickNclean.co.kr <br>
							FAX : 070-5165-8603
						</address>
						<p>Copyright © 클릭N클린</p>
					</div>
					<ul>
						<li><a href="">개인정보취급방침</a></li>
						<li><a href="">이용약관</a></li>
						<li><a href="">관리자 페이지</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>