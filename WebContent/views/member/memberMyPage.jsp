<%@page import="kr.or.iei.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>개인정보수정</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square.css" rel="stylesheet">
     <!-- jQuery 라이브러리 -->
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
      <link rel="stylesheet" href="/assets/css/header.css">
     <style>
          * {
        box-sizing: border-box;
        font-family: 'NanumSquare';
    }
        #wrap{
            width: 100%;
            margin: 0 auto;
            background-color: #fafafa;
        }
        /*헤더 부분 */
          #header {

        width: 100%;
        /*height: 92px;*/
        height: 70px;

        background-color: #fafafa;

    }

    #headerFixed {
        position: fixed;
        width: 100%;
        height: 70px;
        background-color: #fafafa;
        z-index: 98;
    }


    #headerInner {

        width: 1344px;
        height: 100%;
        margin: 0 auto;

    }

    #logo {
        width: 30%;
        height: 100%;
        float: left;
        
    }

    .logoImg {
        width: 200px;
        height: 44px;
        margin: 13px 0 0 7.5px;
    }

    #estimate {

        width: 40%;
        height: 100%;

        float: left;
    }

    
    #estimateBtn>a {
        text-decoration: none;
        line-height: 46px;
        font-size: 20px;
        color: #0E76B3;
    }

    #menu {

        width: 30%;
        height: 100%;

        float: left;
    }

    #login {
        width: 80%;
        height: 100%;
        float: left;
    }

    #login>ul {

        width: 320px;
        height: 100%;
        margin: 0;
    }

    #login>ul>li {
        list-style: none;
        width: 80px;
        float: right;
        display: inline;
        margin-right: 30px;
    }
    
    #menu a {
        text-decoration: none;
        font-size: 20px;
        display: inline;

        text-align: center;
        color: #0E76B3;
        font-weight: bold;
        line-height: 70px;

    }
        #mypage{
             width: 1344px;
            height: 120px;
             margin: 0 auto;
           
        }
         #mypageFont{
            position: relative;
            font-size : 35px;
            top : 38px;
            left: 580px;
            color: #555;
        }
        /* 메뉴 바 */
         #submenu{
            width: 1344px;
            height: 67px;
             margin: 0 auto;
        }
           #navigator {
            height: 67px;
            width : 800px;
            margin: 0 auto;
        }
        #gnb {
            margin: 0;
            padding: 0;
            height: 100%;
            overflow: hidden;
        }
        #gnb a {
            text-decoration: none;
            color: #555;
            width: 100%;
            display: block;
            font-size: 20px;
        }
        #gnb li {
            float: left;
            width: 25%;
            height: 100%;
            list-style-type: none;
            text-align: center;
            line-height: 70px;
            
        }
        #gnb li:hover {
            background-color: #0E76B3;
        }
        #gnb a:hover {
            color: white;
        }
        /* 콘텐트 부분 */
          #content{
            width: 1344px;
            height: 720px;
            margin: 0 auto;
        }
           #content1{
            width: 800px;
            height: 100%;
            margin: 0 auto;
        }
        #content-1{
            width: 100%;
            height: 640px;
        }
         
        #content1-gnb>li{
            list-style-type: none;
            font-size: 15px;
        }
        #table{
            width: 600px;
            margin: 55px 85px;
        }
        .input{
           line-height: 40px;
        }
        .txt_guide{
            height: 40px;
            margin-bottom: 0px;
            font-size: 11px;
            display: block;
            position: relative;
            top: -10px;
            left: 170px;
            display: none;
        }
        .re_txt_guide{
             height: 5px;
            margin-bottom: 0px;
            font-size: 11px;
            display: block;
            position: relative;
            top: -10px;
            left: 170px;
            display: none;
        }
        .mypage-td{
            width : 170px;
            height : 80px;
            text-align : center;
        }
         .mypage-td>span{
           	
           	font-size : 15px;
        }
        
         #phone>input{
            font-size: 13px;
             display: block;
             position: relative;
             width: 100px;
             left: 15px;
        }
        #btnPart{
           text-align: center;
        }
         .withdraw{
            display: inline-block;
             position: relative;
             height: 45px;
             width: 120px;
             left: 20px;
            top: 24px;
        }
        .mypageReset{
         display: inline-block;
            position: relative;
            height: 45px;
            width: 130px;
            left: 30px;
            top: 24px;
        }
        .cancle{
           display: inline-block;
            position: relative;
            left: 40px;
            height: 45px;
            width: 90px;
            top: 24px;
        }
        
        .line{
            width: 800px;
            height: 6px;
            background-color: #0E76B3;
            margin : 0 auto;
        }
        /*footer 부분 */
         #footer-1{
            width: 100%;
            height: 66px;
        }
         #footer{
            width: 100%;
            height: 66px;
             
        }
       #footer_inner {
            padding-top: 20px;
            width: 100%;
            height: 232px;
    }
         #caution {
        border-top: 1px solid #D9D9D9;
        border-bottom: 1px solid #D9D9D9;
        width: 100%;
        height: 70px;
        color: #666;


    }

    #caution>p {
        text-align: center;
        line-height: 70px;
        font-weight: 600;
    }
    
    #footer_inner_center {
        
        width: 1344px;
        height: 100%;
        margin: 0 auto;
    }

    #footer_inner_left {
      
        font-weight: bold;
        width: 26%;
        height: 100%;
        padding-left: 83.52px;
        float: left;
    }

    #footer_inner_left span {
        font-size: 20px;
        color: #666;
    }

    #footer_inner_left a {

        font-size: 25px;
        color: black;
        text-decoration: none;
        display: block;
        height: 30px;
        padding: 10px 0;
    }

    #footer_inner_right {
        
        width: 74%;
        height: 100%;
        float: left;
    }

    #busyInfo {
        color: #666;
        font-weight: bold;
        font-size: 13px;
        float: left;
        padding-left: 83.52px;
    }

    #busyInfo>p:first-child {
        font-size: 20px;
        color: #666;
    }

    #footer_inner_right ul {
        float: right;
        display: inline-block;
        width: 250px;
        padding-left: 50px;
        list-style: none;
    }

    #footer_inner_right ul li {
        margin-bottom: 20px;
        width: 100%;
    }

    #footer_inner_right ul li a {
        text-decoration: none;
        color: #666;
        font-weight: bold;
    }
        
    </style>
