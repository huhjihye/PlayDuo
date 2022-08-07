<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" itemscope itemtype="http://schema.org/WebPage">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="apple-touch-icon" sizes="76x76" href="">
  <link rel="icon" type="image/png" href="/assets/img/favicon.png">
  <title>유아 추가</title>
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css"
    href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
  <!-- Nucleo Icons -->
  <link href="/assets/css/nucleo-icons.css" rel="stylesheet" />
  <link href="/assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- Font Awesome Icons -->
  <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
  <!-- Material Icons -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
  <!-- CSS Files -->
  <link id="pagestyle" href="/assets/css/material-kit.css" rel="stylesheet" />

  <script src="/js/jquery-3.6.0.min.js"></script>    <!--제이쿼리를 사용하겠다고 jsp에 넣어주는거. import 기능 -->

  <script type="text/javascript">


    //유효성 검사 실행시에만 가입하기 버튼 누를 수 있음
    function checkfield() {

      if ($('#child_name').val().trim() === '') {
        $('#child_name').text('이름는 공백일 수 없습니다');
        return false;
      }
      if ($('#child_age').val().trim() === '') {
        alert("나이는 공백일 수 없습니다.");
        $("#child_age").text.text('나이는 공백일 수 없습니다');
        return false;
      }
      if ($('[name="child_gender"]:checked').length == 0) {
        alert("성별은 공백일 수 없습니다.");
        return false;
      }


      document.getElementById("chdAdd").submit();

    }
  </script>

    </head>

<body class="sign-in-basic">
  <div class="page-header align-items-start min-vh-100">
    <span class="mask bg-gradient-dark opacity-6" style="background-image: linear-gradient(195deg, #ffffff 0%, #ffffff 100%);"></span>
    <div class="container my-auto">
      <div class="row">
        <div class="col-lg-4 col-md-8 col-12 mx-auto">
          <div class="card z-index-0 fadeIn3 fadeInBottom">
            <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
              <div class="bg-gradient-primary shadow-primary border-radius-lg py-3 pe-1" style="background-image:  linear-gradient(195deg, #49a3f1 0%, #49a3f1 100%); box-shadow: 0 4px 20px 0 rgb(0 0 0 / 14%), 0 7px 10px -5px rgb(245 236 239 / 40%) !important; color:#42424a !important">
                <h4 class="text-white font-weight-bolder text-center mt-2 mb-0">유아추가</h4>
              </div>
            </div>
            <div class="card-body">
              <form role="form" class="text-start" action="/chdAddProc" method="post" id="chdAdd">
                <div class="input-group input-group-outline my-3">
                  <label class="form-label">유아 이름을 입력하세요</label>
                  <input type="text" class="form-control" name="child_name" id="child_name">
                </div>
                <div class="input-group input-group-outline mb-3">
                  <label class="form-label">유아 나이를 입력하세요</label>
                  <input type="text" class="form-control" name="child_age" id="child_age">
                </div>
                <div class="input-group input-group-outline mb-3" name ="child_gender" id="child_gender">
                  <span style="margin:auto;"><input type="radio" name="child_gender" value="man">남자</span>
                  <span style="margin: auto;"><input type="radio" name="child_gender" value="woman">여자</span>
                  <div class="text-center"></div>
                </div>

                <button type="button" class="btn bg-gradient-primary w-100 my-4 mb-2" id="btn_reg" onclick="checkfield()"

                        style="background-image:  linear-gradient(195deg, #49a3f1 0%, #49a3f1 100%); box-shadow: 0 4px 20px 0 rgb(0 0 0 / 14%), 0 7px 10px -5px rgb(245 236 239 / 40%) !important;">
                  유아 정보 입력
                </button>

              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--   Core JS Files   -->
  <script src="/assets/js/core/popper.min.js" type="text/javascript"></script>
  <script src="/assets/js/core/bootstrap.min.js" type="text/javascript"></script>
  <script src="/assets/js/plugins/perfect-scrollbar.min.js"></script>
  <!--  Plugin for Parallax, full documentation here: https://github.com/wagerfield/parallax  -->
  <script src="/assets/js/plugins/parallax.min.js"></script>
  <!-- Control Center for Material UI Kit: parallax effects, scripts for the example pages etc -->
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDTTfWur0PDbZWPr7Pmq8K3jiDp0_xUziI"></script>
  <script src="/assets/js/material-kit.min.js?v=3.0.0" type="text/javascript"></script>
</head>

</html>