<%@page import="kr.or.iei.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<<<<<<< HEAD
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>클릭N클린</title>
	<!--bootstap-->
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
		crossorigin="anonymous">
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
		integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
		integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
		crossorigin="anonymous"></script>
	<!--JQuery CDM-->
	<script src="https://code.jquery.com/jquery-3.6.0.js"
		integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
		crossorigin="anonymous"></script>
	<!--아이콘-->
	<script src="https://kit.fontawesome.com/edadbd266e.js"
		crossorigin="anonymous"></script>
	<!--bootstap-->
	<!--<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans|Varela+Round">-->
	<!--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">-->
	<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">-->
	<!--  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>-->
	<!-- <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>-->
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
	<!-- css -->
	<link href="/assets/css/index.css?afqqter" rel="stylesheet" type="text/css" />
	<!-- JSTL 라이브러리 -->
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<link rel="stylesheet" href="/assets/css/header.css?after">
	<link rel="stylesheet" href="/assets/css/footer.css">
=======
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>클릭N클린</title>
   <!--bootstap-->
   <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous">
   <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"></script>
   <script
      src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
      integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
      crossorigin="anonymous"></script>
   <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
      integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
      crossorigin="anonymous"></script>
   <!--JQuery CDM-->
   <script src="https://code.jquery.com/jquery-3.6.0.js"
      integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
      crossorigin="anonymous"></script>
   <!--아이콘-->
   <script src="https://kit.fontawesome.com/edadbd266e.js"
      crossorigin="anonymous"></script>
   <!--bootstap-->
   <!--<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans|Varela+Round">-->
   <!--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">-->
   <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">-->
   <!--  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>-->
   <!-- <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>-->
   <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
   <!-- css -->
   <link href="/assets/css/index.css?afqqter" rel="stylesheet" type="text/css" />
   <!-- JSTL 라이브러리 -->
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
   <link rel="stylesheet" href="/assets/css/header.css?after">
   <link rel="stylesheet" href="/assets/css/footer.css">
>>>>>>> 307c70ecf227dc820f54ed545c325fde4beec3d2
</head>


<body>
<<<<<<< HEAD
	<script>
								
		$(document).ready(function(){
											
			$.ajax({
				url: "/review/selectReviewForMain.do",
				
				type:"post",
				datatype:"json",
				success : function(data){
					
					var reviews = $('.top');
																
					for(var i  =0 ; i< 9;i++){
																
						var top = data[i].userName;
						var mid = data[i].userId + " 님";
						var bottom = data[i].content;
																		
						$(reviews[i]).html(top);
						$(reviews[i]).next().html(mid);
						$(reviews[i]).next().next().html(bottom);
																
					};
																									
				}, 
				error:function(){
					console.log('ajax 통신 실패');
				}
			});
		});
																			
																		
	</script>

	<div id="wrap">
	
		<!--헤더-->
		<jsp:include page="/views/commons/header.jsp" />
		<!--컨테이너 블럭-->
		<div id="container">


			<!--베너(케로셀)-->
			<div id="topBanner">
				<div id="carousel">
					<div id="carouselExampleIndicators" class="carousel slide h-100"
						data-bs-ride="carousel">
						<div class="carousel-indicators h-100">
							<button type="button" data-bs-target="#carouselExampleIndicators"
								data-bs-slide-to="0" class="active" aria-current="true"
								aria-label="Slide 1"></button>
							<button type="button" data-bs-target="#carouselExampleIndicators"
								data-bs-slide-to="1" aria-label="Slide 2"></button>
							<button type="button" data-bs-target="#carouselExampleIndicators"
								data-bs-slide-to="2" aria-label="Slide 3"></button>
						</div>
						<div class="carousel-inner h-100">
							<div class="carousel-item active h-100">
								<img src="/assets/img/carousel1.jpg"
									class="d-block w-100 h-100" alt="...">
								<div class="carousel-caption">
	                                    <h3>우리동네 업체 정보</h3>
	                                    <h3>견적 가격 까지</h3>
	                                    <h3>바로 확인하세요</h3>
	                                    <p>청소 업체 비교 플랫폼 클릭N클린</p>
