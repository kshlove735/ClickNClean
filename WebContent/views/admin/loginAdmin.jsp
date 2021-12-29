<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자 로그인</title>
   <link rel="stylesheet" href="/assets/css/header.css">
    <link rel="stylesheet" href="/assets/css/footer.css">
<!--bootstap-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
	integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
	integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
	crossorigin="anonymous"></script>
<!--JQuery CDM-->
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<!--아이콘-->
<script src="https://kit.fontawesome.com/edadbd266e.js"
	crossorigin="anonymous"></script>

<style>
* {
	box-sizing: border-box;
	font-family: 'NanumSquare';
	color: #555;
	font-size: 16px;
	background-color: #fafafa;
}

#wrap {
	/*border: 1px solid blue;*/
	width: 100%;
	height: 972px;
	margin: 0 auto;
}

/*비밀번호 폰트 변경 */
input[type=password] {
	font-family: fantasy;
}


/*콘텐츠*/
#content {
	/*border: 1px solid red;*/
	width: 100%;
	height: 600px;
}

#content_inner {
	/* border: 1px solid purple;*/
	width: 1344px;
	height: 100%;
	margin: 0 auto;
}

#login_form {
	/* border: 1px solid purple;*/
	width: 400px;
	height: 500px;
	margin: 90px auto;
	margin-bottom: 0
}

#login_form h2 {
	font-size: 35px;
	font-weight: bold;
	text-align: center;
}

#input_form {
	/* border: 1px solid red;*/
	height: 400px;
	margin-top: 40px;
}

#checkbox_search {
	margin-top: 5px;
}

.input {
	width: 100%;
	height: 50px;
	border-radius: 5px;
	color: #555;
	border: 1px solid #ccc;
	padding: 0 19px;
}

:root { -
	-form-color: #0E76B3;
}

input[type="checkbox"] {
	transform: scale(1.2);
	accent-color: var(- -form-color);
}

input[type="submit"] {
	background-color: #0E76B3;
	border-color: #0E76B3;
	color: #fafafa;
	margin-top: 15px;
	box-shadow: 0px 3px 6px rgb(0 0 0/ 16%);
}

#checkbox {
	float: left;
}

#login_search {
	float: right;
}

#login_search * {
	color: #555;
	text-decoration: none;
}

/*풋터*/
#footer {
	background-color: #E6E6E6;
}
</style>


</head>
<body>

	<div id="wrap">
		<jsp:include page="/views/commons/header.jsp" />

		<div id="content">
			<div id="content_inner">
				<div id="login_form">
					<h2>관리자 로그인</h2>

					<div id="input_form">
						<form action="/admin/loginAdmin.do" method="post"
							id="input_form_center">
							<!--   <input type="hidden" name="roll" value="ad-1">-->
							<input type="text" name="adminId" class="input"
								placeholder="아이디를 입력해주세요."><br>
							<br> <input type="password" name="adminPwd" class="input"
								placeholder="비밀번호를 입력해주세요."><br>
							<div id="checkbox_search">
								<div id="checkbox">
									<input type="checkbox" name="secureConnect" id="cb1"> <label
										for="cb1">보안접속</label>
								</div>
								<div id="login_search">
									<a href="">아이디 찾기</a><span> | </span><a href="">비밀번호 찾기</a>
								</div>
							</div>
							<input type="submit" value="로그인" class="input"><br>
							<br>

						</form>


					</div>
				</div>
			</div>
		</div>

		<div id="footer">
            <div id="caution">
                <p>클릭N클린은 통신판매중개자로서 청소서비스의 주거래 당사자가 아니며, 청소서비스의 분쟁과 계약사항은 회원사와 당사자간에 있습니다.</p>
            </div>
            <div id="footer_inner">
                <div id="footer_inner_center">
                    <div id="footer_inner_left">
                        <span>클릭N클린 고객센터</span>
                        <br>
                        <a href="tel:010-3306-6303">010-3306-6303</a>
                        <br>
                        영업시간 : 09:00 ~ 18:00
                        <br>
                        (공휴일 휴무)
                    </div>
                    <div id="footer_inner_right">
                        <div id="busyInfo">
                            <p>클릭N클린(주)</p>
                            <address>
                                대표: 김승현
                                <br>
                                주소 : 서울특별시 중구 세종대로 136 파이낸스빌딩 3층 저스트코 S3119 (태평로1가)
                                <br>
                                사업자등록번호 : 585-86-00882
                                <br>
                                통신판매업번호 : 2017-인천계양-0583호
                                <br>
                                E-mail : help@clickNclean.co.kr
                                <br>
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

	</div>
</body>
</html>