package kopo.poly.service;

import kopo.poly.dto.NoticeDTO;

public interface INoticeService {

//게시판 등록
int notice(NoticeDTO pDTO)throws Exception;
}
