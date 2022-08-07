package kopo.poly.controller;

import kopo.poly.dto.UserDTO;
import kopo.poly.service.IUserService;
import kopo.poly.service.impl.UserService;
import kopo.poly.util.CmmUtil;
import lombok.extern.slf4j.Slf4j;
import org.apache.catalina.User;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;


@Slf4j //log.info를 사용하기 위해
@Controller //controller 라고 보여주는 어노테이션
public class UserController {

    @Resource(name = "UserService") // 주입할 서비스나 매퍼 적기 name="서비스 이름"
    private IUserService userService;
    //controller에서 service 호출을 위한 객체를 '인터페이스'로 메모리에 생성
    // -> 변수 선언할 때 넣을 수 있는 옵션이 몇가 있다 대표적으로  자료형 ,변수이름
    // 자바 객체지향의 특징중에 다형성을 쓸 수 있기 때문에 자료형을 어떤 형태로 와도 다 쓸 수 있음. 자료형은 IUserService / 변수명은 userService
    //변수이름 시작은 소문자, 두번째부터는 대문자. --> 국룰
    //변수명은 내가 바꿔도 되지만 보통 국룰을 쓴다.

    @GetMapping(value = "index") // value 값에 url에서 보내온 어떤 요청인지 명시
    public String index() {
        log.info(this.getClass().getName() + ".index start!!"); // 실행했는지 로그 찍어보기
        return "index"; // JSP index 파일을 보여준다. (되돌려준다)
    }

    @GetMapping(value = "user/login") //로그인 페이지를 보여줌
    public String login() {
        log.info(this.getClass().getName() + ".로그인 페이지 시작");
        return "user/login";
    }

    @GetMapping(value="test")
    public String faceidlogin(){
        return "user/test";
    }
    @PostMapping(value = "loginProc") //보통 실행하는 부분은 proc라고 적어줘서 구분을 지어준다. 로그인 실행페이지 요청을 받는다.
    public String login(HttpServletRequest request, Model model) throws Exception { //request : 받는거 / model : 보내는거
        log.info(this.getClass().getName() + ".login start!!");


        String user_id = CmmUtil.nvl(request.getParameter("user_id")); //문자형 user_id 변수를 만들어 널값 함수를 사용해 user_id를 받는다.
        String user_pwd = CmmUtil.nvl(request.getParameter("user_pwd")); //문자형 user_pwd 변수를 만들어 널값 함수를 사용해 user_pwd를 받는다.

        //log.info 찍는 이유 : 에러났을 때 어디부분이 안찍히는지 확인하고 에러 구간 빨리 잡을 수 있음
        log.info("user_id" + user_id);  //console에 입력받은 값 노출
        log.info("user_pwd" + user_pwd);

        UserDTO rDTO = new UserDTO(); //UserDTO 타입 rDTO 변수를 만들어 메모리에 올림
        rDTO.setParent_id(user_id); //Parent_id에 user_id값을 넣고 rDTO에 넣는다
        rDTO.setParent_password(user_pwd);

        int res = userService.selectUserInfo(rDTO);
        log.info("" + res);

        if (res > 0) {
            return "/index";
        } else {
            return "user/userReg";
        }

    }

    @GetMapping(value = "userReg")
    public String userReg() {
        log.info(this.getClass().getName() + "회원가입 페이지 시작!");

        return "user/userReg";
    }


    @PostMapping(value = "userRegProc")
    public String userReg(HttpServletRequest request) throws Exception {
        log.info(this.getClass().getName() + ".userReg start!!");

        String user_id = CmmUtil.nvl(request.getParameter("user_id"));
        String user_email = CmmUtil.nvl(request.getParameter("user_email"));
        String user_pwd = CmmUtil.nvl(request.getParameter("user_pwd"));
        String user_name = CmmUtil.nvl(request.getParameter("user_name"));
        String gender = CmmUtil.nvl(request.getParameter("gender"));

        log.info("user_id: " + user_id);
        log.info("user_email :" + user_email);
        log.info("user_pwd :" + user_pwd);
        log.info("user_name :" + user_name);
        log.info("gender: " + gender);

        UserDTO pDTO = new UserDTO();
        pDTO.setParent_id(user_id);
        pDTO.setParent_email(user_email);
        pDTO.setParent_password(user_pwd);
        pDTO.setParent_name(user_name);
        pDTO.setParent_gender(gender);

        int res = userService.InsertUserInfo(pDTO);


        if (res > 0) {
            return "user/login";
        } else {
            return "index";
        }


    }

    //아이디 중복확인
    @ResponseBody //비동기식 어노테이션
    @PostMapping(value = "user_idcheck") //jsp 파일에서 작성한 이름하고 같게
    public int user_idcheck(HttpServletRequest request) throws Exception {
        log.info(this.getClass().getName() + ".user_idcheck start!!");
        String parent_id = CmmUtil.nvl(request.getParameter("user_id"));
        log.info("user_id : " + parent_id);
        int res = userService.user_idcheck(parent_id);
        log.info("아이디 조회결과는?" + res);

        return res;

    }

    //이메일 중복확인
    @ResponseBody //비동기식 어노테이션
    @PostMapping(value = "user_emailcheck") //jsp 파일에서 작성한 이메일이름하고 같게
    public int user_emailcheck(HttpServletRequest request) throws Exception {
        log.info(this.getClass().getName() + ".user_emailcheck start!!");
        String parent_email = CmmUtil.nvl(request.getParameter("user_email"));
        log.info("user_email : " + parent_email);
        int res = userService.user_emailcheck(parent_email);
        log.info("이메일 조회결과는?" + res);

        return res;

    }


}
