
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-23
  Time: 오후 1:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="keywords" content="tailwind,tailwindcss,tailwind css,css,starter template,free template,admin templates, admin template, admin dashboard, free tailwind templates, tailwind example">
    <!-- Css -->
    <link rel="stylesheet" href="/resources/css/styles.css">
    <link rel="stylesheet" href="/resources/css/all.css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,400i,600,600i,700,700i" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <title>myPage.jsp</title>
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">


</head>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<c:set value="${cooContractNo}" var="no" />
<body>

<div class="px-6 py-2 border-b border-light-grey">
    <div class="font-bold text-xl">내 판매실적</div>
</div>
<div class="table-responsive">
    <table class="table text-grey-darkest" id="write-form">
        <%--            <thead class="bg-grey-dark text-white text-normal">--%>
        <tr>
            <th scope="col">번호</th>
            <th scope="col">사진</th>
            <th scope="col">판매자</th>
            <th scope="col">제목</th>
            <th scope="col">판매가격</th>
            <th scope="col">조회수</th>
            <%--                <th scope="col">날짜</th>--%>
        </tr>
        <c:forEach items="${boardList}" var="board">
            <tr>
                <td>${board.id}</td>

                <c:if test="${board.storedFileName != null}">
                    <td>
                        <img src="${pageContext.request.contextPath}/upload/${board.storedFileName}"
                             alt="" width="100" height="100">
                    </td>
                </c:if>
                    <%--                <td>${board.boardFile}</td>--%>
                <td>${board.boardWriter}</td>
                <td><a href="/board?id=${board.id}&page=${paging.page}">${board.boardTitle}</a></td>
                <td>${board.boardTrade}</td>
                <td>${board.boardHits}</td>
                    <%--                    <td>${board.boardCreatedDate}</td>--%>
                    <%--                <td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${board.boardCreatedDate}"></fmt:formatDate></td>--%>
            </tr>
        </c:forEach>
        <%--            </thead>--%>
    </table>
</div>
</div>
<canvas id="lineChart" width="400" height="400"></canvas>
<%--<div class="mx-auto bg-grey-400">--%>
<%--    <!--Screen-->--%>
<%--    <div class="min-h-screen flex flex-col">--%>
<%--        <div class="flex flex-1 flex-col md:flex-row lg:flex-row mx-2">--%>

<%--            <!-- card -->--%>

<%--            <div class="rounded overflow-hidden shadow bg-white mx-2 w-full">--%>

<%--                <div class="table-responsive">--%>
<%--                    <table class="table text-grey-darkest">--%>
<%--&lt;%&ndash;                        <thead class="bg-grey-dark text-white text-normal">&ndash;%&gt;--%>
<%--                        <tr>--%>
<%--                            <th scope="col">#</th>--%>
<%--                            <th scope="col">Item</th>--%>
<%--                            <th scope="col">Last</th>--%>
<%--                            <th scope="col">Current</th>--%>
<%--                            <th scope="col">Change</th>--%>
<%--                        </tr>--%>
<%--                        </thead>--%>
<%--                        <tbody>--%>
<%--                        <tr>--%>
<%--                            <th scope="row">1</th>--%>
<%--                            <td>--%>
<%--                                <button class="bg-blue-500 hover:bg-blue-800 text-white font-light py-1 px-2 rounded-full">--%>
<%--                                    Twitter--%>
<%--                                </button>--%>
<%--                            </td>--%>
<%--                            <td>4500</td>--%>
<%--                            <td>4600</td>--%>
<%--                            <td>--%>
<%--                                <span class="text-green-500"><i class="fas fa-arrow-up"></i>5%</span>--%>
<%--                            </td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <th scope="row">2</th>--%>
<%--                            <td>--%>
<%--                                <button class="bg-primary hover:bg-primary-dark text-white font-light py-1 px-2 rounded-full">--%>
<%--                                    Facebook--%>
<%--                                </button>--%>
<%--                            </td>--%>
<%--                            <td>10000</td>--%>
<%--                            <td>3000</td>--%>
<%--                            <td>--%>
<%--                                <span class="text-red-500"><i class="fas fa-arrow-down"></i>65%</span>--%>
<%--                            </td>--%>
<%--                        </tr>--%>

