package kopo.poly.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class NoticeDTO {//db속의 칼럼 이름 소문자로 작성 //회원가입, 로그인 다 같이 하나 dto 로 사용//
    private String reg_id;
    private String reg_date;
    private String chg_id;
    private String chg_date;
    private String board_content;


}