</head>
<body>

<%
	Member m = (Member)session.getAttribute("member");
%>


            <div id="wrap">
           <jsp:include page="/views/commons/header.jsp" />
         <!-- 로그인로고 -->
          <div id="mypage">
            <span id="mypageFont">마이페이지</span>
            </div>    
               <div id="submenu">
                    <div id="navigator">
                        <ul id="gnb">
                            <li><a href="/views/member/memberPwdCheck.jsp">개인정보수정</a></li>
                            <li><a href="/member/memberCheck.do">나의 견적서</a></li>
                            <li><a href="/review/reviewList.do">이용내역</a></li>
                            <li><a href="">설정</a></li>
                        </ul>
            </div>
         </div> 
         <div class="line"></div>
         
         <!--회원 정보 수정-->
         <div id="content">
             <div id="content1">
               <div id="content-1">
                <form name="frmUpdate" method="post" onsubmit="return false;">
                   <table id="table">
                    <tr>
                        <td class="mypage-td"><span>아이디</span></td>
                        <td>
                            <input type="text" name="userId" size="35" class="input rounded border border-#CCC"  value="<%=m.getUserId() %>" style="text-align: center;"/>
                        </td>
                    </tr> 
                    <tr>
                        <td class="mypage-td ico srcreen_out"><span>현재 비밀번호</span></td>
                        <td>
                            <input type="password" name="userPwd" size="35" height="50px" class="input border border-#CCC rounded" value="<%=m.getUserPwd() %>" style="text-align: center"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="mypage-td"><span>새 비밀번호</span></td>
                        <td>
                            <input type="password" name="newPwd" size="35" onclick="guideCheck()" class="input border border-#CCC rounded" style="text-align: center"/>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                         <p class="txt_guide">
                            <span id="pwdCount">* 10자 이상 입력</span><br>
                            <span id="combi">* 영문/숫자/특수문자(공백 제외)만 허용하며, 2개 이상 조합</span><br>
                            <span id="three">* 동일한 숫자 3개 이상 연속 사용 불가</span>
                        </p>
                        </td>
                    </tr>
                    <tr>
                        <td class="mypage-td" style="text-align: center"><span>새 비밀번호 확인</span></td>
                        <td>
                            <input type="password" name="newPwd_re" size="35" onclick="guideCheckRE()" class="input border border-#CCC rounded" style="text-align: center" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                         <p class="re_txt_guide">
                            <span>* 동일한 비밀번호를 입력해주세요</span><br>
                        </p>
                        </td>
                    </tr>
                    <tr>
                  	  <td class="mypage-td" style="text-align: center"><span>이름</span></td>
                        <td>
                            <input type="text" name="userName" value="<%=m.getUserName() %>" size="35" class="input border border-#CCC rounded" style="text-align:center; font-size:15px;"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="mypage-td"><span>이메일</span></td>
                         <td>
                            <input type="text" name="email" value="<%=m.getEmail() %>" size="35" class="input border border-#CCC rounded" style="text-align:center; font-size:15px;"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="mypage-td"><span>휴대폰 번호</span></td>
                        <td>
                            <input type="text" name="phone" value="<%=m.getPhone() %>" size="35" class="input border border-#CCC rounded" style="text-align:center; font-size:15px;"/>
                        </td>
                        <td id="phone">
                            <input type="button" value="다른 번호 인증" class="btn btn-outline-primary" />
                        </td>
                    </tr>
                    <tr id="btnPart">
                        <td id="withBtn" colspan="4"> 
                       <input type="button" name="withdraw" onclick="return withDraw();"  class="btn rounded withdraw" style="border: 1px solid #0E76B3; color: #0E76B3;" value="계정탈퇴">
                       <input type="button" name="mypageReset" onclick="return myPageReset();"class="btn rounded mypageReset" style="background-color:#0E76B3; color: white" value="회원정보수정">
                       <input type="button" name="cancle" onclick="return cancleBtn();" class="btn rounded cancle" style="border: 1px solid #0E76B3; color: #0E76B3;" value="취소"></td>
                    </tr>
                </table>
                 </form>
                 </div>
                 <div id="content-2">
                    
                  </div>
             </div>
         </div>
          <div class="line"></div>
          <!-- 풋터 영역 -->
          <div id="footer-1"></div>
                <div id="footer">
               <div id="caution">
                <p>클릭N클린은 통신판매중개자로서 청소서비스의 주거래 당사자가 아니며, 청소서비스의 분쟁과 계약사항은 회원사와 당사자간에 있습니다.</p>
            </div>
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
    
    
    <script>
        function guideCheck(){
          
            $('.txt_guide').css('display','block');
            
            var pwd = $('.newPwd').val();
            
            if(pwd.length > 9){
            	
            	$('#pwdCount').html().css('color','#00994C');
            }
        };
        
        function guideCheckRE(){
            
            $('.re_txt_guide').css('display','block');
        };
        
        function withDraw() {
            
            if(confirm("탈퇴를 진행하시겠습니까?")&& confirm("탈퇴를 하시게 되면, 데이터는 절대 복구 불가능합니다.")) {
                var frm = document.frmUpdate;
                    frm.action = "/member/memberWithDraw.do";
                    
                    frm.submit();
                    return true;
            }
        };
        
        function myPageReset(){
        	 

        	var frm = document.frmUpdate;
        		frm.action = "/member/memberUpdate.do";
        		frm.submit();
        		return true;
        	
        };
        
        function cancleBtn(){
        	
        	var frm = document.frmUpdate;
    		frm.action = "/views/member/memberPwdCheck.jsp";
    		frm.submit();
    		return true;
        }
        
    </script>
    
   
     
</body>
</html>