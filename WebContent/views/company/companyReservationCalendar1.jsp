<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/assets/css/cheader.css?after">
<link rel="stylesheet" href="/assets/css/companyReservationCalendar.css">
<link rel="stylesheet" href="/assets/css/footer.css">
<link rel="stylesheet">
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
<script
	src=https://cdn.jsdelivr.net/npm/chart.js@3.6.2/dist/chart.min.js></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<link
	href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link href="/assets/css/header.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
<style>
#datepicker {
	text-align: center;
	border-radius: 5px;
	padding-left: 80px;
	width: 50%;
	float:left;
}

table {
	margin-left: 100px;
	border-radius: 5px;
	width: 500px;
}

table td:hover {
	background-color: gray;
}

.ui-datepicker-header {
	background-color: #0E76B3;
}

#content {
		width: 1344px;
	margin: 0 auto;
	text-align: center;
	height:500px;
}
 #reservation{
        background-color: white;
        width: 50%;
        height: 400px;
        text-align: center;
        float:left
    }    
    
    #reservationbg{
        width: 450px;
        height: 560px;
        padding-top: 80px;
        background-color:#0099FF; 
         box-sizing: border-box;
    }
    #container{
        width: 500px;
        height: 570px;
    }
    
    .container2{
        width: 200px;
        height: 570px;
    }
    div{
    	border:1px solid black;
    }
</style>

</head>
<body>

	<jsp:include page="/views/company/cheader.jsp" />

		<div id="content">

			<div id="datepicker"></div>
			<div id="reservation">
			<input name="reqDate" id="date" type="text"
				style="margin-bottom: 50px;" />
			</div>
			
			<script>
				$(function() {
					$("#datepicker")
							.datepicker(
									{
										minDate : +1,
										dateFormat : "yy.mm.dd",
										appendText : "yyyy-mm-dd",
										monthNames : [ '1월', '2월', '3월', '4월',
												'5월', '6월', '7월', '8월', '9월',
												'10월', '11월', '12월' ],
										dayNames : [ '일', '월', '화', '수', '목',
												'금', '토' ],
										dayNamesShort : [ '일', '월', '화', '수',
												'목', '금', '토' ],
										dayNamesMin : [ '일', '월', '화', '수',
												'목', '금', '토' ],
										showMonthAfterYear : true,
										nextText : '다음달',
										yearSuffix : '년',
										prevText : '',
										onSelect : function() {
											var currentDate = $("#datepicker")
													.datepicker("getDate");
											$('#date').val(
													$.datepicker.formatDate(
															"yy-mm-dd",
															currentDate));

										}
									});
				});
			</script>
		
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