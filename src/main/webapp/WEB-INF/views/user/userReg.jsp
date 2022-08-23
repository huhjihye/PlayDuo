<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en" itemscope itemtype="http://schema.org/WebPage">

<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="apple-touch-icon" sizes="76x76" href="/assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="/assets/img/favicon.png">
    <title>회원가입</title>
    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css"
          href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700"/>
    <!-- Nucleo Icons -->
    <link href="/assets/css/nucleo-icons.css" rel="stylesheet"/>
    <link href="/assets/css/nucleo-svg.css" rel="stylesheet"/>
    <!-- Font Awesome Icons -->
    <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
    <!-- Material Icons -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
    <!-- CSS Files -->
    <link id="pagestyle" href="/assets/css/material-kit.css" rel="stylesheet"/>
    <script src="/js/jquery-3.6.0.min.js"></script>    <!--제이쿼리를 사용하겠다고 jsp에 넣어주는거. import 기능 -->

    <script type="text/javascript">


        /*유효성 검사 정규식 */
        //아이디 정규식
        let idJ = /^[a-z0-9]{4,12}$/;
        // 이메일 검사 정규식
        let emailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
        // 비밀번호 정규식
        let pwJ = /^[A-Za-z0-9]{4,12}$/;
        // 이름 정규식
        let nameJ = /^[가-힣]{2,6}$/;

        /*아이디 유효성검사*/
        $(document).ready(function () {
            $('#parent_id').blur(function () {
                if (idJ.test($('#parent_id').val())) {
                    console.log('true');
                    $("#id_result").text('중복확인을 눌러주세요.');
                    $("#id_result").css('color', 'blue');
                } else {
                    console.log('false');
                    $("#id_result").text('문자 or 숫자로만 4~12자리 입력하세요');
                    $("#id_result").css('color', 'red');
                }
            });
            /*이메일 유효성검사*/
            $('#parent_email').blur(function () {
                if (emailJ.test($('#parent_email').val())) {
                    console.log('true');
                    $('#email_check').text('사용가능한 이메일입니다.');
                    $('#email_check').css('color', 'blue');
                } else {
                    console.log('false');
                    $('#email_check').text('올바른 이메일주소를 입력하세요');
                    $('#email_check').css('color', 'red');
                }
            });
            /*비밀번호 유효성검사*/
            $('#parent_password').blur(function () {
                if (pwJ.test($('#parent_password').val())) {
                    console.log('true');
                    $('#password_check').text('사용가능한 비밀번호입니다.');
                    $('#password_check').css('color', 'blue');

                } else {
                    console.log('false');
                    $('#password_check').text('숫자 or 문자로만 4~12자리 입력하세요');
                    $('#password_check').css('color', 'red');
                }
            });
            /*이름 유효성검사*/
            $('#parent_name').blur(function () {
                if (nameJ.test($('#parent_name').val())) {
                    console.log('true');
                    $('#name_check').text('사용가능한 이름입니다.');
                    $('#name_check').css('color', 'blue');
                } else {
                    console.log('false');
                    $('#name_check').text('정확한 이름을 작성해주세요.');
                    $('#name_check').css('color', 'red');
                }
            });
        });

        //유효성 검사 실행시에만 가입하기 버튼 누를 수 있음
        function checkfield() {
            if ($('#user_id').val().trim() === '') {
                alert("아이디는 공백일 수 없습니다.");
                $("#parent_id").text.text('아이디는 공백일 수 없습니다');
                return false;
            }
            if ($('#parent_email').val().trim() === '') {
                $('#email_check').text('이메일은 공백일 수 없습니다');
                return false;
            }

            if ($('#parent_password').val().trim() === '') {
                $('#password_check').text('비밀번호는 공백일 수 없습니다');
                return false;
            }
            if ($('#parent_name').val().trim() === '') {
                $('#name_check').text('이름는 공백일 수 없습니다');
                return false;
            }
            if ($('[name="parent_gender"]:checked').length == 0) {
                alert("성별은 공백일 수 없습니다.");
                //$('#name_check').text('이름는 공백일 수 없습니다');
                return false;
            }
            if (randomPin !== $("#auth_email").val()) {
                alert("잘못된 인증번호입니다.");
                return false;
            }

            document.getElementById("userReg").submit();

        }

        /*전역 변수 설정*/
        let randomPin = "0";

        /**/
        function id_check() {
            let user_id = document.getElementById("parent_id").value; //자바스크립트
            console.log("parent_id", parent_id);
            let user_id2 = $("#parent_id").val(); //제이쿼리
            console.log("parent_id2", parent_id2);

            $.ajax({
                url: "/user_idcheck", //어디로 통신할지
                type: "post",
                data: $("#parent_id"),
                success(data) {
                    console.log("data", data);
                    if (data == 1) { //1은 존재하는거니까 중복확인이니까 -> 1이면 데이터 받았다고 성공이 아니라서 컬러를 red로 준거임
                        $("#id_result").text("중복");
                        $("#id_result").css("color", "red");
                    } else {
                        $("#id_result").text("중복된 아이디가 없습니다 성공");
                        $("#id_result").css("color", "blue");
                    }
                }
            });

        }

        /*이메일 중복확인 검사 */
        function email_check() {
            $.ajax({
                url: "/user_emailcheck",
                type: "post",
                data: $('#parent_email'),
                success(data) {
                    console.log("data", data);
                    if (data == 1) {
                        $("#emil_result").text("중복");  //1은 존재하는거니까 중복확인이니까 -> 1이면 데이터 받았다고 성공이 아니라서 컬러를 red로 준거임
                        $("#emil_result").css("color", "red");
                    } else {
                        $("#emil_result").text("중복된 이메일이 없습니다 성공");
                        $("#emil_result").css("color", "blue");
                    }
                }

            });
        }

        /*json 형태로 반환 ajax 구현*/
        function doSendmail() {
            $.ajax({
                url: "/user_sendmail",
                type: "post",
                data: $("#parent_email"),
                /*dataType이란 내가 반환받을 데이터의 형태를 명시해주는 것*/
                dataType: 'json',
                success(pMap) {
                    let data = pMap["res"];
                    randomPin = pMap["randomPin"];
                    if (data == 1) {
                        $("#sendmail_result").text("메일발송이 완료되었습니다.");
                        $("#sendmail_result").css("color", "blue");
                    } else {
                        $("#sendmail_result".text("이메일을 다시 입력해주세요"));
                        $("#sendmail_result".css("color", "red"));

                    }
                }
            });
        }

        $(document).ready(function () {
            /*인증번호 실시간 확인*/
            $("#auth_email").on("change keyup paste", function () {
                console.log("인증번호 실시간 확인 코드 시작");
                if (randomPin === $("#auth_email").val()) { // //인증 키 값을 비교를 위해 텍스트인 풋과 벨류를 비교
                    $("#auth_res").text("인증번호가 일치 합니다");
                    $("#auth_res").css('color', 'blue');
                    $("#btn_reg").attr("type", "submit");
                } else {
                    $("#auth_res").text("인증번호를 다시 확인해 주세요");
                    $("#auth_res").css('color', 'red');
                    $("#btn_reg").attr("type", "button"); //attr. 해당 태그 속성을 바꿔줌
                }
            });
        });


    </script>
