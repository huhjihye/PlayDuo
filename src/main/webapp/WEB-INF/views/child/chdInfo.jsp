<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko" dir="ltr">
<head>
    <meta charset="utf-8">
    <title>HTML CSS Left Right Split</title>
    <style>

        body{
            background: #f8f8b0;
            height: 100%;

        }
        div {

        }
        div.left {
            width: 40%;
            height: 100%;
            float: left;
            box-sizing: border-box;
            background: #f8f8b0;
        }
        div.right {
            width: 60%;
            height: 100%;
            float: right;
            box-sizing: border-box;
            background: #f8f8b0;
        }

        *{
            font-family: 'Cafe24Ssurround';

        }
        @font-face {
            font-family: 'Cafe24Ssurround';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2105_2@1.0/Cafe24Ssurround.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }
        .button {
            outline: 0;
            background: #f06455;
            width: 10%;
            border: 0;
            padding: 15px;
            color: #FFFFFF;
            font-size: 14px;
            -webkit-transition: all 0.3 ease;
            transition: all 0.3 ease;
            cursor: pointer;
            border-radius: 13px;
            height: 9%;

        }
        .btn-pos{

            margin-left: 40%;
        }

    </style>
</head>
<body>

<div>

    <div class="left">
        <a href = "index.html"><img src = "assets/images/p_logo.png" width="120px" style="display: inline; padding-left: 15%; padding-top: 10%";></a>
        <div class = "kid" style="padding-left: 40%;";><img src = "assets/images/kid.png" width="370px;" style ="display: inline; padding-top: 20%;"></div>
    </div>
    <div class="right">

        <div style="text-align: center; padding-top: -5%; padding-left: 50%; color:rgb(61, 61, 61); display: inline;">

            <h2 style = "padding-top: 19% ; padding-right: 6%;">박 우 정&nbsp; &nbsp; 어린이&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;</h2></span>
            <h3 style = "padding-top: 5% ; padding-right: 17%;">나이&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;3세</h3></span>
            <h3  style = "padding-top: 3%; padding-right: 18%;">성별&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;여</h3>
            <h3  style = "padding-top: 3%; padding-right: 13%;">출석&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;83일 째</h3>
            <h3   style = "padding-top: 4%; padding-right: 10%;">유아 코드&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;j813mlvu</h3><br><br><br>

            <br><br>
        </div>

    </div>
</div>
<div class = "btn-pos">
    <button type="button" class="button" onclick="userlogOut();">수정하기</button>
    <button type="button" class="button" onclick="userlogOut();">탈퇴하기</button>
    <button type="button" class="button" onclick="location.href='main.html'">선택하기</button></div>

<img src = "assets/images/p_kids_background.png" style="padding-top: 1%; width: 100%;">
</body>
</html>