package kopo.poly.service.impl;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import kopo.poly.dto.StudyDTO;
import kopo.poly.persistance.mapper.IStudyMapper;
import kopo.poly.service.IStudyService;
import kopo.poly.util.UrlUtil;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Slf4j
@Service("StudyService")
public class StudyService implements IStudyService {
    //싱글톤 객체 생성//
    private final IStudyMapper studyMapper;

    @Autowired
    public StudyService(IStudyMapper studyMapper) {
        this.studyMapper = studyMapper;
    }

    @Override
    public List<StudyDTO> getSentenceStudy(String study_type) throws Exception {
        log.info(this.getClass().getName()+"단어학습 가져오기 서비스 시작!");

        log.info("가져온 학습 타입 : " + study_type);


        List<StudyDTO> rList = studyMapper.getSentenceStudy();
        log.info("가져온 문장학습 리스트 크기 " + rList.size());

        JSONArray jsonArray = new JSONArray();

        for(StudyDTO pDTO : rList){
            JSONObject obj = new JSONObject();
            obj.put("sentence_study_seq",pDTO.getSentence_study_seq());
            obj.put("sentence_content", pDTO.getSentence_content());

            jsonArray.add(obj);
        }
        log.info("JSON 변환 결과 : " + jsonArray);

        UrlUtil uu = new UrlUtil();

        String url ="";
        String api = "";
        String spring_sentence = "";
        String fullPath = uu.urlReadforString(url+api);
        log.info("문장학습 자연어 처리 결과 : " + fullPath);

        JSONParser parser = new JSONParser();
        JSONArray jsonArray_res = (JSONArray) parser.parse(fullPath);

        StudyDTO sDTO =null;
        List<StudyDTO> pList = new ArrayList<>();
        for(int i = 0; i<jsonArray_res.size(); i++){
            sDTO = new StudyDTO();
            JSONObject object = (JSONObject) jsonArray_res.get(i);

            sDTO.setSentence_study_seq((String) object.get("sentence_study_seq"));
            sDTO.setSentence_content((String) object.get("sentence_content"));

            pList.add(sDTO);

        }
        log.info(this.getClass().getName()+"단어학습 가져오기 서비스 종료!");

        return pList;
    }

    @Override
    public List<StudyDTO> getWordStudy() throws Exception {
        log.info(this.getClass().getName()+"단어 자음 모음 분리 서비스 시작!");

        // DB 조회 결과 담을 List
        List<StudyDTO> pList = new ArrayList<>();
        List<StudyDTO> rList = new ArrayList<>();

        pList = studyMapper.getWordStudy();
        log.info("가져온 단어 학습 수는 : " + pList.size());

       // rList = WordStudyUtil.wordSplit(pList);
        log.info("자른 데이터 결과는 ? " + rList.size());
        log.info(this.getClass().getName()+"단어 자음 모음 분리 서비스 종료!");

        return null;
    }
}
