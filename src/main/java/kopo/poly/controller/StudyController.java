package kopo.poly.controller;

import kopo.poly.dto.StudyDTO;
import kopo.poly.service.IStudyService;
import kopo.poly.util.CmmUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import sun.java2d.cmm.kcms.CMM;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Slf4j
@Controller
public class StudyController {
    
    //학습 컨트롤러//
    @Resource(name="StudyService")
    private IStudyService studyService;

    @PostMapping(value = "study/sentenceStudy")
    public String sentenceStudyProc(HttpServletRequest request, ModelMap model)throws Exception{
        log.info(this.getClass().getName()+"문장학습 시작!");

        String study_type = CmmUtil.nvl(request.getParameter("study_type"));
        log.info("선택한 학습 타입은 : " + study_type);

        log.info("자연어 처리한 학습 데이터 가져오기");
        List<StudyDTO> pList = studyService.getSentenceStudy(study_type);
        log.info("가져온 학습 데이터 사이즈 : " + pList.size());

        model.addAttribute("pList", pList);


        return "/study/sentenceStudy";
    }

}
