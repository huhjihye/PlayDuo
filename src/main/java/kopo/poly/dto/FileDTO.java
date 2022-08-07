package kopo.poly.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class FileDTO {
    private String file_seq;//
    private String file_name;
    private String file_path;
    private String file_orgname;
    private String file_exit;
    private String file_reg_id;
    private String file_reg_dt;
    private String file_chg_id;
    private String file_chg_dt;
}