=======
   <script>
                        
      $(document).ready(function(){
                                 
         $.ajax({
            url: "/review/selectReviewForMain.do",
            
            type:"post",
            datatype:"json",
            success : function(data){
               
               var reviews = $('.top');
                                                
               for(var i  =0 ; i< 9;i++){
                                                
                  var top = data[i].userName;
                  var mid = data[i].userId + " 님";
                  var bottom = data[i].content;
                                                      
                  $(reviews[i]).html(top);
                  $(reviews[i]).next().html(mid);
                  $(reviews[i]).next().next().html(bottom);
                                                
               };
                                                                           
            }, 
            error:function(){
               console.log('ajax 통신 실패');
            }
         });
      });
                                                         
                                                      
   </script>

   <div id="wrap">
   
      <!--헤더-->
      <jsp:include page="/views/commons/header.jsp" />
      <!--컨테이너 블럭-->
      <div id="container">


         <!--베너(케로셀)-->
         <div id="topBanner">
            <div id="carousel">
               <div id="carouselExampleIndicators" class="carousel slide h-100"
                  data-bs-ride="carousel">
                  <div class="carousel-indicators h-100">
                     <button type="button" data-bs-target="#carouselExampleIndicators"
                        data-bs-slide-to="0" class="active" aria-current="true"
                        aria-label="Slide 1"></button>
                     <button type="button" data-bs-target="#carouselExampleIndicators"
                        data-bs-slide-to="1" aria-label="Slide 2"></button>
                     <button type="button" data-bs-target="#carouselExampleIndicators"
                        data-bs-slide-to="2" aria-label="Slide 3"></button>
                  </div>
                  <div class="carousel-inner h-100">
                     <div class="carousel-item active h-100">
                        <img src="/assets/img/carousel1.jpg"
                           class="d-block w-100 h-100" alt="...">
                        <div class="carousel-caption">
                                       <h3>우리동네 업체 정보</h3>
                                       <h3>견적 가격 까지</h3>
                                       <h3>바로 확인하세요</h3>
                                       <p>청소 업체 비교 플랫폼 클릭N클린</p>
>>>>>>> 307c70ecf227dc820f54ed545c325fde4beec3d2
                                </div>
                     </div>
                     <div class="carousel-item h-100">
                        <img src="/assets/img/carousel2.jpg"
                           class="d-block w-100 h-100" alt="...">
                        <div class="carousel-caption">
                                       <h3>A/S 걱정없이</h3>
                                       <h3>청소업체를 예약해보세요 </h3>
                                       <p>간편하게 예약하고, 문제가 있다면 즉시 처리</p>
                                </div>
                     </div>
                     <div class="carousel-item h-100">
                        <img src="/assets/img/carousel3.jpg"
                           class="d-block w-100 h-100" alt="...">
                        <div class="carousel-caption">
                                       <h3>청소업체 리스트로</h3>
                                       <h3>실패없는 청소 업체를 찾아보세요 </h3>
                                       <p>10,900개의 후기를 별점, 리뷰수로 분석했어요</p>
                                </div>
