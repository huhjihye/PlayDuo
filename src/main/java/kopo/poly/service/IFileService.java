package kopo.poly.service;

import kopo.poly.dto.FileDTO;
import kopo.poly.dto.ImgStudyDTO;

public interface IFileService {

    //DB 파일 업로드
    int fileUpload(FileDTO fDTO) throws Exception;

    // 이미지 단어 학습 정보 저장
    int insertImgStudy(ImgStudyDTO iDTO) throws Exception;

}
