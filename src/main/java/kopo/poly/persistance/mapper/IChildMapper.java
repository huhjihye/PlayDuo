package kopo.poly.persistance.mapper;

import kopo.poly.dto.ChdDTO;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface IChildMapper {

//유아 정보 추가//
    int InsertChildInfo(ChdDTO pDTO)throws Exception;

//유아 회원목록 조회
    List<ChdDTO> chdMemberList()throws Exception;
}
