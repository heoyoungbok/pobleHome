<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-01
  Time: 오후 1:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
</head>
<body>
<header class="p-3 text-bg-dark">
    <div class="container">
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
            <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
                <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>
            </a>

            <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                <li><a href="/" class="nav-link px-2 text-secondary">Home</a></li>
                <li><a href="/board/save" class="nav-link px-2 text-white">글작성</a></li>
                <li><a href="/board/paging" class="nav-link px-2 text-white">글목록</a></li>
<%--                <li><a href="#" class="nav-link px-2 text-white">FAQs</a></li>--%>
<%--                <li><a href="#" class="nav-link px-2 text-white">About</a></li>--%>
            </ul>

            <form action="/board/search" class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search">
                <div class="input-group">
                    <select name="type" id="form-select">
                    <option value="boardTitle" selected>제목</option>
                    <option value="boardWriter">작성자</option>
                    </select>
                <input type="search" name="q" class="form-control form-control-dark text-bg-dark" placeholder="Search..." aria-label="Search">
                    <button class="btn btn-outline-light"><i class="bi bi-balloon"></i></button>   <%-- 부트스트랩 아이콘 복사 --%>
                </div>
            </form>

            <div class="text-end">
                <c:choose>
                    <c:when test="${sessionScope.loginEmail != null}"> <%--로그인을 했으면    --%>
                        <span>${sessionScope.loginEmail}님</span>
                        <button type="button" onclick="logout()" class="btn btn-outline-light me-2">Logout</button>
                        <button type="button" onclick="myPageFF()" class="btn btn-outline-light me-2">마이페이지</button>
                    </c:when>
                    <c:otherwise>
                        <button type="button" onclick="login()" class="btn btn-outline-light me-2">Login</button>
                        <button type="button" onclick="Signup()" class="btn btn-warning">회원가입</button>
                    </c:otherwise>
                </c:choose>
                <c:if test="${sessionScope.loginEmail == 'admin'}">
                    <button type="button" onclick="memberListFn()">회원전체목록(관리자용)</button>
                </c:if>
            </div>
        </div>
    </div>
</header>
</body>
<script>
    const  login =() =>{
        location.href ="/login";
    }
    const logout = () => {
      location.href="/logout";
    }
    const Signup = () => {
      location.href="/save";
    }

    const myPageFF = () => {
      location.href="/myPage";
    }

    const memberListFn = () => {
      location.href="/memberList";
    }
</script>
</html>