</head>

<body class="sign-in-basic">
<div class="page-header align-items-start min-vh-100">
    <span class="mask bg-gradient-dark opacity-6"
          style="background-image: linear-gradient(195deg, #ffffff 0%, #ffffff 100%);"></span>
    <div class="container my-auto">
        <div class="row">
            <div class="col-lg-4 col-md-8 col-12 mx-auto">
                <div class="card z-index-0 fadeIn3 fadeInBottom">
                    <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                        <div class="bg-gradient-primary shadow-primary border-radius-lg py-3 pe-1"
                             style="background-image:  linear-gradient(195deg, #49a3f1 0%, #49a3f1 100%); box-shadow: 0 4px 20px 0 rgb(0 0 0 / 14%), 0 7px 10px -5px rgb(245 236 239 / 40%) !important; color:#42424a !important">
                            <h4 class="text-white font-weight-bolder text-center mt-2 mb-0">회원가입</h4>
                        </div>
                    </div>
                    <div class="card-body">
                        <form class="text-start" action="/userRegProc" method="post" id="userRegProc">
                            <div class="input-group input-group-outline my-3">
                                <input type="text" class="form-control" placeholder="아이디" name="parent_id" id="parent_id">
                                <div class="check_font" id="id_check"></div>  <!-- id 유효성 검사 체크 경고문 -->
                            </div>
                            <div id="id_result"></div>
                            <!-- 아이디 중복확인 버튼 -->
                            <button type="button" class="btn bg-gradient-primary w-100 my-4 mb-2"
                                    onclick="id_check();"
                                    style="background-image:  linear-gradient(195deg, #49a3f1 0%, #49a3f1 100%); box-shadow: 0 4px 20px 0 rgb(0 0 0 / 14%), 0 7px 10px -5px rgb(245 236 239 / 40%) !important;">
                                아이디 중복 확인
                            </button> <!--아이디 중복체크-->


                            <div class="input-group input-group-outline mb-3">
                                <input type="email" class="form-control" id="parent_email" name="parent_email"
                                       placeholder="이메일">
                                <div class="check_font" id="email_check"></div>  <!-- 이메일 유효성 검사 체크 경고문 -->
                            </div>
                            <div id="emil_result"></div>
                            <button type="button" class="btn bg-gradient-primary w-100 my-4 mb-2"
                                    onclick="email_check();"
                                    style="background-image:  linear-gradient(195deg, #49a3f1 0%, #49a3f1 100%); box-shadow: 0 4px 20px 0 rgb(0 0 0 / 14%), 0 7px 10px -5px rgb(245 236 239 / 40%) !important;">
                                이메일 중복 확인
                            </button>

                            <button type="button" class="btn bg-gradient-primary w-100 my-4 mb-2"
                                    onclick="doSendmail();"
                                    style="background-image:  linear-gradient(195deg, #49a3f1 0%, #49a3f1 100%); box-shadow: 0 4px 20px 0 rgb(0 0 0 / 14%), 0 7px 10px -5px rgb(245 236 239 / 40%) !important;">
                                인증번호 발송
                            </button>
                            <div id="sendmail_result" name="sendmail_result"></div> <!--보낸 인증번호-->

                            <div class="input-group input-group-outline mb-3">
                                <input type="text" class="form-control" id="auth_email" name="auth_email"
                                       placeholder="인증번호 확인">
                            </div>
                            <div id="auth_res" name="auth_res"></div> <!--인증번호 입력-->

                            <div class="input-group input-group-outline mb-3">
                                <input type="password" class="form-control" id="parent_password" name="parent_password"
                                       placeholder="비밀번호">
                                <div class="check_font" id="password_check"></div>  <!-- 비밀번호 유효성 검사 체크 경고문 -->

                            </div>

                            <div class="input-group input-group-outline mb-3">
                                <input type="text" class="form-control" id="parent_name" name="parent_name"
                                       placeholder="이름">
                                <div class="check_font" id="name_check"></div>  <!-- 이름 유효성 검사 체크 경고문 -->
                            </div>

                            <div class="input-group input-group-outline mb-3" id="gender">
                                <span style="margin:auto;"><input type="radio" name="parent_gender" value="man">남자</span>
                                <span style="margin: auto;"><input type="radio" name="parent_gender" value="woman">여자</span>
                                <div class="text-center"></div>
                            </div>
                            <div id="user_Reg_result"></div>

                            <button type="button" class="btn bg-gradient-primary w-100 my-4 mb-2" id="btn_reg"
                                    onclick="checkfield()"
                                    style="background-image:  linear-gradient(195deg, #49a3f1 0%, #49a3f1 100%); box-shadow: 0 4px 20px 0 rgb(0 0 0 / 14%), 0 7px 10px -5px rgb(245 236 239 / 40%) !important;">
                                가입하기
                            </button>
                    </div>
                    <p class="mt-4 text-sm text-center">
                        이미 가입하셨나요?
                        <a href="/user/login" class="text-primary text-gradient font-weight-bold">로그인</a>
                    </p>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<!--   Core JS Files   -->
