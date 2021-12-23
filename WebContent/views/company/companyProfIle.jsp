<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
    div {
        box-sizing: border-box;
    }

    #bodycss {
        font-family: "나눔스퀘어"
    }

    #header {
        border: 1px solid #72CCFF;
        width: 100%;
        height: 92px;
        box-sizing: content-box;
    }

    #contentArea {
        border: 1px solid black;
        width: 1344px;
        height: 2000px;
        margin: 0 auto;
    }

    .contentHead {
        border: 1px solid black;
        width: 100%;
        height: 15%;
    }

    #contentBody {
        width: 100%;
        height: 85%;
        padding: 50px;
    }

    #contentTitle {
        width: 100%;
        font-size: 50px;
        color: #0E76B3;
        font-weight: bold;
        text-align: center;
        margin-bottom: 50px;
    }

    #logoArea {
        float: left;
        height: 100%;
        width: 100%;
        text-align: center;
    }

    #companyGrade {
        text-align: center;
        font-size: 30px;

    }

    #companyInfo {
        border: 1px solid black;
        height: 200px;
        font-size: 40px;
        margin-top: 50px;
        margin-bottom: 50px;
        width: 100%;
    }
    #companyCleanType{
        font-size: 40px;
        margin-bottom: 100px;
        text-align: center;
        
    }
    .companyCleanType{
        border: 1px solid black;
        float: left;
        width: 30%;
        height: 50px;
        margin-left: 25px;
        margin-top: 30px;
        
    }
   
    #companyCleanArea{
        border: 1px solid black;
        margin-top: 50px;
        font-size: 30px;
        margin-bottom: 50px;
    }
    #etcInfo{
        margin-top: 50px;
        font-size: 25px;
        text-align: center;
    }
     #companyReview{
        padding: 40px;
        
    }
    .reviewArea{
        border: 1px solid black;
        padding: 20px;
        margin-top: 20px;
    }
</style>

<body id="bodycss">
    <div id="header">

    </div>
    <div id="contentArea">
        <div class="contentHead">
            <div id="logoArea">
                <img src="img/%EB%A1%9C%EA%B3%A03.png" style="width: 30%; height: 100%;" />
            </div>

        </div>
        <div id="contentBody">
            <div id="contentTitle">깨끗한 나라</div>
            <div id="companyGrade">
                평점 4.0 리뷰수 50+
            </div>
            <hr>
            <div id="etcInfo">
                <span>보유 팀수 : </span><span>청소가능시간 : </span>  
                
            </div>
            <hr>
            <div id="companyInfo">우리는 이런 회사입니다.</div>
            <div id="companyCleanArea">
                 청소 가능 지역 :
            </div>
            <div id="companyCleanType">
            가능한 청소 종류<br>
            <div class="companyCleanType" style="margin-left: 35px"></div>
            <div class="companyCleanType"></div>
            <div class="companyCleanType"></div>
            </div>
            
            
            
            
            <div id="companyReview">
                리뷰
                <div class="reviewArea">
                서울시 동작구 / 이사청소 / 별점
                <hr><br>
                너무 너무 좋았습니다.<br>
                전문가 짱!
                </div>
                
            </div>
        </div>

    </div>
</body></html>