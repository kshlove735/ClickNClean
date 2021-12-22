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
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>

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
        width: 1344px;
        margin: 0 auto;
        text-align: center;

    }

    .contentHead {
        width: 100%;
        height: 300px;
    }

    #contentBody {
        width: 100%;
        height: 85%;
        padding-left: 130px;
        padding-right: 130px;
        padding-bottom: 80px;
    }

    #contentTitle {
        display: block;
        width: 100%;
        margin-top: 100px;
        font-size: 50px;
        color: #0E76B3;
        font-weight: bold;
        text-align: center;

    }

    #condition1 {
        width: 100%;

        margin-bottom: 100px;
        padding: 50px;
        border-radius: 10px;
        border: 1px solid #B6E3FC;
    }

    #condition2 {
        width: 100%;
        margin-bottom: 100px;
        padding: 50px;
        border-radius: 10px;
        border: 1px solid #B6E3FC;
    }

    #condition3 {
        width: 100%;
        height: 400px;
        margin-bottom: 100px;
        padding: 50px;
        border-radius: 10px;
        border: 1px solid #B6E3FC;
    }

    #condition4 {
        width: 100%;
        height: 600px;
        margin-bottom: 100px;
        padding: 50px;
        border-radius: 10px;
        border: 1px solid #B6E3FC;
    }

    #footer {
        width: 100%;
        height: 300px;
    }

    .conditionName {
        width: 100%;
        height: 20%;
        text-align: center;
        font-size: 40px;
        margin-bottom: 10px;
    }

  	#bodycss {
        font-family: "나눔스퀘어 ";
    }

    #toInfoBtn {
        background-color: #72CCFF;
        font-size: 25px;
        color: white;
        border-radius: 10px;
        border: 1px solid #B6E3FC;
    }

    .cleanTypeArea {
        height: 120px;
        margin-bottom: 20px;
        border: 1px solid #707070;
        font-size: 40px;
        padding-top: 10px;
    }

    .cleanType {
        width: 60px;
        height: 60px;
        position: relative;
        right: -200px;
        top: 13px;
    }

    .houseTypeSize {
        width: 100%;
        height: 20%;
        margin-bottom: 70px;

    }

    .areaArea {
        float: left;
        width: 450px;
        position: relative;
        left: 40px;
        top: 20px;
    }

    #sandbox-container {
        border: 1px solid black;
        height: 100px;
    }
</style>

<body id="bodycss">
    <div id="header">

    </div>
    <div id="contentArea">
        <div class="contentHead">
            <span id="contentTitle">청소 조건 선택</span>
        </div>
        <div id="contentBody">
            <form action="/contract/selectConditionCompany.do" method="post">
                <div id="condition1">
                    <div class="conditionName">
                        청소 종류
                    </div>
                    <div class="cleanTypeArea">
                        <span class="cleanTypeName">1. 이사 청소 </span>
                        <input type="radio" class="cleanType" name="cleanType" value="이사청소" />
                    </div>
                    <div class="cleanTypeArea">
                        2. 입주 청소 <input type="radio" class="cleanType" name="cleanType" value="입주청소" />
                    </div>
                    <div class="cleanTypeArea">
                        3. 부분 청소 <input type="radio" class="cleanType" name="cleanType" value="부분청소" />
                    </div>
                </div>
                <div id="condition2">
                    <div class="conditionName">
                        청소 장소/평수
                    </div>
                    <div class="houseTypeSize">
                        <select name="houseType" style="width: 70%; height:120px; font-size: 50px;
                       text-align: center;">
                            <option>
                               	 아파트
                            </option>
                            <option>
                           	     빌라
                            </option>
                            <option>
                           	     전원주택
              	              </option>
                            <option>
                             	   원룸
              	              </option>
                            <option>
                             	   오피스텔
                 	          </option>
                        </select>
                    </div>
                    <div class="houseTypeSize">
                        <select name="houseSize" style="width: 70%; height:120px; font-size: 50px;
                       text-align: center;">
                            <option>
                            10평이하
                            </option>
                            <%for(int i=11;i<71;i++){ %>
                            <option>
                                <%=i %>
                            </option>
							<%} %>
							<option>
                            71평이상
                            </option>
                        </select>

                    </div>
                </div>
                <div id="condition3">
                    <div class="conditionName">
                        청소 지역
                    </div>
                    <div class="areaArea">
                        <select name="area1" style="width: 70%; height:120px; font-size: 50px;
                       text-align: center;">
                            <option>서울</option>
                            <option>인천</option>
                            <option>세종</option>
                            <option>대전</option>
                            <option>대구</option>
                            <option>광주</option>
                            <option>울산</option>
                            <option>부산</option>
                            <option>경기도</option>
                            <option>충청북도</option>
                            <option>충청남도</option>
                            <option>전라북도</option>
                            <option>전라남도</option>
                            <option>경상북도</option>
                            <option>경상남도</option>
                        </select>
                    </div>
                    <div class="areaArea">
                        <select name="area2" style="width: 70%; height:120px; font-size: 50px;
                       text-align: center;">
                            <option>
                                10-70평반복문
                            </option>
                        </select>
                    </div>
                </div>
                <div id="condition4">
                    <div class="conditionName">
                        청소 날짜
                    </div>

                    <div id="datepicker"></div>

                </div>

                <input type="submit" style="width: 500px; height: 77px;" id="toInfoBtn" value="업체 프로필 보기">
            </form>
        </div>
        <script>
            $(function() {
                $("#datepicker").datepicker();
            });

            $('#sandbox-container').datepicker({
            format: "MM/dd/yyyy",
                weekStart :  0,
                startDate : "-infinity",
                endDate : "+infinity",
                maxViewMode : 0,
                todayBtn : "linked",
                multidate : false,
                multidateSeparator : ","
            });
        </script>
       
    </div>
    <div id="footer">

    </div>
</body></html>