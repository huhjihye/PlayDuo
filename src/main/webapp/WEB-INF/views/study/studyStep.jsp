<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Main</title>
    <style>
        body{
            background-color: #f8f8b0;
            box-sizing: border-box;
            width: 99%;
            height: 100%;
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


        .img2{
            position: absolute;
            padding-top: 3%;
            padding-left: 74%;

        }
        .img3{
            position: absolute;
            padding-top: 5%;
            padding-left: 4%;
        }

        .button{
            font-family: "Cafe24Ssurround";
            text-transform: uppercase;
            outline: 0;
            background: #f06455;
            width: 320px;
            height: 350px;
            border: 0;
            padding: 15px;
            color: #FFFFFF;
            font-size: 14px;
            -webkit-transition: all 0.3 ease;
            transition: all 0.3 ease;
            cursor: pointer;
            border-radius: 60px;

        }
        .button2{
            font-family: "Cafe24Ssurround";
            text-transform: uppercase;
            outline: 0;
            background: #27b36b;
            width: 325px;
            height: 350px;
            border: 0;
            padding: 15px;
            color: #FFFFFF;
            font-size: 14px;
            -webkit-transition: all 0.3 ease;
            transition: all 0.3 ease;
            cursor: pointer;
            border-radius: 60px;


        }
        .button1{
            font-family: "Cafe24Ssurround";
            text-transform: uppercase;
            outline: 0;
            background: #ffdc4d;
            width: 315px;
            height: 350px;
            border: 0;
            padding: 15px;
            color: #FFFFFF;
            font-size: 14px;
            -webkit-transition: all 0.3 ease;
            transition: all 0.3 ease;
            cursor: pointer;
            border-radius: 60px;


        }
    </style>
</head>
<body>


<div class = "img3"><a href = "index.html"><img src = "assets/images/p_logo.png" width="120px"></a></div>

<div class = "img2">
    <img src = "assets/images/cloud.png" width="330px">
</div>

<div style = "text-align: center; padding-top: 15%;">
    <button type="button" class="button" onclick="location.href='paint1.html'"><h3>1단계</h3><h1>씨앗</h1></button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <button type="button" class="button1" onclick="location.href='paint2.html'"><h3>2단계</h3><h1>새싹</h1></button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <button type="button" class="button2" onclick="location.href='paint3.html'"><h3>3단계</h3><h1>나무</h1></button>

</div>


<img src = "assets/images/p_dino (2).png" width="100%" height="200px"; style = "padding-top: 8.8%;">



</body>
</html>