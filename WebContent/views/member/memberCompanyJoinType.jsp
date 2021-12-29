<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 가입</title>
<!--JQuery CDM-->
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<!-- css -->
<link href="/assets/css/memberCompanyJoinType.css?aafter" rel="stylesheet" type="text/css" />
<link href="/assets/css/footer.css" rel="stylesheet" type="text/css" />
 <link href="/assets/css/header.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div id="wrap">
        <jsp:include page="/views/commons/header.jsp" />
        <div id="content">
            <div id="content_inner">
                <div id="showId">
                    <div class="type">
                        <div class='title'>
                            <h2>개인 회원</h2>
                        </div>
                        <div class='check'>
                            <div class='btn'>
                                <a href="/views/member/memberJoin.jsp" id='member'>회원가입</a>
                            </div>
                        </div>
                    </div>
                    <div class="type">
                        <div class='title'>
                            <h2>사업자 회원</h2>
                        </div>
                        <div class='check'>
                            <div class='btn'>
                                <a href="/views/company/companyJoin.jsp" id="company">입점 신청</a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <jsp:include page="/views/commons/footer.jsp" />

    </div>

</body>
</html>