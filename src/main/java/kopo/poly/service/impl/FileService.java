package kopo.poly.service.impl;

import kopo.poly.dto.FileDTO;
import kopo.poly.dto.ImgStudyDTO;
import kopo.poly.persistance.mapper.IFileMapper;
import kopo.poly.service.IFileService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("FileService")
@Slf4j
public class FileService implements IFileService {

    // 파일 업로드 //
    private final IFileMapper fileMapper;

    @Autowired
    public FileService(IFileMapper fileMapper) {
        this.fileMapper = fileMapper;
    }

    @Override
    public int fileUpload(FileDTO fDTO) throws Exception {
        log.info(this.getClass().getName()+"DB 파일 업로드 시작!");
        int res = 0; // DB 저장 결과값
        int fseq = 0; // 저장하고 반환받은 file_seq
        if(fDTO == null){
            fDTO = new FileDTO();
        }

        res = fileMapper.fileUpload(fDTO);

        if(res == 1){
            log.info(this.getClass().getName()+"DB 파일 업로드 종료! seq 반환 완료!");
            fseq = Integer.parseInt(fDTO.getFile_seq());
            return fseq;
        }else{
            log.info(this.getClass().getName()+"DB 파일 업로드 오류 발생");
            return res;
        }



    }

    @Override
    public int insertImgStudy(ImgStudyDTO iDTO) throws Exception {
        log.info(this.getClass().getName()+"이미지 학습 정보 저장 시작!");

        int res = 0;

        if(iDTO == null){
            iDTO = new ImgStudyDTO();
        }

        res = fileMapper.insertImgStudy(iDTO);
        log.info(this.getClass().getName()+"이미지 학습 정보 저장 종료!");
        return res;
    }
}
