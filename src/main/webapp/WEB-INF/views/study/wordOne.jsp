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
            width: 100%;
            height: 100%;
            margin: 0 0 0 0;
            padding: 0 0 0 0;
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
        .img1{

            position: absolute;
            padding-top: 3.6%;
            padding-left: 60%;
        }
        .img2{
            position: absolute;
            padding-top: 3%;
            padding-left: 75%;

        }
        .img3{
            position: absolute;
            padding-top: 5%;
            padding-left: 4%;
        }

        .img4{

            position: absolute;
            padding-top: 3.6%;
            padding-left: -1%;
            width: 90%;
        }
        .button{
            font-family: "Cafe24Ssurround";
            text-transform: uppercase;
            outline: 0;
            background: #ee4848;
            width: 155px;
            height: 100px;
            border: 0;
            padding: 15px;
            color: #FFFFFF;
            font-size: 14px;
            -webkit-transition: all 0.3 ease;
            transition: all 0.3 ease;
            cursor: pointer;
            border-radius: 35px;

        }
        .button1{
            font-family: "Cafe24Ssurround";
            text-transform: uppercase;
            outline: 0;
            background: #2fa044;
            width: 155px;
            height: 100px;
            border: 0;
            padding: 15px;
            color: #FFFFFF;
            font-size: 14px;
            -webkit-transition: all 0.3 ease;
            transition: all 0.3 ease;
            cursor: pointer;
            border-radius: 35px;

        }
        .button2{
            font-family: "Cafe24Ssurround";
            text-transform: uppercase;
            outline: 0;
            background: #4c92d8;
            width: 155px;
            height: 100px;
            border: 0;
            padding: 15px;
            color: #FFFFFF;
            font-size: 14px;
            -webkit-transition: all 0.3 ease;
            transition: all 0.3 ease;
            cursor: pointer;
            border-radius: 35px;
        }

    </style>
</head>
<body>


<div class = "img3"><a href = "index.html"><img src = "assets/images/p_logo.png" width="120px"></a></div>

<div class = "img2">
    <img src = "assets/images/cloud.png" width="330px">
</div>


<div style = "padding-left: 40%; padding-top: 15%">
    <div style="width:140px; height:135px; display:inline-block; background-color: #f4d75c; border-radius: 100px;"></div>&nbsp;&nbsp;&nbsp;&nbsp;
    <div style="width:140px; height:135px; display:inline-block; background-color: #f4d75c; border-radius: 100px;"></div>

</div>
</div>



<div style = "padding-top: 4%; padding-left: 34%;">
    <button type="button" class="button" onclick="userlogOut();"><h1>ㅁ</h1></button>
    <button type="button" class="button1" onclick="userlogOut();"><h1>ㅅ</h1></button>
    <button type="button" class="button2" onclick="userlogOut();"><h1>ㄴ</h1></button>

</div>


<img src = "assets/images/play_background.png" width="40%" height="153px;" style="padding-top: 6%; padding-left: 20px;">




<img src = "assets/images/rainbow.png" width="40%" height="165px" style="padding-top: 10.5% ; padding-left: 295px; display:inline;">


</body>
</html>