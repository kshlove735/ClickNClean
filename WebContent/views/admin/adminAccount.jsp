<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<<<<<<< HEAD
<title>관리자 페이지 메인</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
    <link rel="stylesheet" href="/assets/css/theme.min.css">
    <link rel="stylesheet" href="/assets/css/docs.min.css">
    <link rel="stylesheet" href="/assets/css/adminAccount.css">
    <link rel="stylesheet" href="/assets/css/header.css">
</head>
<body>

<style>
  
</style>

</style>
<body>
    <div id="wrap">
    
	<div id="header">
            <div id="logo">
          </div>
        </div>
          <div id="adminpage">
            <span id="adminpageFont">관리자 페이지</span>
            </div>    
               <div id="submenu">
                    <div id="navigator">
                        <ul id="gnb">
                            <li><a href="">Home</a></li>
                            <li><a href="">관리자 계정</a></li>
                            <li><a href="">전체 업체 LIST</a></li>
                            <li><a href="/views/admin/memberAllList.jsp">전체 회원 LIST</a></li>
                            <li><a href="">게시판 관리</a>
                            <ul class="sub">
                                <li><a href="">sub</a></li>
                                <li><a href="">sub</a></li>
                                <li><a href="">sub</a></li>
                            </ul></li>
                            
                        </ul>
            </div>
         </div> 
         <div class="line"></div>

            <div style=" width: 100%;">
               <!--관리자 정보-->
                <div id= "memberlistsub">
                    <p>관리자 정보</p>
                </div>
                <div id="change"> 
              <button id="btn1" style="background-color: floralwhite; border-radius: 7px; color: #555">수정하기</button>
               </div>
                </div>
                
                <div id="table">
                <table class="table table-text-center">
                    <thead>
                        <tr>
                            <th style="width: 30%;"> </th>
                            <th style="width: 70%;"> </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th>관리자 ID</th>
                            <td>admin11</td>
                        </tr>
                        <tr>
                            <th>관리자 이름</th>
                            <td>김지은</td>
                        </tr>
                        <tr>
                            <th>관리자 이메일</th>
                            <td>test123@kh.com</td>
                        </tr>
                        <tr>
                            <th>관리자 전화번호</th>
                            <td>02-2222-2222</td>
                        </tr>
                        <tr>
                            <th>관리자 휴대폰 번호</th>
                            <td>010-2222-2222</td>
                        </tr>
                  
                    </tbody>
                    </table></div>
                    
                    <!--사업자 정보-->
                    <div id= "memberlistsub">
                    <p>사업자 정보</p>
                </div>
                <div id="change"> 
              <button id="btn2" style="background-color: floralwhite; border-radius: 7px; color: #555">수정하기</button>
               </div>
                </div>
                
                <div id="table">
                <table class="table table-text-center">
                    <thead>
                        <tr>
                            <th style="width: 30%;"> </th>
                            <th style="width: 70%;"> </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th>사업자 등록번호</th>
                            <td>585-86-00882</td>
                        </tr>
                        <tr>
                            <th>대표자 명</th>
                            <td>김승현</td>
                        </tr>
                        <tr>
                            <th>상호 명</th>
                            <td>클릭N클린(주)</td>
                        </tr>
                        <tr>
                            <th>주소</th>
                            <td>서울특별시 중구 세종대로 136 파이낸스빌딩 3층 저스트코 S3119 (태평로1가)</td>
                        </tr>
                        <tr>
                            <th>업태</th>
                            <td>통신판매업</td>
                        </tr>
                        <tr>
                            <th>전화번호</th>
                            <td>010-2222-2222</td>
                        </tr>                   
                    </tbody>
                    </table></div>
                
            
            <!--footer-->
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

</body>

</html>