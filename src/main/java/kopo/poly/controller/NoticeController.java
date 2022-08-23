package kopo.poly.controller;

import kopo.poly.dto.ChdDTO;
import kopo.poly.dto.NoticeDTO;
import kopo.poly.service.IChildService;
import kopo.poly.service.INoticeService;
import kopo.poly.util.CmmUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Random;


@Slf4j //log.info를 사용하기 위해//
@Controller //controller 라고 보여주는 어노테이션
public class NoticeController {

    @Resource(name = "NoticeService") // 주입할 서비스나 매퍼 적기 name="서비스 이름"
    private INoticeService noticeService;

    @GetMapping(value = "noticeMain")
    public String noticeMain(){
        log.info(this.getClass().getName()+"게시판 메인 페이지 시작!");
        return "notice/noticeMain";
    }

    //고객센터 페이지 표시
    @GetMapping(value = "noticeWrite") // value 값에 url에서 보내온 어떤 요청인지 명시
    public String mainNotice() {
<<<<<<< HEAD
        log.info(this.getClass().getName() + ".고객센터 페이지 시작!!"); // 실행했는지 로그 찍어보기
        return "notice/mainNotice"; // JSP index 파일을 보여준다. (되돌려준다)
=======
        log.info(this.getClass().getName() + "1대1 게시글 작성 시작!!"); // 실행했는지 로그 찍어보기
        return "notice/noticeWrite"; // JSP index 파일을 보여준다. (되돌려준다)
    }

    @GetMapping(value = "noticeChg") //게시글 수정 페이지
    public String noticeChg(){
        log.info(this.getClass().getName()+"게시글 수정 시작!");
        return "notice/noticeChg";
    }

    @GetMapping(value = "noticeList") //게시글 리스트 페이지
    public String noticeList(){
        log.info(this.getClass().getName()+"게시글 리스트 페이지 시작!");
        return "notice/noticeList";
    }
    @GetMapping(value ="userQuestion") //자주 묻는 질문 페이지
    public String userQuestion(){
        log.info(this.getClass().getName()+"자주 묻는 질문 페이지 시작!");
        return "notice/userQuestion";
>>>>>>> 1e39a667dbc5c558893ff75c7af2a2d372ad59b2
    }

@PostMapping(value = "notice")
    public String notice(HttpServletRequest request, ModelMap model)throws Exception{
        log.info(this.getClass().getName()+"게시글 등록 시작");

            String reg_id=CmmUtil.nvl(request.getParameter("reg_id"));
            String chg_id=CmmUtil.nvl(request.getParameter("chg_id"));
            String board_content=CmmUtil.nvl(request.getParameter("board_content"));

            log.info("reg_id :" +reg_id);
            log.info("chg_id :" +chg_id);
            log.info("board_content :" +board_content);

            NoticeDTO pDTO =new NoticeDTO();

            pDTO.setReg_id(reg_id);
            pDTO.setChg_id(chg_id);
            pDTO.setBoard_content(board_content);

           int res= noticeService.notice(pDTO);
           String msg;

           if(res>0) {
               msg = "등록에 성공했습니다.";
           }else{
               msg="등록에 실패했습니다";
        }
           model.addAttribute("msg",msg);

           log.info(this.getClass().getName()+"게시물등록 끝");

        return "/notice/notice";
}


}
