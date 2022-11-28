<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-23
  Time: 오후 1:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>modify.jsp</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <script src="/js/bootstrap.bundle.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/daumpost.js"></script>

</head>
<style>
    @import url('https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400');

    body, html {
        font-family: 'Source Sans Pro', sans-serif;
        background-color: #1d243d;
        padding: 0;
        margin: 0;
    }

    #particles-js {
        position: absolute;
        width: 100%;
        height: 100%;
    }

    .container{
        margin: 0;
        top: 50px;
        left: 50%;
        position: absolute;
        text-align: center;
        transform: translateX(-50%);
        background-color: rgb( 33, 41, 66 );
        border-radius: 9px;
        border-top: 10px solid #79a6fe;
        border-bottom: 10px solid #8BD17C;
        width: 500px;
        height: 1200px;
        box-shadow: 1px 1px 108.8px 19.2px rgb(25,31,53);
    }

    .box h4 {
        font-family: 'Source Sans Pro', sans-serif;
        color: #5c6bc0;
        font-size: 18px;
        margin-top:94px;;
    }

    .box h4 span {
        color: #dfdeee;
        font-weight: lighter;
    }

    .box h5 {
        font-family: 'Source Sans Pro', sans-serif;
        font-size: 13px;
        color: #a1a4ad;
        letter-spacing: 1.5px;
        margin-top: -15px;
        margin-bottom: 70px;
    }

    .box input[type = "text"],.box input[type = "password"] {
        display: block;
        margin: 20px auto;
        background: #262e49;
        border: 0;
        border-radius: 5px;
        padding: 14px 10px;
        width: 320px;
        outline: none;
        color: #d6d6d6;
        -webkit-transition: all .2s ease-out;
        -moz-transition: all .2s ease-out;
        -ms-transition: all .2s ease-out;
        -o-transition: all .2s ease-out;
        transition: all .2s ease-out;

    }
    ::-webkit-input-placeholder {
        color: #565f79;
    }

    .box input[type = "text"]:focus,.box input[type = "password"]:focus {
        border: 1px solid #79A6FE;

    }

    a{
        color: #5c7fda;
        text-decoration: none;
    }

    a:hover {
        text-decoration: underline;
    }

    label input[type = "checkbox"] {
        display: none; /* hide the default checkbox */
    }

    /* style the artificial checkbox */
    label span {
        height: 13px;
        width: 13px;
        border: 2px solid #464d64;
        border-radius: 2px;
        display: inline-block;
        position: relative;
        cursor: pointer;
        float: left;
        left: 7.5%;
    }

    .btn1 {
        border:0;
        background: #7f5feb;
        color: #dfdeee;
        border-radius: 100px;
        width: 340px;
        height: 49px;
        font-size: 16px;
        position: absolute;
        top: 79%;
        left: 8%;
        transition: 0.3s;
        cursor: pointer;
    }

    .btn1:hover {
        background: #5d33e6;
    }

    .rmb {
        position: absolute;
        margin-left: -24%;
        margin-top: 0px;
        color: #dfdeee;
        font-size: 13px;
    }

    .forgetpass {
        position: relative;
        float: right;
        right: 28px;
    }

    .dnthave{
        position: absolute;
        top: 92%;
        left: 24%;
    }

    [type=checkbox]:checked + span:before {/* <-- style its checked state */
        font-family: FontAwesome;
        font-size: 16px;
        content: "\f00c";
        position: absolute;
        top: -4px;
        color: #896cec;
        left: -1px;
        width: 13px;
    }

    .typcn {
        position: absolute;
        left: 339px;
        top: 282px;
        color: #3b476b;
        font-size: 22px;
        cursor: pointer;
    }

    .typcn.active {
        color: #7f60eb;
    }

    .error {
        background: #ff3333;
        text-align: center;
        width: 337px;
        height: 20px;
        padding: 2px;
        border: 0;
        border-radius: 5px;
        margin: 10px auto 10px;
        position: absolute;
        top: 31%;
        left: 7.2%;
        color: white;
        display: none;
    }

    .footer {
        position: relative;
        left: 0;
        bottom: 0;
        top: 605px;
        width: 100%;
        color: #78797d;
        font-size: 14px;
        text-align: center;
    }

    .footer .fa {
        color: #7f5feb;;
    }
