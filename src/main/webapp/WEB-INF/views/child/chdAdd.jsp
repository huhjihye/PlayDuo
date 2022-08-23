<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>유아 정보</title>
    <style>
        @import url(https://fonts.googleapis.com/css?family=Roboto:300);

        .login-page {
            width: 360px;
            padding: 4% 0 0;
            margin: auto;
        }
        .form {

            z-index: 1;
            background: #FFFFFF;
            width: 600px;
            height: 390px;
            padding: 40px;
            text-align: left;
            box-shadow: 0 0 20px 0 rgb(0 0 0 / 20%), 0 5px 5px 0 rgb(0 0 0 / 24%);
            margin-left: -50%;
            padding-top: 30%;
            margin-top: 20%;


        }
        .form input {
            font-family: "Roboto", sans-serif;
            outline: 0;
            background: #f2f2f2;
            border: 0;
            margin: 0 0 15px;
            padding: 15px;
            box-sizing: border-box;
            font-size: 14px;
            border-radius: 10px;
        }
        .form button {
            font-family: "Roboto", sans-serif;
            text-transform: uppercase;
            outline: 0;
            background: #f06455;
            width: 100%;
            border: 0;
            padding: 15px;
            color: #FFFFFF;
            font-size: 14px;
            -webkit-transition: all 0.3 ease;
            transition: all 0.3 ease;
            cursor: pointer;
            border-radius: 13px;

        }
        .form button:hover,.form button:active,.form button:focus {
            background: #E9C113;
        }
        .form .message {
            margin: 15px 0 0;
            color: #b3b3b3;
            font-size: 12px;
        }
        .form .message a {
            color: #E74C3C;
            text-decoration: none;
        }
        .form .register-form {
            display: none;
        }
        .container {
            position: relative;
            z-index: 1;
            max-width: 300px;
            margin: 0 auto;

        }
        .container:before, .container:after {
            content: "";
            display: block;
            clear: both;
        }
        .container .info {
            margin: 50px auto;
            text-align: center;
        }
        .container .info h1 {
            margin: 0 0 15px;
            padding: 0;
            font-size: 36px;
            font-weight: 300;
            color: #1a1a1a;
        }
        .container .info span {
            color: #4d4d4d;
            font-size: 12px;
        }
        .container .info span a {
            color: #000000;
            text-decoration: none;
        }

        body {
            background-color:  #ffe46f;
            font-family: "Roboto", sans-serif;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }
        :after{
            content:'';
            position:absolute;
            top: 0;
            left: 0;
            right: 0;
            background:-webkit-linear-gradient(left,
            #27ae60 0%, #27ae60 20%,
            #8e44ad 20%, #8e44ad 40%,
            #3498db 40%, #3498db 60%,
            #e74c3c 60%, #e74c3c 80%,
            #f1c40f 80%, #f1c40f 100%
            );

            height: 15px;
            border-radius: 5px 5px 0 0;
        }
        .login_png{
            padding-left: 155px;
            margin-top: -40px;
        }
        button{
            margin-left: 8%;
        }

    </style>
</head>
<body>
<div class="login-page">

    <div class="form">
        <div class = "login_png"><img src = "/assets/images/p_login.png" width="280px"></div>

        <br>
        <br>
        <br>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" placeholder="유아 이름을 입력하세요"/ size="15px" style="width:500px";><br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="number" name="age" min="1" max="8" placeholder="유아 나이를 입력하세요"/ size="15px" style="width:500px";>
        <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="male" value="남자" />남&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="femail" value="여자"/> 여
        <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;아이 프로필 이미지&nbsp;&nbsp;<input type = "file" name="profile">
        <br>
        <br>

        <a href="main.html"><div class = "button4"> <button style="width:505px">유아 정보 입력</button></div></a>

        <!-- <p class="message">Not registered? <a href="#">Create an account</a></p> -->
        </form>
    </div>
</div>
</body>
</html>