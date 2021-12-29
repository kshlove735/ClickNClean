<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="footer">
			<div id="caution">
				<p>클릭N클린은 통신판매중개자로서 청소서비스의 주거래 당사자가 아니며, 청소서비스의 분쟁과 계약사항은 회원사와
					당사자간에 있습니다.</p>
			</div>
			<div id="footer_inner">
				<div id="footer_inner_center">
					<div id="footer_inner_left">
						<span>클릭N클린 고객센터</span> <br> <a href="tel:1600-1777">1600-1777</a>
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
							
							<c:choose>
								<c:when test="${sessionScope.member != null || sessionScope.company !=null }">
									
								</c:when>
							
							</c:choose>
							
							<li><a href="/admin/adminHome.do" id='adminLongin'>관리자 페이지</a></li>
							
							<script>
								$('#adminLongin').click(function(){
									var member = "<c:out value='${sessionScope.member}'/>";
									var company = "<c:out value='${sessionScope.company}'/>";
									
									console.log(member);
									console.log(company);
									if(member != "" || company !=""){
										alert('관리자 이외에 접근 불가합니다.');
										return false;
									}else{
										return true;
									} 
									
								});
							</script>
						</ul>
					</div>
				</div>
			</div>
		</div>
</body>
</html>