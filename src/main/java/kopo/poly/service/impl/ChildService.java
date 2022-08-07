package kopo.poly.service.impl;

import kopo.poly.dto.ChdDTO;
import kopo.poly.persistance.mapper.IChildMapper;
import kopo.poly.service.IChildService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service("ChildService")
public class ChildService implements IChildService {
    private final IChildMapper childMapper;

    @Autowired//
    public ChildService(IChildMapper childMapper){ this.childMapper =childMapper;}




    //유아정보 추가 로직
    @Override
    public int InsertChildInfo(ChdDTO pDTO) throws Exception {
        log.info(this.getClass().getName() +"유아 추가 로직 서비스 시작!!!");
        int res = childMapper.InsertChildInfo(pDTO);
        log.info(this.getClass().getName()+ "유아 추가 로직 서비스 끝!!");
        return res;
    }

    //유아 회원목록 조회
    @Override
    public List<ChdDTO> chdMemberList() throws Exception {
        log.info(this.getClass().getName()+"유아회원목록 서비스 시작");
        List<ChdDTO> rList= childMapper.chdMemberList();
        log.info(this.getClass().getName()+"유아회원목록 서비스 종료");

        return rList;
    }





}
