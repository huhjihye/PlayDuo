package kopo.poly.persistance.mapper;

import kopo.poly.dto.UserDTO;
import org.apache.ibatis.annotations.Mapper;

import javax.jws.soap.SOAPBinding;

@Mapper
public interface IUserMapper {
//
    int InsertUserInfo(UserDTO pDTO) throws Exception;

    UserDTO user_idcheck(String parent_id) throws Exception;

    UserDTO user_emailcheck(String parent_email)throws Exception;

    //로그인 실행
    UserDTO loginProc(UserDTO rDTO)throws Exception;

    //비밀번호 변경 로직 실행
    int passwordChangeProc(UserDTO pDTO)throws Exception;

}
