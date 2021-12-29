<%@page import="kr.or.iei.member.model.vo.Member"%>
<%@page import="kr.or.iei.contract.model.vo.Contract"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>나의 견적서</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square.css" rel="stylesheet">
     <!--JQuery CDM-->
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
        #gnb li:active {
            background-color: #0E76B3;
        }
        #gnb a:active {
            color: white;
        }
        /* 콘텐트 부분 */
          #content{
            width: 1344px;
            height: 620px;
            margin: 0 auto;
        }
           #content1{
            width: 800px;
            height: 100%;
            margin: 0 auto;
        }
        #content-1{
            width: 100%;
            height: 100px;
        }
        #content-2{
            width: 100%;
            height : 430px;
        }
        #content2{
            width: 30%;
            height: 100%;
            float: left;
        }
        #content3{
            width: 69%;
            height: 100%;
           float: left;
        }
         #detail{
            display: block;
            font-size: 30px;
            position: relative;
            top: 46px;
            left: 120px;
            color: #555;
        }
          #content3-1{
        width: 80%;
        height: 40px;
        margin: 59px 120px;
    }
    .estimate{
        border: 2px solid #0E76B3;
        width: 650px;
        height: 80px;
        margin: 25px auto;
    }
        table{
            margin: 22px auto;
        }
        
      #cleanType>{
      		width : 70px;
      		height : 100%;
      		font-size:20px;
      }
        #list{
            width: 100px;
            height: 40px;
            position: relative;
            top: -5px;
            color: #555;
        }
    #pageNavi{
            width: 37%;
            height: 70px;
            margin: 0 auto;
            text-align : center;
        }
    #pageNavi>span{
    		text-decoration: none;
    }
     
        .line{
            width: 800px;
            height: 6px;
            background-color: #0E76B3;
            margin : 0 auto;
        }
        
         #noneList{
        	display : block;
        	position: relative;
        	top : 190px;
        	left : 230px;
        }
        #td1{
      		table-layout:fixed;
        	
        }
         table{
      		table-layout:fixed;
        	
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
	HashMap<String,Object> map = (HashMap<String,Object>)request.getAttribute("map");
	
	ArrayList<Contract> list = (ArrayList<Contract>)map.get("list");
	
	String pageNavi = (String)map.get("pageNavi");
	
	int currentPage = (int)request.getAttribute("currentPage");


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
                            <li><a href="/review/reservationList.do">이용내역</a></li>
                            <li><a href="">설정</a></li>
                        </ul>
            </div>
         </div> 
         <div class="line"></div>
         
         <!--회원 정보 수정 비밀번호 체크-->
         <div id="content">
             <div id="content1">
               <div id="content-1">
                <div id="content2">
                     <span id="detail">견적내역</span>
                </div>
                <div id="content3">
                 
                </div>
                </div>
                <div id="content-2">
                
                <%if(!list.isEmpty()){ %>
                    
                    <%for(Contract c : list){ %>
                    
                    <div  class="rounded estimate">
                      
                            <table>
                                <tr>
                                    <td id="td1"><h5><%=c.getCleanType() %> /</h5></td>
                                    <td class="part"><h5><%=c.getHouseType() %> <%=c.getHouseSize() %> / </h5></td>
                                    <td class="part"><h5><%=c.getArea() %> / </h5></td>
                                    <td class="part"><h5><%=c.getReqDate() %></h5></td>
                                    <td style="color: white">ssssssss</td>
                                    <!-- 견적 리스트 페이지 연결 로직-->
                                    
                             <form action="/contract/selectConditionCompany.do" method="post">
                            		
                            		<%
                            		    String [] str = c.getArea().split(" ");
                            			String area1 = str[0];
                            			String area2 = str[1];
                            		%>
                            		
                            		<input type="hidden" name="area1" value="<%=area1%>"/>
                            		<input type="hidden" name="area2" value="<%=area2%>"/>
                            		<input type="hidden" name="cleanType" value="<%=c.getCleanType() %>"/>
                            		<input type="hidden" name="houseType" value="<%=c.getHouseType() %>"/>
                            		<input type="hidden" name="reqDate" value="<%=c.getReqDate() %>"/>
                            		<input type="hidden" name="conditionNo" value="<%=c.getConditionNo() %>"/>
                            		<input type="hidden" name="houseSize" value="<%=c.getHouseSize() %>"/>
                            		
                                    <td id="td2"><input type="submit" value="견적리스트" class="btn btn-outline-primary" style="background-color:#0E76B3; color: white;"></td>
                            
                             </form>
                                </tr>
                                
                            </table> 
                      
                    </div>
                    <%} %>
                    
                    <%}else{ %>
                    	
                  			<h5 id="noneList">견적 내역이 존재하지 않습니다.</h5>
                  		
                    <%} %>
                </div>
                <!--페이지 네비 로직-->
                <div id="pageNavi"><%=pageNavi %></div>
             </div>
         </div>
          <div class="line"></div>
         
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

   		 document.getElementByClassName('sysdate').value = new Date().toISOString().substring(0, 10);

    </script>
</body>
</html>