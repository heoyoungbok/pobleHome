<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-17
  Time: 오전 11:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="layout/header.jsp" flush="false"></jsp:include>

<html>
<head>
    <title>Title</title>
    <script src="/js/bootstrap.bundle.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
</head>
<body>
<form class="/save" method="post" name="saveForm">
    <input type="text" name="memberLoginID" id="memberLoginID" placeholder="아이디" onblur="idJoinCheck()">
    <i id="lock" class="bi bi-lock"></i>
    <span id="id-Check"></span><br>
    <span id="input-push"></span>
    <input type="text" name="memberPassword" id="memberPassword" placeholder="비밀번호">
    <i id="lock1" class="bi bi-lock"></i>
    <span id="input-push-pass"></span>
    <input type="text" name="memberName" id="memberName" placeholder="이름">
    <input type="text" name="memberMobile" id="memberMobile" placeholder="전화번호">
    <input type="text" name="memberAge" id="memberAge" placeholder="나이">
    <input type="file" name="memberProfile"  placeholder="프로필사진">
    <input type="button" value="회원가입" onclick="saveFn()">
</form>
</body>
<script>
    const idJoinCheck = () => {
      const id = document.getElementById("memberLoginID").value;
      const checkResult = document.getElementById("id-Check");

      $.ajax({
         type:"post",
         url:"/joinCheck",
         data:{inputId:id},
         dataType:"text",
         success:function (result){
             if (result=="ok"){
                 checkResult.innerHTML="사용할 수 있는 아이디 입니다.";
                 checkResult.style.color="green";
             }else{
                 checkResult.innerHTML="중복된 아이디입니다.";
                 checkResult.style.color="red";
             }
         } ,
          error:function (){
             console.log("실패");
          }
      });
    }


    const saveFn = () => {
    if(document.saveForm.memberLoginID.value == ""){

        const idCheck = document.getElementById("input-push");
        const lock = document.getElementById("lock");

        idCheck.innerHTML ="필수 항목입니다.";
        idCheck.style.color="red";
        lock.style.color="red";

    }else if ()

    }
</script>
</html>