<<<<<<< HEAD
							</div>
						</div>
						<button class="carousel-control-prev h-100" type="button"
							data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
							<span class="carousel-control-prev-icon h-100" aria-hidden="true"></span>
							<span class="visually-hidden h-100">Previous</span>
						</button>
						<button class="carousel-control-next h-100" type="button"
							data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
							<span class="carousel-control-next-icon h-100" aria-hidden="true"></span>
							<span class="visually-hidden h-100">Next</span>
						</button>
					</div>

				</div>
			</div>
			<!--컨텐츠-->
			<div id="content">
				<div id="processguide">
					<div id="processguide_text">
						<br> <br>

						<h2>마음에 들었다면 예약까지 한번에!</h2>
						<p>신청까지 단 30초, 내 조건에 딱 맞는 업체 상세 정보과 견적 제공</p>
					</div>
					<div id="processguide_img">
						<ul>
							<li>
								<p class="processguide_img"></p>
								<dl>
									<dt>정보입력</dt>
									<dd>30초면 작성완료!</dd>
								</dl>
							</li>
							<li>
								<p align='center' class="processguide_img"></p>
								<dl>
									<dt>업체비교</dt>
									<dd>주변업체 비교견적 제공</dd>
								</dl>
							</li>
							<li>
								<p class="processguide_img"></p>
								<dl>
									<dt>청소예약</dt>
									<dd>간편하게 업체와 직접 예약!</dd>
								</dl>
							</li>
						</ul>
					</div>
				</div>
				<div id="company_clean_info">
					<div class="inner_title">
						<br>
						<h2>견적 확인 전에 클릭N클린이 궁금하다면?</h2>
					</div>
					<ul>
						<li><a href="/company/selectAllCompanyList.do">우리 동네 업체 찾기</a></li>
						<li><a href="/views/info/cleanType.jsp">청소 항목&범위 소개</a></li>
					</ul>


				</div>
				<div id="review">
					<div class="inner_title">
						<h2>실사용자가 작성한 솔직한 리뷰</h2>
						<a href="/company/selectAllCompanyList.do"> 후기 더보기 > </a>
					</div>
					<div id="review_inner">
						<div class="container-xl" id="review_center">
							<div class="carousel_inner" id="review_inner">
								<div class="col-md-13 mx-auto">
									<div id="myCarousel" class="carousel slide"
										data-bs-ride="carousel" data-interval="0">
										<!-- Carousel indicators -->
										<ol class="carousel-indicators" id="carousel-indicators">
											<li data-target="#myCarousel" data-slide-to="0"
												class="active"></li>
											<li data-target="#myCarousel" data-slide-to="1"></li>
											<li data-target="#myCarousel" data-slide-to="2"></li>
										</ol>

										<!-- Wrapper for carousel items -->
										<div class="carousel-inner">


											<div class="carousel-item active">

												<div class="row">

													<div class="col-sm-4">
														<div class="thumb-wrapper">
															 <div class="title">
=======
                     </div>
                  </div>
                  <button class="carousel-control-prev h-100" type="button"
                     data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                     <span class="carousel-control-prev-icon h-100" aria-hidden="true"></span>
                     <span class="visually-hidden h-100">Previous</span>
                  </button>
                  <button class="carousel-control-next h-100" type="button"
                     data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                     <span class="carousel-control-next-icon h-100" aria-hidden="true"></span>
                     <span class="visually-hidden h-100">Next</span>
                  </button>
               </div>

            </div>
         </div>
         <!--컨텐츠-->
         <div id="content">
            <div id="processguide">
               <div id="processguide_text">
                  <br> <br>

                  <h2>마음에 들었다면 예약까지 한번에!</h2>
                  <p>신청까지 단 30초, 내 조건에 딱 맞는 업체 상세 정보과 견적 제공</p>
               </div>
               <div id="processguide_img">
                  <ul>
                     <li>
                        <p class="processguide_img"></p>
                        <dl>
                           <dt>정보입력</dt>
                           <dd>30초면 작성완료!</dd>
                        </dl>
                     </li>
                     <li>
                        <p align='center' class="processguide_img"></p>
                        <dl>
                           <dt>업체비교</dt>
                           <dd>주변업체 비교견적 제공</dd>
                        </dl>
                     </li>
                     <li>
                        <p class="processguide_img"></p>
                        <dl>
                           <dt>청소예약</dt>
                           <dd>간편하게 업체와 직접 예약!</dd>
                        </dl>
                     </li>
                  </ul>
               </div>
            </div>
            <div id="company_clean_info">
               <div class="inner_title">
                  <br>
                  <h2>견적 확인 전에 클릭N클린이 궁금하다면?</h2>
               </div>
               <ul>
                  <li><a href="/company/selectAllCompanyList.do">우리 동네 업체 찾기</a></li>
                  <li><a href="/views/info/cleanType.jsp">청소 항목&범위 소개</a></li>
               </ul>


            </div>
            <div id="review">
               <div class="inner_title">
                  <h2>실사용자가 작성한 솔직한 리뷰</h2>
                  <a href="/company/selectAllCompanyList.do"> 후기 더보기 > </a>
               </div>
               <div id="review_inner">
                  <div class="container-xl" id="review_center">
                     <div class="carousel_inner" id="review_inner">
                        <div class="col-md-13 mx-auto">
                           <div id="myCarousel" class="carousel slide"
                              data-bs-ride="carousel" data-interval="0">
                              <!-- Carousel indicators -->
                              <ol class="carousel-indicators" id="carousel-indicators">
                                 <li data-target="#myCarousel" data-slide-to="0"
                                    class="active"></li>
                                 <li data-target="#myCarousel" data-slide-to="1"></li>
                                 <li data-target="#myCarousel" data-slide-to="2"></li>
                              </ol>

                              <!-- Wrapper for carousel items -->
                              <div class="carousel-inner">


                                 <div class="carousel-item active">

                                    <div class="row">

                                       <div class="col-sm-4">
                                          <div class="thumb-wrapper">
                                              <div class="title">
                                                                <h4 class='top'></h4>

                                                                <p  class='mid'> </p>
                                                        

                                                                <p  class='bottom'></p>

                                                            </div>
                                          </div>
                                       </div>

                                       <div class="col-sm-4">
                                          <div class="thumb-wrapper">
                                              <div class="title">
