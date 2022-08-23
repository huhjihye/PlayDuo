package kopo.poly.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@Slf4j
public class MainController {

    //메인페이지를 보여줌
    @GetMapping(value = "mainPage")
    public String main() {
        log.info(this.getClass().getName() + "메인페이지 시작 ");
        return "main/mainPage";
    }

    //마이페이지를 보여줌
    @GetMapping(value="myPage")
    public String myPage(){
        log.info(this.getClass().getName() + "마이페이지 시작 ");
        return "main/myPage";
    }

    @GetMapping(value = "gameSelect")
    public String gameSelect(){
        log.info(this.getClass().getName()+"게임 선택 페이지 시작!");
        return "main/gameSelect";
    }
}
