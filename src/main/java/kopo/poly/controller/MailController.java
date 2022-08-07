package kopo.poly.controller;

import kopo.poly.dto.MailDTO;
import kopo.poly.service.IMailService;
import kopo.poly.util.CmmUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

@Slf4j
@Controller
public class MailController {

    @Resource(name = "MailService")
    private IMailService mailService;

    //메일인증 보내기
    @ResponseBody
    @PostMapping(value = "user_sendmail")
    public Map<String, String> user_sendmail(HttpServletRequest request) throws Exception {
        log.info(this.getClass().getName() + "user_sendmail start!!");

        String user_email = CmmUtil.nvl(request.getParameter("user_email")); //이메일주소 받기
        log.info("user_email" + user_email);

        Random random = new Random(); //랜덤으로 인증번호 생성 함수
        int randomPin = random.nextInt(888888) + 111111;   //인증번호

        String title = " 반갑습니다.환영합니다"; //제목
        String contents = "( 인증번호: " + randomPin + ")";  //내용
        log.info("randomPiN: "+randomPin);


        MailDTO pDTO = new MailDTO(); //
        pDTO.setToMail(user_email); //이메일 주소
        pDTO.setTitle(title);  //제목
        pDTO.setContents(contents);  // 내용
        pDTO.setRandomPin(randomPin); // 랜덤인증번호


        int res = mailService.doSendmail(pDTO); //결과값을 받아가야합니다. MAP으로 갑시다.

        if (res == 1) {
            log.info(this.getClass().getName() + "메일 발송 성공!");
        } else {
            log.info(this.getClass().getName() + "메일 발송 실패!");
        }

        /*jsp에서 실시간으로 res값과 randomPin값을 받기위해 map 형태로 변환*/
        /*AJAX의 반환값은 컨트롤러에서만 바뀌는게 아니라 JSP의 AJAX 구문 datatype도 json이라고 명시해줘야 한다.*/
        Map<String, String> pMap = new HashMap<>();
        pMap.put("res", String.valueOf(res));
        pMap.put("randomPin", String.valueOf(randomPin));
        /**/

        return pMap;
    }


}