>>>>>>> 307c70ecf227dc820f54ed545c325fde4beec3d2
                                                                <h4 class='top'></h4>

                                                                <p  class='mid'> </p>
                                                        

                                                                <p  class='bottom'></p>

                                                            </div>
<<<<<<< HEAD
														</div>
													</div>

													<div class="col-sm-4">
														<div class="thumb-wrapper">
															 <div class="title">
=======
                                          </div>
                                       </div>

                                       <div class="col-sm-4">
                                          <div class="thumb-wrapper">
                                              <div class="title">
>>>>>>> 307c70ecf227dc820f54ed545c325fde4beec3d2
                                                                <h4 class='top'></h4>

                                                                <p  class='mid'> </p>
                                                        

                                                                <p  class='bottom'></p>

                                                            </div>
<<<<<<< HEAD
														</div>
													</div>

													<div class="col-sm-4">
														<div class="thumb-wrapper">
															 <div class="title">
=======
                                          </div>
                                       </div>
                                    </div>
                                 </div>


                                 <div class="carousel-item">

                                    <div class="row">

                                       <div class="col-sm-4">
                                          <div class="thumb-wrapper">
                                              <div class="title">
>>>>>>> 307c70ecf227dc820f54ed545c325fde4beec3d2
                                                                <h4 class='top'></h4>

                                                                <p  class='mid'> </p>
                                                        

                                                                <p  class='bottom'></p>

                                                            </div>
<<<<<<< HEAD
														</div>
													</div>
												</div>
											</div>


											<div class="carousel-item">

												<div class="row">

													<div class="col-sm-4">
														<div class="thumb-wrapper">
															 <div class="title">
=======
                                          </div>
                                       </div>

                                       <div class="col-sm-4">
                                          <div class="thumb-wrapper">
                                              <div class="title">
                                                                <h4 class='top'></h4>

                                                                <p  class='mid'> </p>
                                                        

                                                                <p  class='bottom'></p>

                                                            </div>
                                          </div>
                                       </div>

                                       <div class="col-sm-4">
                                          <div class="thumb-wrapper">
                                              <div class="title">
>>>>>>> 307c70ecf227dc820f54ed545c325fde4beec3d2
                                                                <h4 class='top'></h4>

                                                                <p  class='mid'> </p>
                                                        

                                                                <p  class='bottom'></p>

                                                            </div>
