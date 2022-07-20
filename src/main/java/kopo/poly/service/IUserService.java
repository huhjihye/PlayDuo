package kopo.poly.service;

import kopo.poly.dto.UserDTO;

public interface IUserService {


    int InsertUserInfo(UserDTO pDTO) throws Exception;


    int selectUserInfo(UserDTO rDTO) throws Exception;

    int user_idcheck(String parent_id) throws Exception;

    int user_emailcheck(String parent_email) throws Exception;
}
