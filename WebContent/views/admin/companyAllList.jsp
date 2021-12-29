<%@page import="kr.or.iei.company.model.vo.Company"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.or.iei.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>업체 전체 리스트</title>

    <!-- CSS Front Template -->
    <link rel="stylesheet" href="/assets/css/theme.min.css">
    <link rel="stylesheet" href="/assets/css/docs.min.css">
     <link rel="stylesheet" href="/assets/css/header.css">
     <link rel="stylesheet" href="/assets/css/footer.css">
     <link rel="stylesheet" href="/assets/css/adminAccount.css">

    <!-- jQuery 라이브러리 -->
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
    
</head>
<body>
 
     <%
         ArrayList<Company> list = (ArrayList<Company>)request.getAttribute("list");
     %>
<style>
     
    * {
        box-sizing: border-box;
        font-family: 'NanumSquare';
        
    }
    
    #wrap {

        width: 1344px;
        margin: 0 auto;
        
    }

        /*헤더 */
        
        #adminpage{
             width: 1344px;
            height: 120px;
             margin: 0 auto;
           
        }
         #adminpageFont{
            position: relative;
            font-size : 35px;
            top : 38px;
            left: 580px;
            color: #555;
        }
        /* 메뉴*/
           #navigator {
            height: 67px;
            width : 1344px;
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
            width: 20%;
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


    
    /*content*/
    #companylistsub{
        text-align: center;
        font-size: 30px;
        height: 50px;
        padding: 30px;
 
    }
    
    
    #search{
        text-align: right;
        padding: 15px;
    }


</style>
<body>

    <jsp:include page="/views/commons/header.jsp" />
    <!-- Table -->
    <div id="wrap">
            <!-- navi 페이지별 로직 연결 -->
		

         
          <div id="adminpage">
            <span id="adminpageFont">관리자 페이지</span>
            </div>    
               <div id="submenu">
                    <div id="navigator">
                        <ul id="gnb">
                            <li><a href="/admin/adminHome.do">Home</a></li>

                            <li><a href="/admin/adminAccount.do">관리자 계정</a></li>
                            <li><a href="/admin/companyAllList.do">전체 업체 LIST</a></li>
                            <li><a href="/admin/memberAllList.do">전체 회원 LIST</a></li>
                            <li><a href="/board/memberNotice.do">게시판 관리</a>
                            
                        </ul>
            </div>
         </div> 
         <div class="line"></div>

            <div style=" width: 100%;">
                <div id= "companylistsub">
                    <p class="">전체 업체 리스트</p>
                </div> 
            <!--주제별 검색-->    
            <div id = "search">
            <select style="height: 30px">
             <option value = "comname" selected>업체명</option>
             <option value = "comid">아이디</option>
             <option value = "tel">전화번호</option>
            </select>
                    <input type="text" placeholder="search">
                    <button style="background-color: floralwhite; border-radius: 7px; color: #555">검색</button>
                </div>
                <!--업체 리스트-->
                <%if(!list.isEmpty()){ %>
                <table class="table table-text-center " >
                    <thead style="background-color: #B6E3FC;">
                        <tr>
                            <th style="width: 5%;">번호</th>
                            <th style="width: 10%;">업체명</th>
                            <th style="width: 15%;">아이디</th>
                            <th style="width: 15%;">전화번호</th>
                            <th style="width: 10%;">사업자 번호</th>
                            <th style="width: 25%;">주소</th>
                        </tr>
                    </thead>
                    
                    <tbody>
                    <%for(Company co : list){ %>
                        <tr>
                            <th><%=co.getCoNo() %></th>
                            <td><%=co.getCoName() %></td>
                            <td><%=co.getCoId() %></td>
                            <td><%=co.getTel() %></td>
                            <td><%=co.getBusNum() %></td>
                            <td><%=co.getAddress() %></td>
                        </tr>
                    </tbody>
                     <%} %>
                </table>
                <%} %>
                <!-- 페이징 처리 -->
                    <ul class="pagination justify-content-center">
                        <li class="page-item disabled">
                            <a class="page-link" href="#" tabindex="-1">Prev</a>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item">
                            <a class="page-link" href="#">Next</a>
                        </li>
                    </ul>
            </div>

    </div>

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
        </div>
        
</body>
</html>