<<<<<<< HEAD
														</div>
													</div>

													<div class="col-sm-4">
														<div class="thumb-wrapper">
															 <div class="title">
                                                                <h4 class='top'></h4>

                                                                <p  class='mid'> </p>
                                                        

                                                                <p  class='bottom'></p>

                                                            </div>
														</div>
													</div>

													<div class="col-sm-4">
														<div class="thumb-wrapper">
															 <div class="title">
                                                                <h4 class='top'></h4>

                                                                <p  class='mid'> </p>
                                                        

                                                                <p  class='bottom'></p>

                                                            </div>
														</div>
													</div>
												</div>
											</div>


											<div class="carousel-item">

												<div class="row">

													<div class="col-sm-4">
														<div class="thumb-wrapper">
															 <div class="title">
                                                                <h4 class='top'></h4>

                                                                <p  class='mid'> </p>
                                                        

                                                                <p  class='bottom'></p>

                                                            </div>
														</div>
													</div>

													<div class="col-sm-4">
														<div class="thumb-wrapper">
															 <div class="title">
                                                                <h4 class='top'></h4>

                                                                <p  class='mid'> </p>
                                                        

                                                                <p  class='bottom'></p>

                                                            </div>
														</div>
													</div>

													<div class="col-sm-4">
														<div class="thumb-wrapper">
															 <div class="title">
                                                                <h4 class='top'></h4>

                                                                <p  class='mid'> </p>
                                                        

                                                                <p  class='bottom'></p>

                                                            </div>
														</div>
													</div>
												</div>
											</div>


										</div>



										<!-- Carousel controls -->
										<a class="carousel-control-prev" id="carousel-control-prev"
											href="#myCarousel" data-slide="prev"> <i
											class="fa fa-angle-left"></i>
										</a> <a class="carousel-control-next" id="carousel-control-next"
											href="#myCarousel" data-slide="next"> <i
											class="fa fa-angle-right"></i>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>

		</div>

		<!--입점신청하기-->
		<div id="withClean">
			<a href="/views/company/companyJoin.jsp">
				<div id="withClean_inner">
					<div id=withClean_inner_center>
						<span>청소 잘하는 사장님! 클릭N클린과 함께 성장해 보세요</span> <span>입점 신청하기</span>
					</div>
				</div>
			</a>
		</div>
		
		<!--푸터-->
		<jsp:include page="/views/commons/footer.jsp" />



	</div>
=======
                                          </div>
                                       </div>
                                    </div>
                                 </div>


                                 <div class="carousel-item">

                                    <div class="row">

                                       <div class="col-sm-4">
                                          <div class="thumb-wrapper">
                                              <div class="title">
                                                                <h4 class='top'></h4>

                                                                <p  class='mid'> </p>
                                                        

                                                                <p  class='bottom'></p>

                                                            </div>
                                          </div>
                                       </div>

                                       <div class="col-sm-4">
                                          <div class="thumb-wrapper">
                                              <div class="title">
                                                                <h4 class='top'></h4>

                                                                <p  class='mid'> </p>
                                                        

                                                                <p  class='bottom'></p>

                                                            </div>
                                          </div>
                                       </div>

                                       <div class="col-sm-4">
                                          <div class="thumb-wrapper">
                                              <div class="title">
                                                                <h4 class='top'></h4>

                                                                <p  class='mid'> </p>
                                                        

                                                                <p  class='bottom'></p>

                                                            </div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>


                              </div>



                              <!-- Carousel controls -->
                              <a class="carousel-control-prev" id="carousel-control-prev"
                                 href="#myCarousel" data-slide="prev"> <i
                                 class="fa fa-angle-left"></i>
                              </a> <a class="carousel-control-next" id="carousel-control-next"
                                 href="#myCarousel" data-slide="next"> <i
                                 class="fa fa-angle-right"></i>
                              </a>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>

         </div>

      </div>

      <!--입점신청하기-->
      <div id="withClean">
         <a href="/views/company/companyJoin.jsp">
            <div id="withClean_inner">
               <div id=withClean_inner_center>
                  <span>청소 잘하는 사장님! 클릭N클린과 함께 성장해 보세요</span> <span>입점 신청하기</span>
               </div>
            </div>
         </a>
      </div>
      
      <!--푸터-->
      <jsp:include page="/views/commons/footer.jsp" />



   </div>
>>>>>>> 307c70ecf227dc820f54ed545c325fde4beec3d2


</body>
</html>