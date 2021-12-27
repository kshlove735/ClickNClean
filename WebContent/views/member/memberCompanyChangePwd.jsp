<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비밀번호 재설정</title>
<!--JQuery CDM-->
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<!-- css -->
<link href="/assets/css/memberCompanyChangePwd.css?after" rel="stylesheet" type="text/css" />
</head>
<body>
    <div id="wrap">
        <div id="header">

        </div>

        <div id="content">
            <div id="content_inner">
                <div id="ChangPwd_form">
                    <h2>비밀번호 재설정</h2>
                    
                    <div id="input_form">
                     	<div id="input_form_center_type1">
                       <!--  <form action="" method="post" id="input_form_center_type1"> -->
                            <input type="password" name="userPwd" class="input" placeholder="새 비밀번호를 입력해주세요.">
                            <p class="txt_guide"  >
                                    <span>* 10자 이상 입력</span><br>
                                    <span>* 영문/숫자/특수문자(공백 제외)만 허용하며, 2개 이상 조합</span><br>
                                    <span>* 동일한 숫자 3개 이상 연속 사용 불가</span>
                             </p>
                            
                            <br>
                            
                            <input type="password" name="userPwdRe" class="input" placeholder="새 비밀번호를 한 번 더 입력해주세요.">
                            <p class="txt_guide"  >
                            		<span>* 동일한 비밀번호를 입력해주세요.</span>
                            </p>
                            <br>
							<input type="hidden" name="roll" value="${requestScope.roll }">
							<input type="hidden" name="userId" value="${requestScope.userId }">
                            <input type="submit" value="확인" class="input"><br><br>
                            
                            
                        <!-- </form> -->
                       </div>
                       <script>
                       	$('input[type=submit]').click(function(){
                       		var userPwd=$('input[name=userPwd]').val();
                       		var userPwdRe=$('input[name=userPwdRe]').val()
                       		var roll=$('input[name=roll]').val();
                       		var userId=$('input[name=userId]').val();

                       		
                       		
                       		var changePwd={"userPwd":userPwd, "roll":roll,"userId":userId};
                           		
                           	$.ajax({
                           		url:"/member/memeberCompanyChangePwd.do",
                           		type:"post",
                           		data: changePwd,
                           		success: function(data){
                           			console.log(data)
                           			if(data=='true'){
                           				alert('비밀번호가 변경 되었습니다.');
                           				location.replace('/views/member/loginMemberCompany.jsp');
                           			}else{
										location.replace('/views/commons/error.jsp');                           				
                           			}
                           		},
                          		error: function(){
                        		console.log('ajax 통신 실패');
                           		}
                     
                           			
                           	});
                       		
                       		
                       		
                       	});
                       </script>

                    </div>
                </div>
            </div>
        </div>

        <div id="footer">

        </div>

    </div>
</body>
</html>