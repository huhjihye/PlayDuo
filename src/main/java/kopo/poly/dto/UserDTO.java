package kopo.poly.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UserDTO {//db속의 칼럼 이름 소문자로 작성 //회원가입, 로그인 다 같이 하나 dto 로 사용
    private String parent_id;
    private String parent_email;
    private String parent_password;
    private String parent_name;
    private String parent_gender;
    private String reg_dt;


}