<%--                        <tr>--%>
<%--                            <th scope="row">3</th>--%>
<%--                            <td>--%>
<%--                                <button class="bg-success hover:bg-success-dark text-white font-light py-1 px-2 rounded-full">--%>
<%--                                    Amazon--%>
<%--                                </button>--%>
<%--                            </td>--%>
<%--                            <td>10000</td>--%>
<%--                            <td>3000</td>--%>
<%--                            <td>--%>
<%--                                <span class="text-red-500"><i class="fas fa-arrow-down"></i>65%</span>--%>
<%--                            </td>--%>
<%--                        </tr>--%>

<%--                        <tr>--%>
<%--                            <th scope="row">4</th>--%>
<%--                            <td>--%>
<%--                                <button class="bg-blue-500 hover:bg-blue-800 text-white font-light py-1 px-2 rounded-full">--%>
<%--                                    Microsoft--%>
<%--                                </button>--%>
<%--                            </td>--%>
<%--                            <td>10000</td>--%>
<%--                            <td>3000</td>--%>
<%--                            <td>--%>
<%--                                <span class="text-green-500"><i class="fas fa-arrow-up"></i>65%</span>--%>
<%--                            </td>--%>
<%--                        </tr>--%>

<%--&lt;%&ndash;                        </tbody>&ndash;%&gt;--%>
<%--                    </table>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <!-- /card -->--%>

<%--        </div>--%>



<%--        <div class="flex flex-1">--%>

<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<%--<script>--%>
<%--$(document).ready(function() {--%>


<%--var chartLabels = []; // 받아올 데이터를 저장할 배열 선언--%>
<%--var chartData = [];--%>
<%--var month="";--%>

<%--var cooContractNo = '<c:out value="${no}"/>';--%>

<%--function createChart() {--%>

<%--const ctx = document.getElementById("canvas").getContext("2d");--%>
<%--LineChartDemo = Chart.Line(ctx, {--%>
<%--data : lineChartData,--%>
<%--options : {--%>
<%--scales : {--%>
<%--yAxes : [ {--%>
<%--ticks : {--%>
<%--beginAtZero : true--%>
<%--}--%>
<%--} ]--%>
<%--}--%>
<%--}--%>
<%--});--%>
<%--}--%>



<%--//selectList로 월을 선택해서 ajax로 받는다.--%>
<%--$('#selectMonth').change(function() {--%>
<%--var changeMonth = $('#selectMonth option:selected').val();--%>
<%--month = changeMonth;--%>
<%--console.log('month:'+month);--%>



<%--});--%>

<%--//버튼을 클릭하면 차트가 그려진다. createChart()함수를 안에다 선언해야지 차트값을 받더라...--%>
<%--$('#btn').click(function(){--%>

<%--chartLabels = [];--%>
<%--chartData=[];--%>

<%--//getJson으로 데이터--%>
<%--$.getJSON("./getDailyVisitor", {--%>
<%--cooContractNo : cooContractNo,--%>
<%--hits : ,--%>
<%--}, function(data) {--%>
<%--$.each(data, function(key, value) {--%>

<%--chartLabels.push(value.statsDate);--%>
<%--chartData.push(value.statsAmount);--%>
<%--});--%>

<%--lineChartData = {--%>
<%--labels : chartLabels,--%>
<%--datasets : [ {--%>
<%--label : "일별 방문자 수",--%>
<%--backgroundColor:"#bfdaf9",--%>
<%--borderColor: "#80b6f4",--%>
<%--pointBorderColor: "#80b6f4",--%>
<%--pointBackgroundColor: "#80b6f4",--%>
<%--pointHoverBackgroundColor: "#80b6f4",--%>
<%--pointHoverBorderColor: "#80b6f4",--%>
<%--fill: false,--%>
<%--borderWidth: 4,--%>
<%--data : chartData--%>
<%--} ]--%>

<%--}--%>
<%--createChart();--%>

<%--});--%>
<%--})--%>


<%--})--%>

<%--</script>--%>
<%--<div class="row">--%>

<%--    <div class="container">--%>



<%--        <div style="margin-top:20px; margin-left:80px">--%>
<%--            <select name="selectMonth" id="selectMonth">--%>

<%--                <option value="1">JAN</option>--%>
<%--                <option value="2">FEB</option>--%>
<%--                <option value="3">MAR</option>--%>
<%--                <option value="4">APR</option>--%>
<%--                <option value="5">MAY</option>--%>
<%--                <option value="6">JUN</option>--%>
<%--                <option value="7">JUL</option>--%>
<%--                <option value="8">AUG</option>--%>
<%--                <option value="9">SEP</option>--%>
<%--                <option value="10">OCT</option>--%>
<%--                <option value="11">NOV</option>--%>
<%--                <option value="12">DEC</option>--%>
<%--            </select>--%>
<%--            <button id="btn">보기</button>--%>
<%--        </div>--%>
<%--    </div>--%>



