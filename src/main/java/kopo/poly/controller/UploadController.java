package kopo.poly.controller;

import kopo.poly.dto.FileDTO;
import kopo.poly.dto.ImgStudyDTO;
import kopo.poly.service.IFileService;
import kopo.poly.service.IS3UploadService;
import kopo.poly.util.DateUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@Slf4j
public class UploadController{

    //이미지 업로드//
    @Resource(name = "S3UploadService")
    private IS3UploadService s3UploadService;

    @Resource(name = "FileService")
    private IFileService fileService;

    @GetMapping(value = "filesend/fileupload")
    public String fileupload(){
        log.info(this.getClass().getName()+"파일 업로드 페이지 시작!");

        return "filesend/fileupload";
    }

    @PostMapping(value = "/uploadS3")
    public String uploadS3(HttpServletRequest request, MultipartHttpServletRequest mft)throws Exception{
        log.info(this.getClass().getName()+"s3파일 업로드 시작!");

        int file_res = 0; //파일 업로드 확인
        int img_res = 0; // 단어 업로드 확인
        int count = 0; // 배열로 담은 단어 count
        FileDTO fDTO = null; // 파일 업로드 DTO
        ImgStudyDTO iDTO = null; // 그림학습 단어 담는 DTO 생성

        //같은 name 값이 여러개이면 values로 받아서 배열에 넣어준다.
        String[] word = request.getParameterValues("words");
        String[] content = request.getParameterValues("contents");

        List<MultipartFile> fileList = null;
        fileList = mft.getFiles("self_file");

        for(MultipartFile mf : fileList){
            //원본 파일 이름
            String originalFileName = mf.getOriginalFilename();

            // 파일 확장자 가져오기
            String ext = originalFileName
                    .substring(originalFileName.lastIndexOf(".") + 1).toLowerCase();

            // 저장되는 파일이름 (영어, 숫자로 파일명 변경)
            String saveFileName = DateUtil.getDateTime("24hhmmss") + "." + ext;

            log.info("원본파일 이름! : " + originalFileName);
            log.info("저장 파일 이름 !" + saveFileName);
            //저장경로
            String saveFilePath = s3UploadService.fileUpload(mf, saveFileName);
            //풀 경로
            String fullFileInfo = saveFilePath + "/" + saveFileName;
            fDTO = new FileDTO();

            fDTO.setFile_name(saveFileName);
            fDTO.setFile_path(saveFilePath);
            fDTO.setFile_orgname(originalFileName);
            fDTO.setFile_exit(ext);
            fDTO.setFile_reg_id("flora");
            fDTO.setFile_chg_id("flora");

            file_res = fileService.fileUpload(fDTO);

            if(file_res >= 1){
                iDTO = new ImgStudyDTO();
                iDTO.setFile_seq(String.valueOf(file_res));
                iDTO.setAnswer(word[count]);
                iDTO.setAnswer(content[count]);

                img_res=fileService.insertImgStudy(iDTO);
            }
            count++;

        }

        log.info(this.getClass().getName()+"s3파일 업로드 종료!");

        return "filesend/fileupload";
    }


}
