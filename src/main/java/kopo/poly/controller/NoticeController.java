package kopo.poly.controller;

import kopo.poly.dto.ChdDTO;
import kopo.poly.service.IChildService;
import kopo.poly.service.INoticeService;
import kopo.poly.util.CmmUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Random;


@Slf4j //log.info를 사용하기 위해//
@Controller //controller 라고 보여주는 어노테이션
public class NoticeController {

    @Resource(name = "NoticeService") // 주입할 서비스나 매퍼 적기 name="서비스 이름"
    private INoticeService noticeService;

    //고객센터 페이지 표시
    @GetMapping(value = "mainNotice") // value 값에 url에서 보내온 어떤 요청인지 명시
    public String mainNotice() {
        log.info(this.getClass().getName() + ".고객센터 페이지 시작!!"); // 실행했는지 로그 찍어보기
        return "user/mainNotice"; // JSP index 파일을 보여준다. (되돌려준다)
    }




}