<%--    <div id="graph" style="width: 80%; margin: 30px;">--%>
<%--        <div>--%>
<%--            <canvas id="canvas" height="350" width="600"></canvas>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>

<%--</div>--%>






<%--            </aside>--%>
            <!--/Sidebar-->
            <!--Main-->
<%--            <main class="bg-white-300 flex-1 p-3 overflow-hidden">--%>

<%--                <div class="flex flex-col">--%>
<%--                    <!-- Stats Row Starts Here -->--%>
<%--                    <div class="flex flex-1 flex-col md:flex-row lg:flex-row mx-2">--%>
<%--&lt;%&ndash;                        <div class="shadow-lg bg-red-vibrant border-l-8 hover:bg-red-vibrant-dark border-red-vibrant-dark mb-2 p-2 md:w-1/4 mx-2">&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <div class="p-4 flex flex-col">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <a href="#" class="no-underline text-white text-2xl">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    $244&ndash;%&gt;--%>
<%--&lt;%&ndash;                                </a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <a href="#" class="no-underline text-white text-lg">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    Total Sales&ndash;%&gt;--%>
<%--&lt;%&ndash;                                </a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        </div>&ndash;%&gt;--%>

<%--                        <div class="shadow bg-info border-l-8 hover:bg-info-dark border-info-dark mb-2 p-2 md:w-1/4 mx-2">--%>
<%--                            <div class="p-4 flex flex-col">--%>
<%--                                <a href="#" class="no-underline text-white text-2xl">--%>
<%--                                    $199.4--%>
<%--                                </a>--%>
<%--                                <a href="#" class="no-underline text-white text-lg">--%>
<%--                                    Total Cost--%>
<%--                                </a>--%>
<%--                            </div>--%>
<%--                        </div>--%>

<%--                        <div class="shadow bg-warning border-l-8 hover:bg-warning-dark border-warning-dark mb-2 p-2 md:w-1/4 mx-2">--%>
<%--                            <div class="p-4 flex flex-col">--%>
<%--                                <a href="#" class="no-underline text-white text-2xl">--%>
<%--                                    900--%>
<%--                                </a>--%>
<%--                                <a href="#" class="no-underline text-white text-lg">--%>
<%--                                    Total Users--%>
<%--                                </a>--%>
<%--                            </div>--%>
<%--                        </div>--%>

<%--                        <div class="shadow bg-success border-l-8 hover:bg-success-dark border-success-dark mb-2 p-2 md:w-1/4 mx-2">--%>
<%--                            <div class="p-4 flex flex-col">--%>
<%--                                <a href="#" class="no-underline text-white text-2xl">--%>
<%--                                    500--%>
<%--                                </a>--%>
<%--                                <a href="#" class="no-underline text-white text-lg">--%>
<%--                                    Total Products--%>
<%--                                </a>--%>

<%--                            </div>--%>

<%--                        </div>--%>
<%--                    </div>--%>


</div>
<%--<form action="/board/Hits">--%>
<%--<input type="button" value="조회수 확인" >--%>
<%--</form>--%>



<%--<div id="chart_div">--%>

    <%--                                    차트를 만들 공간--%>
</div>
</body>
<%--<script src="/resources/js/main.js"></script>--%>

</body>
<script type="text/javascript">
    const ctx = document.getElementById("lineChart");
    const myChart = new Chart(ctx,{
        type: 'bar',
        url:"/board/countTurtle",
        data:{
            labels:["조회수"],
            datasets: [{
                data:[${hits}],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)'
                ],
                borderColor: [
                    'rgba(255,99,132,1)',
                    'rgba(54, 162, 235, 1)'
                ],
                borderWidth: 1
            }
            ]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero:true
                    }
                }]
            }
        }
    });
<%--<script type="text/javascript">--%>
<%--    $(document).ready(function(){--%>
<%--        getGraph();--%>
<%--    });--%>

