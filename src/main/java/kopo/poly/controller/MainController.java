package kopo.poly.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@Slf4j
public class MainController {

    private String alt_title = "";
    private String alt_state = "";
    private String msg = "";
    private String url = "";
    private int res = 0;


    //동영상페이지를 보여줌
    @GetMapping(value = "welcome")
    public String welcome() {
        log.info(this.getClass().getName() + "메인페이지 시작 ");
        return "welcome";
    }

    //메인페이지를 보여줌
    @GetMapping(value = "mainPage")
    public String main() {
        log.info(this.getClass().getName() + "메인페이지 시작 ");
        return "main/mainPage";
    }

    //메인페이지허지혜를 보여줌
    @GetMapping(value = "mainPage2")
    public String main2() {
        log.info(this.getClass().getName() + "메인페이지 시작 ");
        return "main/mainPage2";
    }

    //마이페이지를 보여줌
    @GetMapping(value="myPage")
    public String myPage(){
        log.info(this.getClass().getName() + "마이페이지 시작 ");
        return "main/myPage";
    }


    //학습 선택를 보여줌
    @GetMapping(value="studySelect")
    public String studySelect(){
        log.info(this.getClass().getName() + "마이페이지 시작 ");
        return "main/studySelect";
    }

    @GetMapping(value = "gameSelect")
    public String gameSelect(){
        log.info(this.getClass().getName()+"게임 선택 페이지 시작!");
        return "main/gameSelect";
    }

}
