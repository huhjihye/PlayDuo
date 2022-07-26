package kopo.poly.service;

import kopo.poly.dto.StudyDTO;

import java.util.List;

public interface IStudyService {

    // 문장학습 데이터 가져오기
    List<StudyDTO> getSentenceStudy(String study_type)throws Exception;

    // 단어학습 데이터 가져오기
    List<StudyDTO> getWordStudy() throws Exception;
}
