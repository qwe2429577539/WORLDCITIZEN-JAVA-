package com.example.deco7381.common;


import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class BusinessException extends RuntimeException{

    //Failed code
    private Integer code;
    //Failed message
    private String message;

    /**
     *
     * @param message Failed code
     */
    public BusinessException(String message) {
        this.message = message;
    }

    /**
     *
     * @param message Failed message
     * @param code Failed code
     */
    public BusinessException(String message, Integer code) {
        this.message = message;
        this.code = code;
    }

    /**
     *
     * @param message Failed message
     * @param code Failed code
     * @param cause Exception object
     */
    public BusinessException(String message, Integer code, Throwable cause) {
        super(cause);
        this.message = message;
        this.code = code;
    }

    /**
     *
     * @param resultCodeEnum Enum Types
     */
    public BusinessException(ResultEnum resultCodeEnum) {
        this.message = resultCodeEnum.getMessage();
        this.code = resultCodeEnum.getCode();
    }

    /**
     *
     * @param resultCodeEnum Enum Types
     * @param cause Exception object
     */
    public BusinessException(ResultEnum resultCodeEnum, Throwable cause) {
        super(cause);
        this.message = resultCodeEnum.getMessage();
        this.code = resultCodeEnum.getCode();
    }
}
