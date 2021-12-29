<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!--JQuery CDM-->
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<!--아이콘-->
<script src="https://kit.fontawesome.com/edadbd266e.js" crossorigin="anonymous"></script>
<!-- JSTL 라이브러리 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- css -->
<link href="/assets/css/MemberCompanyFindId.css?aftder" rel="stylesheet" type="text/css" />
<link href="/assets/css/footer.css" rel="stylesheet" type="text/css" />
 <link href="/assets/css/header.css" rel="stylesheet" type="text/css"/>


<title>아이디 찾기</title>
</head>
<body>
    <div id="wrap">
     <jsp:include page="/views/commons/header.jsp" />

        <div id="content">
            <div id="content_inner">
                <div id="search_form">
                    <h2>아이디 찾기</h2>
                    <ul>
                        <li class="ur">이메일 인증</li>
                        <li class="co">휴대폰 인증</li>
                    </ul>
                    <div id="input_form">

                        <!--이메일 인증-->
                        <div id="email_check_form">
                            <label><input type="radio" name="roll" value="UR-1" checked> 개인 회원</label> <label><input type="radio" name="roll" value="CO-1"> 사업자 회원</label>
                            <input type="text" name="userName" class="input" placeholder="이름을 입력해 주세요."><br><br>
                            <input type="email" name="email" class="input" placeholder="이메일을 입력해 주세요.">
                            <input type="button" value="인증코드 보내기" id="get_verification_number" class="input">
							<input type="hidden" name="code">
                            <div id="verification" style="display: none">
                                <input type="text" placeholder="인증코드 10자리" id="verification_number" name="verificationNumber"> <input type="button" id="verification_number_btn" value="재발송">
                                <input type="button" value="확인" id="send_text" class="input">
                            </div>
                        </div>
                        
                        
                        

                        <!--휴대폰 인증-->
                        <form action="/member/memberCompanyFindIdUsingPhone.do" method="post" id="phone_check_form" style="display: none">
                            <label><input type="radio" name="roll" value="UR-1"  checked> 개인 회원</label> <label><input type="radio" name="roll"  value="CO-1"> 사업자 회원</label>
                            <input type="text" name="userName" class="input" placeholder="이름을 입력해 주세요."><br><br>
                            <input type="text" name="phone" class="input" placeholder="핸드폰 번호를 입력해 주세요.(숫자만 입력)"><br>
                            <input type="submit" value="확인" id="send_email" class="input">

                        </form>


                        <script>
                        
                        	<%-- 이메일 인증 선택시  border 스타일 변경(class 변경 이용), 이메일 form 태그 생성  --%>
                            $('.ur').click(function() {

                                /*border 설정*/
                                $(this).attr('class', 'ur');
                                $(this).next().attr('class', 'co');

                                $('#email_check_form').css('display', 'block');
                                $('#phone_check_form').css('display', 'none');

                            });

                            <%-- 핸드폰 인증 선택시  border 스타일 변경(class 변경 이용), 핸드폰 form 태그 생성  --%>
                            $('.co').click(function() {

                                $(this).attr('class', 'ur');
                                $(this).prev().attr('class', 'co');

                                $('#email_check_form').css('display', 'none');
                                $('#phone_check_form').css('display', 'block');

                            });
                            
                            $('input[value=CO-1]').click(function(){
                            	$('input[name=userName]').attr('placeholder','업체명을 입력해주세요.');
                            });
                            
                            $('input[value=UR-1]').click(function(){
                            	$('input[name=userName]').attr('placeholder','이름을 입력해주세요.');
                            });
                            
                            
                            <%-- ajax로 회원 검증  --%>
                            $('#get_verification_number').click(function(){
                    
                            	var roll = $('input[name=roll]:checked').val();
                                var userName = $('input[name=userName]').val();
                                var email = $('input[name=email]').val();
                                
                                var findId={roll:roll, userName:userName, email:email};
                                
                                $.ajax({
                                	url: "/member/memberCompanyFindIdUsingEmail.do",
                                	type:"post",
                                	data: findId,
                                	success: function(data){
                                		if(data=="null"){
                                			alert('가입 시 입력하신 회원 정보가 맞는지 \r\n다시 한번 확인해 주세요.');
                                		}else{
                                			
                                            sendEmail();
                                		}
                                	},
                                	error: function(){
                                		console.log('ajax 통신 실패');
                                	}
                                	
                                }) 
                            });

                            <%--  인증 코드 메일로 보내는 로직 실행  --%>
                            function sendEmail() {
                            	
                            	var email = $('input[name=email]').val();
                            	
                            	 $.ajax({
                                 	url: "/member/memberCompanySendEmailCode.do",
                                 	type:"post",
                                 	data: {"email":email},
                                 	success: function(data){
                                 		if(data!="null"){
                                 			$('input[name=code]').val(data);
                                 			$('#verification').css('display', 'inline-block');
                                            $('#get_verification_number').css('display', 'none');
                                            alert('인증코드를 이메일로 보냈습니다.');
                                 			
                                 		}else{
                                 			alert('이메일 발송에 실패하였습니다.\r\n지속적인 문제 발생시 관리자에게 문의해주세요.');
                                 		}
                                 	},
                                 	error: function(){
                                 		console.log('ajax 통신 실패');
                                 	}
                                 	
                                 }) 
                                
                            };
             
	                        <%-- ajax로 인증 코드 메일로 다시 보내는 로직 실행  --%>
	                        $('#verification_number_btn').click(function() {
	                            sendEmail();
	                        });
	                        
	                        <%-- ajax로  userId 메일로 보내는 로직 실행  --%>
	                        $('#send_text').click(function(){
	                        	
	                        	var verificationNumber = $('input[name=verificationNumber]').val();
                                var code = $('input[name=code]').val();
                                var email = $('input[name=email]').val();
                                var roll = $('input[name=roll]:checked').val();
                                var userName = $('input[name=userName]').val();
                                
                                var sendEmail={verificationNumber:verificationNumber, code:code, email:email, roll:roll ,userName:userName};
                                
                                $.ajax({
                                	url: "/member/memberCompanySendEmailUserId.do",
                                	type:"post",
                                	data: sendEmail,
                                	success: function(data){
                                		if(data=="true"){
                                			alert('아이디를 이메일로 보냈습니다.');
                                			location.replace('/views/member/loginMemberCompany.jsp');
                                		}else{
                                			
                                			alert('인증코드가 일치하지 않습니다.');
                                		}
                                	},
                                	error: function(){
                                		console.log('ajax 통신 실패');
                                	}
                                }) 
	                        });

                           
                        </script>

                    </div>
                </div>
            </div>
        </div>

     <jsp:include page="/views/commons/footer.jsp" />

    </div>
</body>
</html>