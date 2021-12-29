<%@page import="kr.or.iei.review.model.vo.Review"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.or.iei.company.model.vo.Company"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link href="/assets/css/footer.css" rel="stylesheet" type="text/css" />
<link href="/assets/css/companyProfile.css" rel="stylesheet" type="text/css" />

 <link href="/assets/css/header.css" rel="stylesheet" type="text/css"/>
</head>
<style>

</style>

<body id="bodycss">
	<%
		Company com=(Company)request.getAttribute("com");
	ArrayList<Review> list=(ArrayList<Review>)request.getAttribute("list");
	%>
    <jsp:include page="/views/commons/header.jsp" />
    <div id="contentArea">
        <div class="contentHead">
            <div id="logoArea">
                <img src="/assets/img/%EB%A1%9C%EA%B3%A03.png" style="width: 30%; height: 100%;" />
            </div>

        </div>
        <div id="contentBody">
            <div id="contentTitle">${com.coId }</div>
            <div id="companyGrade">
              	평점: ${com.sumScore/com.reviewNum} 리뷰수: ${com.reviewNum }
            </div>
            <hr>
            <div id="etcInfo">
                <span style="margin-right:10px;">보유 팀수 : ${com.team }팀 </span>|<span style="margin-left:10px;">청소가능시간 : ${com.workHour }</span>  
                
            </div>
            <hr>
            <div id="companyInfo">내용: ${com.coInfo }</div>
            <div id="companyCleanArea">
                 	청소 가능 지역 :${com.area }
            </div>
            <div id="companyCleanType">
            	가능한 청소 종류<br>
            	<%
            		String [] str=com.getCleanType().split(",");
            		
            	%>
            <div class="companyCleanType" style="margin-left: 35px"><%=str[0] %></div>
            <%for(int i=1;i<str.length;i++){ %>
            <div class="companyCleanType"><%=str[i] %></div>
            <%} %>
            
            
            </div>
            
            
            
            
            <%-- <div id="companyReview">
                <span id="review">리뷰</span>
                <%for(Review r:list){ %>
                <div class="reviewArea">
                <span style="font-weight:bold;"><%=r.getArea() %> / <%=r.getCleanType() %> / <%=r.getScore() %></span>
                <hr>
			    <%=r.getContent() %>
                </div>
                <%} %>
            </div>--%>
        </div> 
 	
    </div>
    <jsp:include page="/views/commons/footer.jsp" />
</body></html>