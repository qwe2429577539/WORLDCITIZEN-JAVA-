package com.example.deco7381.utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Utils class
 */
public class Utils {
    /**
     * check if the digit is valid or not
     * @param content
     * @return
     */
    public static boolean HasDigit(String content) {
        //flag message
        boolean flag = false;
        Pattern p = Pattern.compile("^.{4}\\d{4}$");
        Matcher m = p.matcher(content);
        //if match
        if (m.matches()) {
            flag = true;
        }
        //return message
        return flag;
    }


}
