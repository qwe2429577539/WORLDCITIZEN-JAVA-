package com.example.deco7381.utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Utils {
    public static boolean HasDigit(String content) {
        boolean flag = false;
        Pattern p = Pattern.compile("^.{4}\\d{4}$");
        Matcher m = p.matcher(content);
        if (m.matches()) {
            flag = true;
        }
        return flag;
    }


}
