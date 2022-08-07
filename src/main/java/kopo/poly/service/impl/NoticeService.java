package kopo.poly.service.impl;

import kopo.poly.dto.UserDTO;
import kopo.poly.persistance.mapper.INoticeMapper;
import kopo.poly.persistance.mapper.IUserMapper;
import kopo.poly.service.INoticeService;
import kopo.poly.service.IUserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Slf4j
@Service("NoticeService")//
public class NoticeService implements INoticeService {
    private final INoticeMapper noticeMapper;

    @Autowired
    public NoticeService(INoticeMapper noticeMapper){this.noticeMapper =noticeMapper;}



}
