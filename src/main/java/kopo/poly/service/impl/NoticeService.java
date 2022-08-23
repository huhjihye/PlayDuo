package kopo.poly.service.impl;

import kopo.poly.dto.NoticeDTO;
import kopo.poly.persistance.mapper.INoticeMapper;
import kopo.poly.service.INoticeService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Slf4j
@Service("NoticeService")//
public class NoticeService implements INoticeService {
    private final INoticeMapper noticeMapper;

    @Autowired
    public NoticeService(INoticeMapper noticeMapper){this.noticeMapper =noticeMapper;}

    //게시글 등록
@Transactional
    @Override
    public int notice(NoticeDTO pDTO)throws Exception{
        log.info(this.getClass().getName()+"게시판 등록 시작");
        noticeMapper.notice(pDTO);
        log.info(this.getClass().getName()+"게시판 등록 끝");
    return noticeMapper.notice(pDTO);
}

}
