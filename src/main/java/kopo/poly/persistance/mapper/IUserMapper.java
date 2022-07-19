package kopo.poly.persistance.mapper;

import kopo.poly.dto.UserDTO;
import org.apache.ibatis.annotations.Mapper;

import javax.jws.soap.SOAPBinding;

@Mapper
public interface IUserMapper {

    int InsertUserInfo(UserDTO pDTO) throws Exception;

    UserDTO selectUserInfo(UserDTO rDTO) throws Exception;

    UserDTO user_idcheck(String parent_id) throws Exception;

    UserDTO user_emailcheck(String parent_email)throws Exception;
}
