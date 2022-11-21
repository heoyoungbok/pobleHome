<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-17
  Time: 오전 9:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <meta name="viewport" content="width=device-width">
    <script  src="https://code.jquery.com/jquery-3.5.0.js"></script>
    <title>Simple Sidebar - Start Bootstrap Template</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <link href="/resources/css/styles.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
</head>
<style>
 body {
     margin: 0px;
     padding: 0px;
 }
 .big-box{
     width: 100%;
     height: 100vh;
     border-top: 1px solid black;
 }
</style>
<body>

<div class="d-flex" id="wrapper">

    <!-- Sidebar-->
    <div class="border-end bg-white" id="sidebar-wrapper">
        <div class="sidebar-heading border-bottom bg-light">Start Bootstrap</div>
        <div class="list-group list-group-flush">
            <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">Dashboard</a>
            <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">Shortcuts</a>
            <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">Overview</a>
            <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">Events</a>
            <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">Profile</a>
            <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">Status</a>
        </div>
    </div>
    <!-- Page content wrapper-->


    <div id="page-content-wrapper">

        <table class="table table-striped table-hover">

        <c:forEach items="${index}" var="cart">

            <div>

            <tr>
<%--                <td>${cart.image}<td>--%>
              <td>
                <a href="${cart.link}"> <img src="${cart.image}" width="140" height="140" alt="" ></a>
            </td>

                <td> ${cart.title} <td>
                <td> ${cart.lprice} <td>

            <tr>

<%--                <div class="big-box"><h2>page2</h2></div>--%>
            </div>

            </c:forEach>
        </table>
<%--        <div class="big-box"><h1>page1</h1></div>--%>
        <div class="box">page1</div>
        <div class="box">page2</div>
            <!-- Top navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">

        </nav>
        <!-- Page content-->


    </div>

</div>
<script>
    // let page= 2;
    // $(window).onscroll(function (){
    //     if ($(window).scrollTop() == $(document).height()-$(window).height()){
    //         console.log(++page);
    //         $("body").append('<div class="big-box"><h1>page'+page+'</h1></div>');
    //     }
    // });
    
    let count =2;
    window.onscroll = function (){
        if ((window.innerHeight + window.scrollY) >= document.body.offsetHeight){
            const toadd = document.createElement("div");
            toadd.classList.add("box");
            ++count;
            toadd.textContent = $(count);
            document.querySelector('section').appendChild(toadd);
        }
    }
</script>

<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>



</body>
</html>
