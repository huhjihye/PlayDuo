package kopo.poly.service;

import kopo.poly.dto.ChdDTO;
import kopo.poly.dto.UserDTO;

import java.util.List;

public interface IChildService {


    int InsertChildInfo(ChdDTO pDTO)throws Exception;

    //유아 회원목록 조회//
    List<ChdDTO> chdMemberList()throws Exception;
}