<!--   Core JS Files   -->
<script src="/assets/js/core/popper.min.js" type="text/javascript"></script>
<script src="/assets/js/core/bootstrap.min.js" type="text/javascript"></script>
<script src="/assets/js/plugins/perfect-scrollbar.min.js"></script>
<!--  Plugin for Parallax, full documentation here: https://github.com/wagerfield/parallax  -->
<script src="/assets/js/plugins/parallax.min.js"></script>
<!-- Control Center for Material UI Kit: parallax effects, scripts for the example pages etc -->
<!--  Google Maps Plugin    -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDTTfWur0PDbZWPr7Pmq8K3jiDp0_xUziI"></script>
<script src="/assets/js/material-kit.min.js" type="text/javascript"></script>

<%--<script>--%>
<%--    $("#user_pwd2").on("propertychange change keyup paste input", function () {--%>
<%--        if ($("#user_pwd").val() == $("#user_pwd2").val()) {--%>
<%--            $("#pwd_res").text("비밀번호가 일치합니다!");--%>
<%--            $("#pwd_res").css('color', 'blue');--%>
<%--        } else {--%>
<%--            $("#pwd_res").text("비밀번호가 일치하지 않습니다");--%>
<%--            $("#pwd_res").css('color', 'red');--%>
<%--        }--%>
<%--    });--%>
<%--</script>--%>
</body>

</html>