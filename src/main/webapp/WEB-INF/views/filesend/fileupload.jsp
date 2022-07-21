<%@ page import="java.io.FileReader" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width,initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>파일업로드</title>
    <script src="/js/jquery-3.6.0.min.js"></script>
    <script src="/js/boardWriteTag.js"></script>
    <script type="text/javascript" src="http://form-serialize.googlecode.com/svn/trunk/serialize-0.2.min.js"></script>
    <link href="/assets/css/boardWrite.css" rel="stylesheet"/>
    <script src="/js/city.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
    <script type="text/javascript">

        window.onload = function () {
            //여기는 동적 태그 생성
            $(function () {
                let count = 0;
                $(".btn_001").click(function () {
                    count = write_append();

                });
                //img-btn클릭시 input file 클릭
                $(document).on("click", ".photo_btn", function photo_event(e) {
                    e.preventDefault();
                    $('#file').click();
                });

                // 파일 객체에 변화가 일어났을때 발생하는 이벤트
                document.getElementById('file').addEventListener('change', readURL, true);
                // 파일 배열에 담을 변수
                let self_file = [];

                //파일 객체 읽어와서 배열에 담아줌
                function readURL(e) {
                    let files = document.getElementById("file").files[0];
                    console.log(files);
                    let reader = new FileReader();
                    reader.onloadend = function () {
                        //자동으로 생성되는 객체 id값 지정 순서대로 증가
                        let test = "input-image" + count;
                        console.log(test);
                        //자동으로 생성된 아이디에 src 읽어온 파일 url로 교체 preview
                        $('#' + test).attr('src', reader.result);
                    }
                    //파일 정보 배열에 담기
                    self_file.push(files);
                    console.log(self_file);

                    if (files) {
                        reader.readAsDataURL(this.files[0]);
                    } else {
                    }
                }

                //파일 전송
                $(document).on("click", "#send_form", function () {
                    let formData = new FormData($("#uploadFile")[0]);
                    if (self_file.length >= 0) {
                        self_file.forEach(function (f) {
                            formData.append("self_file", f);
                        });
                        console.log(formData);
                        $.ajax({
                            url: "/board/boardWriteProc",
                            data: formData,
                            type: 'POST',
                            enctype: 'multipart/form-data',
                            processData: false,
                            contentType: false,
                            dataType: 'json',
                            cache: false,
                            success: function (res) {
                                console.log("success");
                            }, error: function (res) {
                                console.log("fail : " + res);
                            }
                        });
                    }
                });
            });
        }


    </script>
</head>
<body>
<div class="top_001" style="position: static; top: 0px; left: 0px; right: 0px;">
    <form  name="form" action="/board/boardWriteProc" id="uploadFile" method="post" enctype="multipart/form-data">
        <div class="top_002">
            <div class="top_003" style="height: 80px;">
                <div class="top_004"
                     style="position: fixed; transition: top 0.1s ease 0s; top: 0px; width: 1880px;">
                    <div class="top_005">
                        <a class="a_001">
                            <svg class="icon"></svg>
                        </a>
                        <div class="top_006">
                            <button type="button" class="btn_002"
                                    style="background-color: rgb(53,197,240); margin-right: 60px" id="send_form">
                                <span class="sp_001">올리기</span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="main_001" id="main_001">
            <div class="main_002">

                <div class="main_003">

                    <div class="main_004" style="margin-left: 400px;">
                        <button type="button" class="btn_001"
                                style="background-color: rgb(53,197,240); margin-right: 60px">
                            <span class="sp_001">게시글 추가하기</span>
                        </button>
                    </div>
                    <div>
                        <input type="file" multiple="multiple" name="file" class="file_01" id="file"
                               style="display: none;"
                               onChange="readURL(e);">
                    </div>
                </div>
            </div>
            <div class="warp_main">
                <div class="main_005"></div>
                <ol class="ol_001">
                    <li class="li_001"></li>
                </ol>
                <ol class="ol_002">
                    <li class="li_001">
                        <div class="warp_001">
                            <div class="warp_002">
                                <div class="photo_001">
                                    <button class="photo_btn" onclick="photo_event();">
                                        <div class="photo_002" id="">
                                            <img src="" style="width: 100%; height: 100%; object-fit: cover;"
                                                 id="input-image0">
                                        </div>
                                    </button>
                                </div>
                                <div class="write_001">
                                    <div class="write_002">
                                        <div class="title_001">
                                            <span><h4>단어</h4> <input type="text" class="title_002" name="title"
                                                                              style="margin-top: 10px;"></span>
                                        </div>
                                        <textarea class="detail_001" placeholder="설명을 적어주세요" rows="6"
                                                  style="overflow: hidden; overflow-wrap: break-word; height: 145px;"
                                                  name="board_content"></textarea>

                                    </div>
                                </div>
                            </div>

                        </div>
                    </li>
                </ol>
            </div>
        </div>
    </form>
</div>
</body>

</html>