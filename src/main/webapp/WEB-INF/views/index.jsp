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

<body>
<jsp:include page="layout/header.jsp" flush="false"></jsp:include>
<jsp:include page="layout/sidebar.jsp" flush="false"></jsp:include>

<%-- <button onclick="savefn()">회원가입</button>--%>

<%--        <button onclick="saveFn()">회원가입</button>--%>
<%--        <button onclick="loginFn()">로그인</button>--%>
<form action="/index" method="get">

<input type="text" name="query" id="query">
<input type="submit" value="검색">
</form>

</body>
<script>

</script>
</html>
