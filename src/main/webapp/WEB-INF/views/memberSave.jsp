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
    <title>memberSave.jsp</title>
    <script src="/js/bootstrap.bundle.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/daumpost.js"></script>


</head>
<body>
<form class="/save" method="post" name="saveForm">
    <input type="text" name="memberLoginID" id="memberLoginID" placeholder="아이디" onblur="idJoinCheck()">
<%--    <i id="lock" class="bi bi-lock"></i>--%>
    <span id="id-Check"></span><br>
    <span id="input-push"></span>
    <input type="text" name="memberPassword" id="memberPassword" placeholder="비밀번호">
<%--    <i id="lock1" class="bi bi-lock"></i>--%>
    <span id="input-push-pass"></span>
    <input type="text" name="memberName" id="memberName" placeholder="이름">
    <input type="text" name="memberMobile" id="memberMobile" placeholder="전화번호">
    <input type="text" name="memberAge" id="memberAge" placeholder="나이">
    <input type="text" name="postcode" id="postcode" placeholder="우편번호">
    <input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
    <input type="text" name="roadAddress" id="roadAddress" placeholder="도로명주소" size="60" ><br>
    <input type="hidden" name="jibunAddress" id="jibunAddress" placeholder="지번주소"  size="60">
    <span id="guide" style="color:#999;display:none"></span>
    <input type="text" name="detailAddress" id="detailAddress" placeholder="상세주소"  size="60"><br>
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
        if (document.saveForm.memberLoginID.value == ""){
        const idCheck = document.getElementById("input-push");
        // const lock = document.getElementById("lock");
        // const exp = /^(?=.*[a-z])(?=.*\d)(?=.*[-_])[a-z\d-_]$/;
        idCheck.innerHTML ="필수 항목입니다.";
        idCheck.style.color="red";
        // lock.style.color="red";
        return false;
    }else if (document.saveForm.memberPassword.value ==""){
            const passCheck = document.getElementById("input-push-pass");
            passCheck.innerHTML = "필수 항목입니다.";
            passCheck.style.color="red";
        }else if(document.saveForm.memberName.value == ""){
            alert("이름을 입력해주세요");
            return false;
        }else if(document.saveForm.memberMobile.value == ""){
            alert("나이를 입력해주세요");
            return false;
        }else if(document.saveForm.memberAge.value == ""){
            alert("전화번호를 입력해주세요");
            return false;
        }
        document.saveForm.submit();

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
