<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		boolean result = (boolean)request.getAttribute("result");
	%>
	
	<script>
	<%if(result) {%>
		alert('프로필 작성을 완료하였습니다.');
		
	
	<%}else{ %>
		alert('작성실패 - 지속적인 문제 발생시 관리자에 문의바랍니다.')
	  	
	<%} %>
	location.replace('/co/coMemberAllList.do');
	</script>
</body>
</html>