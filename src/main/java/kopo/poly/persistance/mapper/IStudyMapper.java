package kopo.poly.persistance.mapper;


import kopo.poly.dto.StudyDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface IStudyMapper {

    /*
    * @param 문장학습 시작시 전체조회 
    * @return 램덤으로 가져온 조회 결과 확인
    * */
    List<StudyDTO> getSentenceStudy()throws Exception;

    /*
    * @param 단어학습 시작시 랜덤 조회
    * @return 랜덤으로 가져온 조회 결과
    * */
    List<StudyDTO> getWordStudy() throws Exception;

}
