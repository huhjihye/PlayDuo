package kopo.poly.service;

import kopo.poly.dto.UserDTO;

public interface IUserService {


    int InsertUserInfo(UserDTO pDTO) throws Exception;


    int user_idcheck(String parent_id)throws Exception;

    int user_emailcheck(String parent_email)throws Exception;

    //로그인 실행//
    int loginProc(UserDTO rDTO)throws Exception;

    int passwordChangeProc(UserDTO pDTO)throws Exception;


}