</style>
<body>
<body id="particles-js"></body>
<div class="animated bounceInDown">
    <div class="container">
        <span class="error animated tada" id="msg"></span>
        <form name="form1" class="box" action="/modify" method="post">
            <h4><span>modify</span></h4>
            <h5>회원 정보를 수정하여 주십시오.</h5>
            <input  id="memberLoginID" name="memberLoginID" placeholder="아이디" autocomplete="off" value="${sessionScope.loginID}" readonly>
            <i class="typcn typcn-eye" id="eye"></i>
            <input type="password" name="memberPassword" placeholder="패스워드" id="memberPassword" autocomplete="off" onclick="checkPass()">
            <input type="password" name="memberPassword" id="memberPassword" placeholder="새 비밀번호">
            <input type="text" name="memberMobile" id="memberMobile" placeholder="전화번호">
            <input type="text" name="memberAge" id="memberAge" placeholder="나이">
            <input type="text" name="postcode" id="postcode" placeholder="우편번호">
            <input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
            <input type="text" name="roadAddress" id="roadAddress" placeholder="도로명주소" size="60" ><br>
            <input type="hidden" name="jibunAddress" id="jibunAddress" placeholder="지번주소"  size="60">
            <span id="guide" style="color:#999;display:none"></span>
            <input type="text" name="detailAddress" id="detailAddress" placeholder="상세주소"  size="60"><br>
            <input type="file" name="memberProfile"  placeholder="프로필사진">
            <label>
                <input type="checkbox">
                <span></span>
                <%--                <small class="rmb">Remember me</small>--%>
            </label>
<%--            <a href="#" class="forgetpass">Forget Password?</a>--%>
            <input type="submit" value="정보수정" class="btn1">
        </form>
        <%--        <a href="#" class="dnthave">Don’t have an account? Sign up</a>--%>
    </div>
    <div class="footer">
<%--        <span>Made with <i class="fa fa-heart pulse"></i> <a href="https://www.google.de/maps/place/Augsburger+Puppenkiste/@48.360357,10.903245,17z/data=!3m1!4b1!4m2!3m1!1s0x479e98006610a511:0x73ac6b9f80c4048f"><a href="https://codepen.io/lordgamer2354">By Anees Khan</a> </a></span>--%>
    </div>
</div>

</body>
 <script>
     const checkPass = () => {
       const pass = document.getElementById("memberPassword").value;
       const DBpass = '${member.memberPassword}';

       if (pass == DBpass){
           document.form1.submit();
       }else {
           alert("비밀번호를 다시 확인하여 주세요 ");
       }

     }
     function sample4_execDaumPostcode() {
         new daum.Postcode({
             oncomplete: function(data) {
                 // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                 // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                 // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                 var roadAddr = data.roadAddress; // 도로명 주소 변수
                 var extraRoadAddr = ''; // 참고 항목 변수

                 // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                 // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                 if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                     extraRoadAddr += data.bname;
                 }
                 // 건물명이 있고, 공동주택일 경우 추가한다.
                 if(data.buildingName !== '' && data.apartment === 'Y'){
                     extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                 }
                 // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                 if(extraRoadAddr !== ''){
                     extraRoadAddr = ' (' + extraRoadAddr + ')';
                 }

                 // 우편번호와 주소 정보를 해당 필드에 넣는다.
                 document.getElementById('postcode').value = data.zonecode;
                 document.getElementById("roadAddress").value = roadAddr;
                 document.getElementById("jibunAddress").value = data.jibunAddress;


                 // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                 if(roadAddr !== ''){
                     document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                 } else {
                     document.getElementById("sample4_extraAddress").value = '';
                 }

                 var guideTextBox = document.getElementById("guide");
                 // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                 if(data.autoRoadAddress) {
                     var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                     guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                     guideTextBox.style.display = 'block';

                 } else if(data.autoJibunAddress) {
                     var expJibunAddr = data.autoJibunAddress;
                     guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                     guideTextBox.style.display = 'block';
                 } else {
                     guideTextBox.innerHTML = '';
                     guideTextBox.style.display = 'none';
                 }
             }
         }).open();
     }
 </script>
</html>
