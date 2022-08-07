package kopo.poly.util;

public class CmmUtil {
<<<<<<< HEAD
    public static String nvl(String str, String chg_str) {
        String res;

        if (str == null) {
            res = chg_str;
        } else if (str.equals("")) {
            res = chg_str;
        } else {
            res = str;
        }
        return res;
    }

    public static String nvl(String str) {
        return nvl(str, "");
    }
=======
    public static String nvl(String str, String chg_str){
        String res;

        if(str==null){
            res=chg_str;
        }else if(str.equals("")){
            res=chg_str;
        }else{
            res=str;
        }
        return res;
    }
    public static String nvl(String str){ return nvl(str, "");}
>>>>>>> 7e8c973a06253472688fa62021386cd126568f69
}
