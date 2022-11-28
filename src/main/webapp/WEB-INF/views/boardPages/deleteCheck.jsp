<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-24
  Time: 오후 2:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
        height: 900px;
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
    .textarea input[type = "text"]:focus,.box input[type= "password"]{
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

    .textarea input[type = "text"]:focus,.box input[type= "password"]:focus{
        border: 1px solid;
    }
    textarea{
        margin: 20px auto;
        padding: 14px 10px;
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
        <form name="form1" class="box" action="/board/delete" method="post">
            <h4><span>게시글 삭제</span></h4>
            <h5>DELETE</h5>
            <input type="text"  id="id" name="id" value="${board.id}" readonly >
            <%--            <i class="typcn typcn-eye" id="eye"></i>--%>
            <input name="boardWriter"  id="boardWriter" value="${sessionScope.loginID}"readonly>
            <input type="text" name="boardTitle" value="${board.boardTitle}">
            <textarea name="boardContents" cols="30" rows="10">${board.boardContents}</textarea>
            <label>
<%--                <input type="checkbox">--%>
<%--                <span></span>--%>
                <%--                <small class="rmb">Remember me</small>--%>
            </label>
<%--            <a href="#" class="forgetpass">Forget Password?</a>--%>
            <input type="button" value="삭제" class="btn1" onclick="deleteCheck()">
        </form>
        <%--        <a href="#" class="dnthave">Don’t have an account? Sign up</a>--%>
    </div>
    <div class="footer">
<%--        <span>Made with <i class="fa fa-heart pulse"></i> <a href="https://www.google.de/maps/place/Augsburger+Puppenkiste/@48.360357,10.903245,17z/data=!3m1!4b1!4m2!3m1!1s0x479e98006610a511:0x73ac6b9f80c4048f"><a href="https://codepen.io/lordgamer2354">By Anees Khan</a> </a></span>--%>
    </div>
</div>

</body>
<script>
    const deleteCheck = () => {
        const writer = '${sessionScope.loginID}';
        const id = '${board.boardWriter}';

        if(id != writer){
            document.form1.submit();
        }else {
            alert ("비정상적인 접근입니다.");
        }
    }
</script>
</html>