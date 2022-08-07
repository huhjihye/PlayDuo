package kopo.poly.persistance.mapper;

import kopo.poly.dto.FileDTO;
import kopo.poly.dto.ImgStudyDTO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IFileMapper {
    
    /*
    * @param FileDTO fDTO 파일 정보 확인////
    * @return insert 된 file_seq
    * */
    int fileUpload(FileDTO fDTO) throws Exception;

    /*
    * @param ImgStudyDTO iDTO 이미지 단어 학습 정보
    * @return insert 결과
    * */
    int insertImgStudy(ImgStudyDTO iDTO) throws Exception;
}
