package kopo.poly.persistance.mapper;

import kopo.poly.dto.NoticeDTO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface INoticeMapper {

    //게시판 글 등록
   int notice(NoticeDTO pDTO) throws Exception;
//

}
