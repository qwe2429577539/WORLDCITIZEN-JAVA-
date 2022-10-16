package com.example.deco7381.common;

import lombok.Data;

import java.util.HashMap;
import java.util.Map;

@Data
public class R {
    private Boolean success;
    private Integer code;
    private String message;


    private Map<String, Object> data = new HashMap<>();

    //Make the constructor private
    private R() {
    }

    //static method successful
    public static R ok() {
        R r = new R();
        r.setSuccess(true);
        r.resultEnum(ResultEnum.SUCCESS);
        return r;
    }

    //static method failed
    public static R error() {
        R r = new R();
        r.setSuccess(false);
        r.resultEnum(ResultEnum.ERROR);
        return r;
    }

    //result enum
    public R resultEnum(ResultEnum resultEnum) {
        this.code(resultEnum.getCode());
        this.message(resultEnum.getMessage());
        return this;
    }
    //success method
    public R success(Boolean success) {
        this.setSuccess(success);
        return this;
    }
    //corresponding message
    public R message(String message) {
        this.setMessage(message);
        return this;
    }
    //corresponding code
    public R code(Integer code) {
        this.setCode(code);
        return this;
    }
    //corresponding data
    public R data(String key, Object value) {
        this.data.put(key, value);
        return this;
    }
    //corresponding data
    public R data(Map<String, Object> map) {
        this.setData(map);
        return this;
    }
}

