<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .img3{

            padding-top: 3%;
            padding-left: 4%;
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
        body{
            background-color: #f8f8b0;
            box-sizing: border-box;
            width: 1600px;

        }

        .all{
            color:rgb(70, 69, 69);
            position: absolute;
            padding-left: 10%;
        }
        .button {
            outline: 0;
            background: #f2cf44;
            width: 550px;
            border: 0;
            padding: 15px;
            color: #FFFFFF;
            font-size: 14px;
            -webkit-transition: all 0.3 ease;
            transition: all 0.3 ease;
            cursor: pointer;
            border-radius: 13px;
            height: 66px;
        }

        .name{

            text-align: center;
            padding-left: 3%;
            padding-top: 3%;
            color:rgb(61, 61, 61);
        }
        .background{
            position: absolute;
            padding-right: 100px;
            width: 100%;
        }

    </style>
</head>
<body>
<div class = "img3">
    <a href = "index.html"><img src = "assets/images/p_logo.png" width="120px" ></a>
</div>


<div class = "name"><h1 style="display: inline; color: #9b59b6; font-size: 38px; -webkit-text-stroke: 0.8px rgb(255, 255, 255);">&nbsp; &nbsp;내가 쓴 글 </h1></div><br>
<div style="text-align: center; padding-top: 3%; padding-left: 5%; color:rgb(61, 61, 61)";>
    <button type="button" class="button" onclick="location.href='write1.html'"><h3 style="display: inline; text-align: center; text-decoration: none;">이슬비는 혼자 못하나요?</h3></button><br><br>
    <button type="button" class="button" onclick="location.href='write2.html'"><h3 style="display: inline; text-align: center; text-decoration: none;">비밀번호 변경이 안돼요</h3></button><br><br>
    <button type="button" class="button"  onclick="location.href='write3.html'"><h3 style="display: inline; text-align: center; text-decoration: none;">친구에게 코드 전송은 어떻게 하나요?</h3></button>

</div>
<br><br>
<img src = "assets/images/p_dino (2).png" style="width: 106%; padding-top: 74px;">

</body>
</html>