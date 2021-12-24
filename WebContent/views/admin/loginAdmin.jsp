<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자 로그인</title>

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

/*헤더*/
#header {
	border: 1px solid red;
	width: 100%;
	height: 70px;
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
	border: 1px solid red;
	width: 100%;
	height: 302px;
	/* background-color: #E6E6E6;*/
}
</style>


</head>
<body>

	<div id="wrap">
		<div id="header"></div>

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

		<div id="footer"></div>

	</div>
</body>
</html>