<%--    function getGraph(){--%>
<%--        let timeList = [];--%>
<%--        let posList = [];--%>

<%--        $.ajax({--%>
<%--            url:"/board/findHits",--%>
<%--            type:"get",--%>
<%--            data:{hits:"${boardHits}", pos_type:"거북목"},--%>
<%--            dataType:"json",--%>
<%--            success:function(data){--%>
<%--                // console.log(data[0].pos_count);--%>
<%--                // 그래프로 나타낼 자료 리스트에 담기--%>
<%--                for (let i = 0; i<data.length;i++){--%>
<%--                    timeList.push(data[i].pos_time);--%>
<%--                    posList.push(data[i].pos_count);--%>
<%--                }--%>
<%--                // console.log(timeList);--%>
<%--                // console.log(posList);--%>
<%--                // 그래프--%>
<%--                new Chart(document.getElementById("line-chart"), {--%>
<%--                    type: 'line',--%>
<%--                    data: {--%>
<%--                        labels: timeList, // X축--%>
<%--                        datasets: [{--%>
<%--                            data: posList, // 값--%>
<%--                            label: "거북목",--%>
<%--                            borderColor: "#3e95cd",--%>
<%--                            fill: false--%>
<%--                        }--%>
<%--                        ]--%>
<%--                    },--%>
<%--                    options: {--%>
<%--                        title: {--%>
<%--                            display: true,--%>
<%--                            text: '주간 거북목'--%>
<%--                        }--%>
<%--                    }--%>
<%--                }); //그래프--%>
<%--            },--%>
<%--            error:function(){--%>
<%--                alert("실패");--%>
<%--            }--%>

<%--        }) // ajax--%>
<%--    } // getGraph--%>
    <%--<script>--%>
    <%--   const ctx = document.getElementById("logChart");--%>
    <%--    const myChart = new Chart(ctx, {--%>
    <%--        type: 'bar',--%>
    <%--        data: {--%>
    <%--            labels: ["조회수"],--%>
    <%--            datasets: [{--%>


    <%--                data: ['${hits}'], //컨트롤러에서 모델로 받아온다.--%>
    <%--                backgroundColor: [--%>
    <%--                    'rgba(255, 99, 132, 0.2)',--%>
    <%--                    'rgba(54, 162, 235, 0.2)'--%>

    <%--                ],--%>
    <%--                borderColor: [--%>
    <%--                    'rgba(255,99,132,1)',--%>
    <%--                    'rgba(54, 162, 235, 1)'--%>

    <%--                ],--%>
    <%--                borderWidth: 1--%>
    <%--            }--%>
    <%--            ]--%>
    <%--        },--%>
    <%--        options: {--%>
    <%--            scales: {--%>
    <%--                yAxes: [{--%>
    <%--                    ticks: {--%>
    <%--                        beginAtZero:true--%>
    <%--                    }--%>
    <%--                }]--%>
    <%--            }--%>
    <%--        }--%>
    <%--    });--%>
<%--<script type="text/javascript">--%>
<%--    //구글 차트 라이브러리 로딩--%>
<%--    google.load("visualization", "1",{--%>
<%--        "packages":["corechart"]--%>
<%--    });--%>
<%--    //Callback : 구글 차트 로딩이 완료가 된 후에 drawChar라는 함수를 실행(파라미터는 없음)--%>
<%--    //responseText : json 데이터를 텍스트로 읽어들임--%>
<%--    //JSON.stringify(j/s객체) : javascript 객체를 json 데이터를 읽어들임--%>
<%--    google.setOnLoadCallback(drawChart);--%>
<%--    function drawChart() {--%>
<%--        const jsonData = $.ajax({--%>
<%--            url: "/board/Hits",--%>
<%--            dataType: "json",--%>
<%--            async: false--%>
<%--        }).responseText;--%>

<%--        console.log("jsonData : " + jsonData);--%>

<%--        //1) 데이터 테이블 생성--%>
<%--       const data = new google.visualization.DataTable(jsonData);--%>

<%--        //2) 차트 출력할 영역 지정--%>
<%--        const chart = new google.visualization.ColumnChart(document.getElementById("chart_div"));--%>
<%--        //1) + 2) => 차트 출력! 차트객체.draw(데이터테이블, 옵션)--%>
<%--        //curveType : "function" => 곡선--%>
<%--        chart.draw(data, {--%>
<%--            title: "차트 예제",--%>
<%--            curveType: "function",--%>
<%--            width: 600,--%>
<%--            height: 440--%>
<%--        })--%>
<%--    }--%>
</script>

</html>