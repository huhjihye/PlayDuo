package kopo.poly.service.impl;

import kopo.poly.dto.UserDTO;
import kopo.poly.persistance.mapper.IUserMapper;
import kopo.poly.service.IUserService;
import kopo.poly.util.CmmUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service("UserService")
public class UserService implements IUserService {
    private final IUserMapper userMapper;

    @Autowired
    public UserService(IUserMapper userMapper){this.userMapper =userMapper;}


    @Override
    public int InsertUserInfo(UserDTO pDTO) throws Exception {
        log.info(this.getClass().getName() +"InsertUserInfo start !!");
        int res = userMapper.InsertUserInfo(pDTO);
        log.info(this.getClass().getName()+ "InsertUserInfo END!!");
        return res;
    }

    //로그인 실행
    @Override
    public int loginProc(UserDTO rDTO) throws Exception {
        log.info(this.getClass().getName()+"selectUserInfo start!!");

        int res=0; //교수님 코드 따라한거. 전역으로 빼서 초기화 시켜주고 해야 return값을 줄 수 있다.

        if(rDTO==null){
            rDTO=new UserDTO();  //SELECT를 했는데 조회결과가 없을 수도 있으니까  , 다시 메모리에 올려라 . 메모리에 강제로 다시 올려줌
        }

        UserDTO aDTO =userMapper.loginProc(rDTO);

        try {
            if (aDTO.getParent_id().length() > 0) {
                log.info(this.getClass().getName() + "loginProc end!!");
                return 1;
            } else {
                log.info(this.getClass().getName() + "loginProc end!!");
                return 0;

            }
        }catch (NullPointerException e){
                log.info(this.getClass().getName()+"loginProc end!!");
                return 0;

            }
        }
//비밀번호 변경 로직 페이지
    @Override
    public int passwordChangeProc(UserDTO pDTO) throws Exception {
        log.info(this.getClass().getName()+"passwordChangeProc start!!");
        int res=userMapper.passwordChangeProc(pDTO);
        log.info(this.getClass().getName()+"passwordChangeProc end!!");
        return res;
    }


    @Override
    public int user_idcheck(String parent_id) throws Exception {
        log.info(this.getClass().getName() +"user_idcheck start!!");

        int res=0;

        UserDTO pDTO= new UserDTO();
        pDTO=userMapper.user_idcheck(parent_id);  //pDTO에 PARENT_ID가 들어옴

        if(pDTO != null){
            res=1;
        }
        return res;
    }

    @Override
    public int user_emailcheck(String parent_email) throws Exception {
        log.info(this.getClass().getName()+"user_emailcheck start!!");

        int res=0;

        UserDTO pDTO =new UserDTO();
        pDTO=userMapper.user_emailcheck(parent_email);

        if(pDTO !=null){
            res=1;
        }
        return res;
    }
}
