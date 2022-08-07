package kopo.poly.dto;

import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class ChdDTO {//db속의 칼럼 이름 소문자로 작성 //회원가입, 로그인 다 같이 하나 dto 로 사용
    private String child_name;
    private String child_age;
    private String child_gender;
    private int child_code;
    private String chg_dt;


}
