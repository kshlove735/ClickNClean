<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
 <link href="/assets/css/footer.css" rel="stylesheet" type="text/css"/>
<style>
    #bodycss {
        font-family: "나눔스퀘어"
    }

    div {
        
        box-sizing: border-box;
    }

    #header {
        border: 1px solid #72CCFF;
        width: 100%;
        height: 92px;
        box-sizing: content-box;
    }

    #contentArea {
        width: 1344px;
        height: 2000px;
        margin: 0 auto;
    }

    .contentHead {
        width: 100%;
        height: 10%;
    }

    #contentTitle {
        display: block;
        width: 100%;
        margin-top: 100px;
        padding-left: 50px;
        font-size: 50px;
        color: #0E76B3;
        font-weight: bold;
    }
    #content{
        width: 100%;
        height: 85%;
        padding: 50px;
    }
    #footer{
        width: 100%;
        height: 300px;
    }
    .cleanTypeArea{
        border: 2px solid #555;
        width: 100%;
        height: 400px;
        margin-bottom: 150px;
        margin-top: 10px;
        border-radius: 5px;
    }
    .imgArea{
        float: left;
        width: 30%;
        height: 100%;
        padding: 20px;
        
    }
    .textArea{
        
        width: 70%;
        height: 100%;
        float: left;
        padding: 20px;
    }
    .typeName{
        font-size: 20px
    }
    .cleanType{
        font-size: 20px;
        cursor: pointer;
    }

</style>

<body id="bodycss">

    <div id="header">

    </div>
    <div id="contentArea">
        <div class="contentHead">
            <div id="contentTitle">클릭N클린에 요청 할 수 있는 청소
                
            </div>
            <span class="cleanType" style="margin-left: 50px;"
            onclick="move('1')">입주청소 /</span>
            <span class="cleanType"  onclick="move('2')">이사청소 /</span>
            <span class="cleanType"  onclick="move('3')">부분청소</span>
        
        </div>
        <div id="content">
           <span class="typeName">입주청소란?</span>
            <div class=cleanTypeArea id="1">
                <div class="imgArea">
                    <img style="width: 100%; height: 100%;" src="/assets/img/%EC%9E%85%EC%A3%BC%EC%B2%AD%EC%86%8C.JPG"/>
                </div>
                <div class="textArea">
                    
                    
                </div>
            </div>
            <span class="typeName">이사청소란?</span>
            <div class=cleanTypeArea id="2">
                <div class="imgArea">
                    <img style="width: 100%; height: 100%;" src="/assets/img/%EC%9E%85%EC%A3%BC%EC%B2%AD%EC%86%8C.JPG"/>
                </div>
                <div class="textArea">
                    
                    
                </div>
            </div>
            <span class="typeName">부분청소란?</span>
            <div class=cleanTypeArea id="3">
                <div class="imgArea">
                    <img style="width: 100%; height: 100%;" src="/assets/img/%EC%9E%85%EC%A3%BC%EC%B2%AD%EC%86%8C.JPG"/>
                </div>
                <div class="textArea">
                    
                    
                </div>
            </div>
        
    </div>
    </div>
    <script>
        function move(seq){
            var offset=$('#'+seq).offset();
            $('html, body').animate({scrollTop : offset.top-200},400);
        }
    </script>
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