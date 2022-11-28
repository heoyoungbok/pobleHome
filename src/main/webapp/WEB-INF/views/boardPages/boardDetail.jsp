<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-24
  Time: 오후 1:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>boardDetail.jsp</title>
    <script src="/resources/js/jquery.js"></script>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
</head>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<body>
<div class="container" id="boardDetail">
    <table class="table table-hover">
        <tr>
            <th>번호</th>
            <td>${board.id}</td>
        </tr>
        <tr>
            <th>날짜</th>
            <td>${board.boardCreatedDate}</td>
        </tr>
        <tr>
            <th>판매자</th>
            <td>${board.boardWriter}</td>
        </tr>
        <tr>
            <th>제목</th>
            <td>${board.boardTitle}</td>
        </tr>
        <tr>
            <th>내용 </th>
            <td>${board.boardContents}</td>
        </tr>
        <c:if test="${board.storedFileName != null}">
            <tr>
                <td>
                    <img src="${pageContext.request.contextPath}/upload/${board.storedFileName}"
                    alt="" width="100" height="100">
                </td>
            </tr>
        </c:if>
        <c:if test="${sessionScope.loginID == board.boardWriter}">
            <td>
                <button onclick="updateFn()">수정</button>
                <button onclick="deleteFn()">삭제</button>
            </td>
        </c:if>
    </table>
</div>
<div class="container mt-5" id="comment-write" >
    <div class="input-group-sm mb-3">
        <div class="form-floating">
            <input type="text" id="commentWriter" value="${sessionScope.loginEmail}" class="form-control" placeholder="작성자">
            <label for="commentWriter">작성자</label>
        </div>
        <div class="form-floating">
            <input type="text" id="commentContents" class="form-control" placeholder="내용">
            <label for="commentContents">내용</label>
        </div>
        <button id="comment-write-btn" class="btn btn-secondary" onclick="commentWrite()">댓글작성</button>
        <%-- commentWrite 버튼을 클릭하면 작성자, 내용, 글번호 정보를  --%>
    </div>
</div>
</body>
<div class="container mt-5" id="comment-list">
    <table class="table">
        <tr>
            <th>댓글번호</th>
            <th>작성자</th>
            <th>내용</th>
            <th>작성시간</th>
        </tr>
        <c:forEach items="${commentList}" var="comment">
            <tr>
                <td>${comment.id}</td>
                <td>${comment.commentWriter}</td>
                <td>${comment.commentContents}</td>
                <td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${comment.commentCreatedDate}"></fmt:formatDate></td>
            </tr>
        </c:forEach>
    </table>
</div>
<script>
    const commentWrite = () => {
        const writer = document.getElementById("commentWriter").value;
        const contents = document.getElementById("commentContents").value; // 밸류값으로 불러오고
        const board = '${board.id}';
        $.ajax({
            type: "post",
            url: "/comment/save",
            data: {
                commentWriter: writer,
                commentContents: contents,    // 리턴을 키값 : 밸류값
                boardId: board
            },
            dataType: "json",        // json = list , dto 같은 모든 항목에 충족되는 객체에 선언
            success: function (commentList) {
                console.log(commentList);
                let output = "<table class='table'>"; // += 대입 연산자
                output += "<tr><th>댓글번호</th>";
                output += "<th>작성자</th>";
                output += "<th>내용</th>";
                output += "<th>작성시간</th></tr>";
                for(let i in commentList){     // 포문  i = 인덱스
                    output += "<tr>";
                    output += "<td>"+commentList[i].id+"</td>";
                    output += "<td>"+commentList[i].commentWriter+"</td>";
                    output += "<td>"+commentList[i].commentContents+"</td>";
                    output += "<td>"+moment(commentList[i].commentCreatedDate).format("YYYY-MM-DD HH:mm:ss")+"</td>"; // 위에 자바스크립트 주소가 있어야 함
                    output += "</tr>";
                }
                output += "</table>";
                document.getElementById('comment-list').innerHTML = output;
                document.getElementById('commentWriter').value='';   // 인풋칸을 비운다
                document.getElementById('commentContents').value='';
            },
            error: function () {
                console.log("실패");
            }
        });
    }
    const updateFn = () => {
        const id = '${board.id}';
        location.href="/board/update?id=" + id;
    }
    const deleteFn = () => {
        const id = '${board.id}';
        location.href="/board/delete?id=" + id;
    }
</script>
</html>
