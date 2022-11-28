<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-24
  Time: 오전 8:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>boardList.jsp</title>
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/styles.css">
    <link rel="stylesheet" href="/resources/css/all.css">
</head>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<body>
<div class="rounded overflow-hidden shadow bg-white mx-2 w-full">
    <div class="px-6 py-2 border-b border-light-grey">
<%--        <div class="font-bold text-xl">Trending Categories</div>--%>
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
<div class="container">
    <ul class="pagination justify-content-center">
        <c:choose>
            <%-- 현재 페이지가 1페이지면 이전 글자만 보여줌 --%>
            <c:when test="${paging.page<=1}">
                <li class="page-item disabled">
                    <a class="page-link">[이전]</a>
                </li>
            </c:when>
            <%-- 1페이지가 아닌 경우에는 [이전]을 클릭하면 현재 페이지보다 1 작은 페이지 요청 --%>
            <c:otherwise>
                <li class="page-item">
                    <a class="page-link" href="/board/paging?page=${paging.page-1}">[이전]</a>
                </li>
            </c:otherwise>
        </c:choose>

        <%--  for(int i=startPage; i<=endPage; i++)      --%>
        <c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="i" step="1">
            <c:choose>
                <%-- 요청한 페이지에 있는 경우 현재 페이지 번호는 텍스트만 보이게 --%>
                <c:when test="${i eq paging.page}">
                    <li class="page-item active">
                        <a class="page-link">${i}</a>
                    </li>
                </c:when>

                <c:otherwise>
                    <li class="page-item">
                        <a class="page-link" href="/board/paging?page=${i}">${i}</a>
                    </li>
                </c:otherwise>
            </c:choose>
        </c:forEach>

        <c:choose>
            <c:when test="${paging.page>=paging.maxPage}">
                <li class="page-item disabled">
                    <a class="page-link">[다음]</a>
                </li>
            </c:when>
            <c:otherwise>
                <li class="page-item">
                    <a class="page-link" href="/board/paging?page=${paging.page+1}">[다음]</a>
                </li>
            </c:otherwise>
        </c:choose>
    </ul>
</div>
</body>
</html>
