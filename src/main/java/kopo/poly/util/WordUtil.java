//package kopo.poly.util;
//
//import com.github.kimkevin.hangulparser.HangulParser;
//
//import java.util.ArrayList;
//import java.util.List;
//
//public class WordUtil {
//    //단어 학습//
//    public static List<List<String>> main(String[] args) throws Exception {
//        String [] word = {"사과","딸기","배"};
//        //String [] word_res = new String[word.length];
//
//        List<List<String>> word_res = new ArrayList<>();
//
//        List<String> jasoList = new ArrayList<>();
//        for(int i = 0; i<word.length; i++) {
//            jasoList = HangulParser.disassemble(word[i]);
//            word_res.add(jasoList);
//        }
//
//        return word_res;
//    }
//
//}
