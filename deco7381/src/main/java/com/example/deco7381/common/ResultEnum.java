package com.example.deco7381.common;

import lombok.Getter;

@Getter
public enum ResultEnum {
    SUCCESS(2000, "Success"),
    ERROR(2001, "Fail"),
    NO_COURSE_FOUND(1101,"No course found"),
    COURSE_FOUND(1100,"Course found"),
    REGISTER_SUCCESS(1005, "Register was successful"),
    REGISTER_FAILED(1004, "Register has failed"),
    LOGIN_ERROR(1007,"User does not exist");

    private Integer code;
    private String message;

    ResultEnum(Integer code, String message) {
        this.code = code;
        this.message = message;
    }
}
