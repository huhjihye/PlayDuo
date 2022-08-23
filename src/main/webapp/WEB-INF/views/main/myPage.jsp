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

            padding-top: 13%;
            padding-left: 24%;
            color:rgb(61, 61, 61);
        }
    </style>
</head>
<body>
<div class = "img3">
    <a href = "index.html"><img src = "assets/images/p_logo.png" width="120px" ></a>
</div>

<div class = "name"><h3  style="display: inline;">학부모</h3> <h1 style="display: inline;">&nbsp; &nbsp;박 우 정</h1></div><br>
<div style="text-align: center; padding-top: 3%; padding-left: 5%; color:rgb(61, 61, 61)";>
    <h3 style="display: inline; padding-right: 50%;">회원정보 수정</h3><a href="contact.html"><img src = "assets/images/p_icon_1.png" width="38px";><br><br><br></a>
    <h3  style="display: inline; padding-right: 52%;">유아 추가</h3><a href="kidsinfo.html"><img src ="assets/images/p_icon_2.png"  width="40px";><br><br><br></a>
    <h3  style="display: inline; padding-right: 50%;">유아 상세 정보</h3><a href="kids.html"><img src = "assets/images/p_icon_3.png"  width="40px";><br><br><br></a>
    <h3  style="display: inline; padding-right: 50%;">학습 시간 확인</h3><img src = "assets/images/p_icon_4.png"  width="40px";><br><br><br>
    <h3  style="display: inline; padding-right: 50%;">학습 결과 확인</h3><img src = "assets/images/p_icon_5.png" width="39px";><br><br><br><br>
    <h3  style="display: inline; padding-right: 53%;">고객 센터</h3><a href="customer.html"><img src = "assets/images/p_icon_6.png" width="34px";><br></a>
    <br><br>
    <button type="button" class="button" onclick="userlogOut();">로그아웃</button>

</body>
</html>