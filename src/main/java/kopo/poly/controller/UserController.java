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
import javax.servlet.http.HttpSession;


@Slf4j //log.info를 사용하기 위해//
@Controller //controller 라고 보여주는 어노테이션
public class UserController {

    @Resource(name = "UserService") // 주입할 서비스나 매퍼 적기 name="서비스 이름"
    private IUserService userService;
    //controller에서 service 호출을 위한 객체를 '인터페이스'로 메모리에 생성
    // -> 변수 선언할 때 넣을 수 있는 옵션이 몇가 있다 대표적으로  자료형 ,변수이름
    // 자바 객체지향의 특징중에 다형성을 쓸 수 있기 때문에 자료형을 어떤 형태로 와도 다 쓸 수 있음. 자료형은 IUserService / 변수명은 userService
    //변수이름 시작은 소문자, 두번째부터는 대문자. --> 국룰
    //변수명은 내가 바꿔도 되지만 보통 국룰을 쓴다.

    //index 페이지 표시
    @GetMapping(value = "index") // value 값에 url에서 보내온 어떤 요청인지 명시
    public String index() {
        log.info(this.getClass().getName() + ".index start!!"); // 실행했는지 로그 찍어보기
        return "index"; // JSP index 파일을 보여준다. (되돌려준다)
    }

    //로그인 페이지를 보여줌
    @GetMapping(value = "user/login")
    public String login()  {
        log.info(this.getClass().getName() + ".로그인 페이지 시작");
        return "user/login";
    }

    //마이페이지를 보여줌
    @GetMapping(value="myPage")
    public String myPage(){
        log.info(this.getClass().getName() + "마이페이지 시작 ");
        return "user/myPage";
    }

    //비밀번호 변경 로직 페이지
    @GetMapping(value="passwordChange")
    public String passwordChange() {
        log.info(this.getClass().getName() + "비밀번호 변경 로직 페이지 시작 ");
        return "user/passwordChange";
    }


//비밀번호 변경 로직 실행
    @PostMapping(value = "passwordChangeProc")
    public String passwordChangeProc(HttpSession session, HttpServletRequest request)throws Exception{
        log.info(this.getClass().getName() + "비밀번호 변경 로직 실행 시작 ");

        String parent_password = CmmUtil.nvl(request.getParameter("parent_password"));
        log.info("parent_password" + parent_password);

        String parent_id=(String) session.getAttribute("parent_id"); //로그인할때 메모리에 올려놓았던 id session을 꺼내서 쓴다!

        UserDTO pDTO =new UserDTO();
        pDTO.setParent_password(parent_password);
        pDTO.setParent_id(parent_id);//로그인할때 메모리에 올려놓았던 id session을 다시 dto에 넣어준다.

        int res=userService.passwordChangeProc(pDTO);

        if(res==1){
            return "user/myPage";
        }else{
            return "user/passwordChange";
        }
    }

    //부모 로그인 로직
    @PostMapping(value = "loginProc") //보통 실행하는 부분은 proc라고 적어줘서 구분을 지어준다. 로그인 실행페이지 요청을 받는다.
    public String loginProc(HttpServletRequest request, Model model, HttpSession session) throws Exception { //request : 받는거 / model : 보내는거
        log.info(this.getClass().getName() + ".loginProc start!!");

       //request로 받아와서 String에 저장
        String parent_id = CmmUtil.nvl(request.getParameter("parent_id")); //문자형 user_id 변수를 만들어 널값 함수를 사용해 user_id를 받는다.
        String parent_password = CmmUtil.nvl(request.getParameter("parent_password"));

        //log.info 찍는 이유 : 에러났을 때 어디부분이 안찍히는지 확인하고 에러 구간 빨리 잡을 수 있음
        log.info("parent_id" + parent_id);  //console에 입력받은 값 노출
        log.info("parent_password" + parent_password);

        //DTO에 객체 생성
        UserDTO rDTO = new UserDTO();

        // DTO 담기
        rDTO.setParent_id(parent_id);
        rDTO.setParent_password(parent_password);

        //세션에 ID 담기
        session.setAttribute("parent_id",rDTO.getParent_id());

        String msg;
        String url;
        int res = userService.loginProc(rDTO); //서비스로 보내기

        if (res == 0) {

            msg="로그인 실패";
          url= "user/login";
        } else {

            msg="로그인 성공";
            url= "main";
        }

        model.addAttribute("msg",msg);
       model.addAttribute("url",url);

       return "alert";


    }

//회원가입 페이지를 보여줌
    @GetMapping(value = "userReg")
    public String userReg() {
        log.info(this.getClass().getName() + "회원가입 페이지 시작!");

        return "user/userReg";
    }


    @PostMapping(value = "userRegProc")
    public String userRegProc(HttpServletRequest request) throws Exception {
        log.info(this.getClass().getName() + ".userReg start!!");

        String parent_id = CmmUtil.nvl(request.getParameter("parent_id"));
        String parent_email = CmmUtil.nvl(request.getParameter("parent_email"));
        String parent_password = CmmUtil.nvl(request.getParameter("parent_password"));
        String parent_name = CmmUtil.nvl(request.getParameter("parent_name"));
        String parent_gender = CmmUtil.nvl(request.getParameter("parent_gender"));

        log.info("parent_id: " + parent_id);
        log.info("parent_email :" + parent_email);
        log.info("parent_password :" + parent_password);
        log.info("parent_name :" + parent_name);
        log.info("parent_gender: " + parent_gender);

        UserDTO pDTO = new UserDTO();
        pDTO.setParent_id(parent_id);
        pDTO.setParent_email(parent_email);
        pDTO.setParent_password(parent_password);
        pDTO.setParent_name(parent_name);
        pDTO.setParent_gender(parent_gender);

        int res = userService.userRegProc(pDTO);


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
        String parent_id = CmmUtil.nvl(request.getParameter("parent_id"));
        log.info("parent_id : " + parent_id);
        int res = userService.user_idcheck(parent_id);
        log.info("아이디 조회결과는?" + res);

        return res;

    }

    //이메일 중복확인
    @ResponseBody //비동기식 어노테이션
    @PostMapping(value = "user_emailcheck") //jsp 파일에서 작성한 이메일이름하고 같게
    public int user_emailcheck(HttpServletRequest request) throws Exception {
        log.info(this.getClass().getName() + ".user_emailcheck start!!");
        String parent_email = CmmUtil.nvl(request.getParameter("parent_email"));
        log.info("parent_email : " + parent_email);
        int res = userService.user_emailcheck(parent_email);
        log.info("이메일 조회결과는?" + res);

        return res;

    }
//    @GetMapping(value="password")
//    public String password()throws Exception{
//        log.info(this.getClass().getName() + "비밀번호 변경 페이지 시작 ");
//        return "user/password";
//    }




}
