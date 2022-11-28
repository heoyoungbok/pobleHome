<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-24
  Time: 오후 3:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="/resources/js/jquery.js"></script>
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">

<html>
<head>
    <title>myInFo.jsp</title>
</head>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<body>
<div class="container" id="boardDetail">
    <table class="table table-hover">
        <tr>
            <c:forEach items="${memberList}" var="member">
            <th>이름</th>
            <td>${member.memberName}</td>
        </tr>
        <tr>
            <th>아이디</th>
            <td>${member.memberLoginID}</td>
        </tr>
        <tr>
            <th>전화번호</th>
            <td>${member.memberMobile}</td>
        </tr>
        <tr>
            <th>나이</th>
            <td>${member.memberAge}</td>
        </tr>
        <tr>
            <th>주소</th>
            <td>${member.postcode}</td>
            <td>${member.roadAddress}</td>
            <td>${member.jibunAddress}</td>
            <td>${member.detailAddress}</td>
            </c:forEach>
        </tr>
        <th>프로필 사진</th>
        <c:if test="${board.storedFileName != null}">
            <tr>
                <td>
                    <img src="${pageContext.request.contextPath}/upload/${board.storedFileName}"
                         alt="" width="100" height="100">
                </td>
            </tr>
        </c:if>
            <td>
                <button onclick="memberUpdate()">수정</button>
            </td>
    </table>
</div>
</div>
</body>
<script>
    const memberUpdate = () => {
      location.href="/modify";
    }
</script>
</html>
