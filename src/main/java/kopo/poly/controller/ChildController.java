package kopo.poly.controller;

import kopo.poly.dto.ChdDTO;
import kopo.poly.service.IChildService;
import kopo.poly.util.CmmUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;


@Slf4j //log.info를 사용하기 위해
@Controller //controller 라고 보여주는 어노테이션
public class ChildController {

    @Resource(name = "ChildService") // 주입할 서비스나 매퍼 적기 name="서비스 이름"
    private IChildService childService;



    //유아 추가 페이지를 보여줌
    @GetMapping(value = "chdAdd")
    public String chdAdd() {
        log.info(this.getClass().getName() + "유아 추가 페이지 시작!");

        return "user/chdAdd";
    }

    //유아 추가 로직 실행
    @PostMapping(value = "chdAddProc")
    public String chdAddProc(HttpServletRequest request) throws Exception {
        log.info(this.getClass().getName() + "유아 추가 로직 시작!");

        //이미지 받아오기도 추가하기!!
        String child_name = CmmUtil.nvl(request.getParameter("child_name"));
        String child_age = CmmUtil.nvl(request.getParameter("child_age"));
        String child_gender = CmmUtil.nvl(request.getParameter("child_gender"));

        Random random = new Random(); //랜덤으로 인증번호 생성 함수
        int child_code = random.nextInt(888888) + 111111;   //인증번호

        log.info("child_name: " + child_name);
        log.info("child_age :" + child_age);
        log.info("child_gender :" + child_gender);
        log.info("child_code :" + child_code);


        ChdDTO pDTO = new ChdDTO();
        pDTO.setChild_name(child_name);
        pDTO.setChild_age(child_age);
        pDTO.setChild_gender(child_gender);
        pDTO.setChild_code(child_code);


        int res = childService.InsertChildInfo(pDTO);


        if (res > 0) {
            log.info("메인으로 갑시다");
            return "user/main";
        } else {
            return "user/chdAdd";
        }

    }

    //유아 회원목록 페이지를 보여줌
    @GetMapping(value = "chdMember")
    public String chdMemberList( HttpServletRequest request, Model model) throws Exception {
        log.info(this.getClass().getName()+"유아회원목록페이지 시작");


        List<ChdDTO> rList = childService.chdMemberList();
        log.info(String.valueOf(rList.size()));
        if(rList == null){
            rList=new ArrayList<>();
        }
        model.addAttribute("rList", rList);

        log.info(this.getClass().getName()+"유아회원목록 페이지 끝!");

        return "user/chdMember";
    }


}
