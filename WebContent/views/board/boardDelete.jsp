<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Board Delete Page</title>
</head>
<body>

        <%
        boolean result = (boolean)request.getAttribute("result");
        %>
        
    <script>
    <%if(result){%>
        alert('요청하신 글이 삭제 완료되었습니다.');
    <%}else {%>
        alert('이미 삭제된 글이거나 잘못된 요청입니다.')
    <%}%>
    location.replace('/board/memberNotice.do');

    </script>

</body>
</html>