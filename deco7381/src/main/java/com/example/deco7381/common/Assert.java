package com.example.deco7381.common;


import lombok.extern.slf4j.Slf4j;
import org.springframework.util.StringUtils;

@Slf4j
public class Assert {

    /**
     * Assert the object is not null
     * If the object is null then throw Exception
     * @param obj
     * @param responseEnum
     */
    public static void notNull(Object obj, ResultEnum responseEnum){
        if(obj == null){
            log.info("obj is null.....................");
            throw new BusinessException(responseEnum);
        }
    }


    /**
     * Assert the object is null
     * If the object is not null then throw Exception
     * @param object
     * @param responseEnum
     */
    public static void isNull(Object object, ResultEnum responseEnum) {
        if (object != null) {
            log.info("obj is not null......");
            throw new BusinessException(responseEnum);
        }
    }

    /**
     * Assert the expression is ture
     * if it's not true, then throw Exception
     *
     * @param expression
     */
    public static void isTrue(boolean expression, ResultEnum responseEnum) {
        if (!expression) {
            log.info("fail...............");
            throw new BusinessException(responseEnum);
        }
    }

    /**
     * Assert the two obj are not equivalent
     * if it's equivalent then throw Exception
     * @param m1
     * @param m2
     * @param responseEnum
     */
    public static void notEquals(Object m1, Object m2,  ResultEnum responseEnum) {
        if (m1.equals(m2)) {
            log.info("equals...............");
            throw new BusinessException(responseEnum);
        }
    }

    /**
     * Assert the two obj are equivalent
     * if it's not equivalent then throw Exception
     * @param m1
     * @param m2
     * @param responseEnum
     */
    public static void equals(Object m1, Object m2,  ResultEnum responseEnum) {
        if (!m1.equals(m2)) {
            log.info("not equals...............");
            throw new BusinessException(responseEnum);
        }
    }

    /**
     * Assert the parameter are empty
     * if it's not empty then throw Exception
     * @param s
     * @param responseEnum
     */
    public static void notEmpty(String s, ResultEnum responseEnum) {
        if (StringUtils.isEmpty(s)) {
            log.info("is empty...............");
            throw new BusinessException(responseEnum);
        }
    }

}
