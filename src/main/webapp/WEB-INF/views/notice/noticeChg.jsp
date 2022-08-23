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
            position: absolute;
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
            background: #f06455;
            width: 6%;
            border: 0;
            padding: 15px;
            color: #FFFFFF;
            font-size: 14px;
            -webkit-transition: all 0.3 ease;
            transition: all 0.3 ease;
            cursor: pointer;
            border-radius: 13px;
            height: 1%;
        }

        .name{

            text-align: center;
            padding-left: 3%;
            padding-top: 6%;
            color:rgb(61, 61, 61);
        }
        .img1{

            position: absolute;
            padding-top: 1%;
            padding-right: 20%;

        }
    </style>
</head>
<body>
<div class = "img3">
    <a href = "index.html"><img src = "assets/images/p_logo.png" width="120px" ></a>
</div>

<div class = "name"><h1 style="display: inline; color: #40A5E7; font-size: 38px; -webkit-text-stroke: 0.8px rgb(255, 255, 255);">&nbsp; &nbsp;1:1 문의하기</h1></div><br>
<div style="text-align: center; padding-top: 3%; padding-left: 5%; color:rgb(61, 61, 61)";>
        <textarea cols="120" rows="18">


        이슬비는 혼자 못하나요?
        아이 친구가 플레듀오 안에 없는데..이슬비를 하고 싶어합니다. 1인 플레이 되나요?</textarea>

    <br><br>

    <button type="button" class="button" onclick="userlogOut();">수정하기</button>
    <button type="button" class="button" onclick="userlogOut();">삭제하기</button> </div>

<img src = "assets/images/p_dino (2).png" style="width: 106%; padding-top: 67px;">

</body>
</html>