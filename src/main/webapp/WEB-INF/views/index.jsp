<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-11
  Time: 오전 11:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">

    <title>index.jsp</title>

</head>
<style>
    /*!*.big-box {*!*/
    /*!*    width: 100%;*!*/
    /*!*    background-color: gray;*!*/
    /*!*    height: 100vh;*!*/
    /*!*    border-top: 1px solid black;*!*/
    /*!*}*!*/

    /*!*body {*!*/
    /*!*    margin: 0px;*!*/
    /*!*    padding: 0px;*!*/
    /*!*}*!*/
    /*{*/
    /*@import url(//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css);*/
    /*}*/



    /*@import url(https://fonts.googleapis.com/css?family=Titillium+Web:300);*/
    /*.fa-2x {*/
    /*    font-size: 2em;*/
    /*}*/
    /*.fa {*/
    /*    position: relative;*/
    /*    display: table-cell;*/
    /*    width: 60px;*/
    /*    height: 36px;*/
    /*    text-align: center;*/
    /*    vertical-align: middle;*/
    /*    font-size:20px;*/
    /*}*/


    /*.main-menu:hover,nav.main-menu.expanded {*/
    /*    width:250px;*/
    /*    overflow:visible;*/
    /*}*/

    /*.main-menu {*/
    /*    background:#212121;*/
    /*    border-right:1px solid #e5e5e5;*/
    /*    position:absolute;*/
    /*    top:0;*/
    /*    bottom:0;*/
    /*    height:100%;*/
    /*    left:0;*/
    /*    width:60px;*/
    /*    overflow:hidden;*/
    /*    -webkit-transition:width .05s linear;*/
    /*    transition:width .05s linear;*/
    /*    -webkit-transform:translateZ(0) scale(1,1);*/
    /*    z-index:1000;*/
    /*}*/

    /*.main-menu>ul {*/
    /*    margin:7px 0;*/
    /*}*/

    /*.main-menu li {*/
    /*    position:relative;*/
    /*    display:block;*/
    /*    width:250px;*/
    /*}*/

    /*.main-menu li>a {*/
    /*    position:relative;*/
    /*    display:table;*/
    /*    border-collapse:collapse;*/
    /*    border-spacing:0;*/
    /*    color:#999;*/
    /*    font-family: arial;*/
    /*    font-size: 14px;*/
    /*    text-decoration:none;*/
    /*    -webkit-transform:translateZ(0) scale(1,1);*/
    /*    -webkit-transition:all .1s linear;*/
    /*    transition:all .1s linear;*/

    /*}*/

    /*.main-menu .nav-icon {*/
    /*    position:relative;*/
    /*    display:table-cell;*/
    /*    width:60px;*/
    /*    height:36px;*/
    /*    text-align:center;*/
    /*    vertical-align:middle;*/
    /*    font-size:18px;*/
    /*}*/

    /*.main-menu .nav-text {*/
    /*    position:relative;*/
    /*    display:table-cell;*/
    /*    vertical-align:middle;*/
    /*    width:190px;*/
    /*    font-family: 'Titillium Web', sans-serif;*/
    /*}*/

    /*.main-menu>ul.logout {*/
    /*    position:absolute;*/
    /*    left:0;*/
    /*    bottom:0;*/
    /*}*/

    /*.no-touch .scrollable.hover {*/
    /*    overflow-y:hidden;*/
    /*}*/

    /*.no-touch .scrollable.hover:hover {*/
    /*    overflow-y:auto;*/
    /*    overflow:visible;*/
    /*}*/

    /*a:hover,a:focus {*/
    /*    text-decoration:none;*/
    /*}*/

    /*nav {*/
    /*    -webkit-user-select:none;*/
    /*    -moz-user-select:none;*/
    /*    -ms-user-select:none;*/
    /*    -o-user-select:none;*/
    /*    user-select:none;*/
    /*}*/

    /*nav ul,nav li {*/
    /*    outline:0;*/
    /*    margin:0;*/
    /*    padding:0;*/
    /*}*/
    /*.main-menu li:hover>a,nav.main-menu li.active>a,.dropdown-menu>li>a:hover,.dropdown-menu>li>a:focus,.dropdown-menu>.active>a,.dropdown-menu>.active>a:hover,.dropdown-menu>.active>a:focus,.no-touch .dashboard-page nav.dashboard-menu ul li:hover a,.dashboard-page nav.dashboard-menu ul li.active a {*/
    /*    color:#fff;*/
    /*    background-color:#5fa2db;*/
    /*}*/
    /*.area {*/
    /*    float: left;*/
    /*    background: #e2e2e2;*/
    /*    width: 100%;*/
    /*    height: 100%;*/
    /*}*/
    /*@font-face {*/
    /*    font-family: 'Titillium Web';*/
    /*    font-style: normal;*/
    /*    font-weight: 300;*/
    /*    src: local('Titillium WebLight'), local('TitilliumWeb-Light'), url(http://themes.googleusercontent.com/static/fonts/titilliumweb/v2/anMUvcNT0H1YN4FII8wpr24bNCNEoFTpS2BTjF6FB5E.woff) format('woff');*/
    /*}*/


</style>
<body>
<jsp:include page="layout/header.jsp" flush="false"></jsp:include>
<jsp:include page="layout/sidebar.jsp" flush="false"></jsp:include>

<%-- <button onclick="savefn()">회원가입</button>--%>

<%--        <button onclick="saveFn()">회원가입</button>--%>
<%--        <button onclick="loginFn()">로그인</button>--%>

<%--<nav>--%>
<%--    <ul>--%>
<%--        <li>--%>
<%--            <div class="home-icon">--%>
<%--                <div class="roof">--%>
<%--                    <div class="roof-edge"></div>--%>
<%--                </div>--%>
<%--                <div class="front"></div>--%>
<%--            </div>--%>
<%--        </li>--%>
<%--        <li>--%>
<%--            <div class="about-icon">--%>
<%--                <div class="head">--%>
<%--                    <div class="eyes"></div>--%>
<%--                    <div class="beard"></div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </li>--%>
<%--        <li>--%>
<%--            <div class="work-icon">--%>
<%--                <div class="paper"></div>--%>
<%--                <div class="lines"></div>--%>
<%--                <div class="lines"></div>--%>
<%--                <div class="lines"></div>--%>
<%--            </div>--%>
<%--        </li>--%>
<%--        <li>--%>
<%--            <div class="mail-icon">--%>
<%--                <div class="mail-base">--%>
<%--                    <div class="mail-top"></div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </li>--%>
<%--    </ul>--%>
<%--</nav>--%>

<%--<section>--%>
<%--    <h1>3d rotating navigation</h1>--%>
<%--    <h2>+ CSS Icons</h2>--%>
<%--</section>--%>

<%--<div class="big-box"><h1>Page 1</h1></div>--%>
<%--<div class="big-box"><h1>Page 2</h1></div>--%>

</body>
<script>

    // var page = 2;
    //
    // $(window).scroll(function() {
    //     if ($(window).scrollTop() == $(document).height() - $(window).height()) {
    //         console.log(++page);
    //         $("body").append('<div class="big-box"><h1>Page ' + page + '</h1></div>');
    //
    //     }
    // });
</script>
</html>
