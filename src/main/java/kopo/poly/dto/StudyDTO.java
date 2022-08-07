package kopo.poly.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class StudyDTO {

    // 학습 DTO
    // sentence stduy
    private String sentence_study_seq;
    private String sentence_content;

    //word study
    //자음 모음 쪼개기
    private String cha;
    private String joong;
    private String jong;
    // DB 조회 단어
    private String word_seq;
    private String word_content;


}
