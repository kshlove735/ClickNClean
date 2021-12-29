<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 가입</title>
 <!--bootstap-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    <!--JQuery CDM-->
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<!-- css -->
<link href="/assets/css/memberCompanyJoinType.css?afeter" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="/assets/css/header.css?after">
<link rel="stylesheet" href="/assets/css/footer.css">
</head>
<body>
<div id="wrap">
        <!--헤더-->
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

        <!--푸터-->
		<jsp:include page="/views/commons/footer.jsp" />

    </div>

</body>
</html>