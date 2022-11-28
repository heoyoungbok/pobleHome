<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-22
  Time: 오후 2:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>memberList.jsp</title>
    <script src="/resources/js/jquery.js"></script>
</head>
<body>
<jsp:include page="layout/header.jsp" flush="false"></jsp:include>
<div class="container" id="list">
    <table class="table table-striped table-hover text-center">
        <tr>
            <th>이름</th>
            <th>아이디</th>
            <th>전화번호</th>
            <th>나이</th>
            <th>주소</th>
        </tr>
        <c:forEach items="${memberList}" var="member">
            <tr>
                <td>${member.memberName}</td>
                <td>${member.memberLoginID}</td>
                <td>${member.memberPassword}</td>
                <td>${member.memberMobile}</td>
                <td>${member.memberAge}</td>
                <td>${member.postcode}</td>
                <td>${member.roadAddress}</td
                <td>${member.jibunAddress}</td>
                <td>${member.detailAddress}</td>

            </tr>

        </c:forEach>
    </table>

</div>



</body>
</html>
