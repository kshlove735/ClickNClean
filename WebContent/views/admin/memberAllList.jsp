<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>회원 전체 리스트</title>

    <!-- CSS Front Template -->
    <link rel="stylesheet" href="/assets/css/theme.min.css">
    <link rel="stylesheet" href="/assets/css/docs.min.css">
</head>
<body>
<style>
    * {
        box-sizing: border-box;
        font-family: 'NanumSquare';
        
    }
    
    #wrap {

        width: 1344px;
        margin: 0 auto;
        
    }
        /*헤더*/
        #header{
            width: 100%;
            height: 70px;
        }
         #logo{
            width: 300px;
            height: 100%;
            border: 1px solid black;
            display: inline-block;
            float: left;
            left: 100px;
        }
         
        #menu{
            width: 160px;
            height: 100%;
            display: inline-block;
            float: left;
            border: 1px solid black;
        }
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

        .line{
            width: 1344px;
            height: 6px;
            background-color: #0E76B3;
            margin : 0 auto;
        }
    
    /*content*/
    #memberlistsub{
        text-align: center;
        font-size: 30px;
        height: 50px;
        padding: 30px;
 
    }
    
    #search{
        text-align: right;
        padding: 15px;
    }
    
    /*footer*/
    #footer {
      
        width: 100%;
        height: 302px;
        background-color: #E6E6E6;
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

    #footer_inner {
        padding-top: 20px;

        width: 100%;
        height: 232px;
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
                            <li><a href="">전체 회원 LIST</a></li>
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
                <div id= "memberlistsub">
                    <p>전체 회원 리스트</p>
                </div>
            <!--주제별 검색 로직-->    
            <div id = "search">
            <select style="height: 30px">
             <option value = "username" selected>이름</option>
             <option value = "userid">아이디</option>
             <option value = "phone">휴대폰번호</option>
            </select>
                   
             <input type="text" placeholder="search">
              <button style="background-color: floralwhite; border-radius: 7px; color: #555">검색</button>
                </div>
                
                <!--전체 회원 리스트-->
                <table class="table table-text-center ">
                    <thead style="background-color: #B6E3FC;">
                        <tr>
                            <th style="width: 5%;">번호</th>
                            <th style="width: 10%;">이름</th>
                            <th style="width: 15%;">아이디</th>
                            <th style="width: 20%;">휴대폰번호</th>
                            <th style="width: 25%;">이메일주소</th>
                            <th style="width: 15%;">가입일</th>
                            <th style="width: 10%;">탈퇴여부</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th>1</th>
                            <td>김승현</td>
                            <td>user11</td>
                            <td>010-1234-4567</td>
                            <td>user11@naver.com</td>
                            <td>2021-12-21</td>
                            <td>N</td>
                        </tr>
                        <tr>
                            <th>2</th>
                            <td>김승현</td>
                            <td>user22</td>
                            <td>010-9874-1568</td>
                            <td>user22@naver.com</td>
                            <td>2021-12-18</td>
                            <td>N</td>
                        </tr>
                        <tr>
                            <th>3</th>
                            <td>김지은</td>
                            <td>user33</td>
                            <td>010-9632-8741</td>
                            <td>user33@naver.com</td>
                            <td>2021-07-21</td>
                            <td>N</td>
                        </tr>
                        <tr>
                            <th>4</th>
                            <td>이현아</td>
                            <td>user44</td>
                            <td>010-4751-1234</td>
                            <td>user44@naver.com</td>
                            <td>2021-10-15</td>
                            <td>N</td>
                        </tr>
                        <tr>
                            <th>5</th>
                            <td>정두식</td>
                            <td>user55</td>
                            <td>010-6666-4897</td>
                            <td>user55@naver.com</td>
                            <td>2021-03-21</td>
                            <td>N</td>
                        </tr>
                        <tr>
                            <th>6</th>
                            <td>노민수</td>
                            <td>user66</td>
                            <td>010-3265-7845</td>
                            <td>user66@naver.com</td>
                            <td>2021-12-25</td>
                            <td>N</td>
                        </tr>
                        <tr>
                            <th>7</th>
                            <td>노땡수</td>
                            <td>user77</td>
                            <td>010-7853-1122</td>
                            <td>user77@naver.com</td>
                            <td>2015-05-04</td>
                            <td>N</td>
                        </tr>
                        <tr>
                            <th>8</th>
                            <td>노러브</td>
                            <td>user88</td>
                            <td>010-2288-3214</td>
                            <td>user88@naver.com</td>
                            <td>2020-06-21</td>
                            <td>N</td>
                        </tr>
                        <tr>
                            <th>9</th>
                            <td>이경복</td>
                            <td>user99</td>
                            <td>010-1234-9876</td>
                            <td>user99@naver.com</td>
                            <td>2021-05-12</td>
                            <td>N</td>
                        </tr>
                        <tr>
                            <th>10</th>
                            <td>김포시</td>
                            <td>user00</td>
                            <td>010-5544-1212</td>
                            <td>user00@naver.com</td>
                            <td>2019-07-01</td>
                            <td>N</td>
                        </tr>
                        
                    </tbody>
                </table>
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
</body>
</html>