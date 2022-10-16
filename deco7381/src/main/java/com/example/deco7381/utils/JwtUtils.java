package com.example.deco7381.utils;

import com.example.deco7381.common.BusinessException;
import com.example.deco7381.common.ResultEnum;
import io.jsonwebtoken.*;


import org.springframework.util.StringUtils;

import javax.crypto.spec.SecretKeySpec;
import javax.xml.bind.DatatypeConverter;
import java.security.Key;
import java.util.Date;

/**
 * JwtUtils class
 */
public class JwtUtils {
    //tokenExpiration time
    private static long tokenExpiration = 24*60*60*1000;
    //token SignKey of user
    private static String tokenSignKey = "A1t2g3uigu123456";

    /**
     * get the key instance
     * @return
     */
    private static Key getKeyInstance(){
        SignatureAlgorithm signatureAlgorithm = SignatureAlgorithm.HS256;
        byte[] bytes = DatatypeConverter.parseBase64Binary(tokenSignKey);
        return new SecretKeySpec(bytes,signatureAlgorithm.getJcaName());

    }

    /**
     * create token when login
     * @param studentId
     * @return
     */
    public static String createToken(String studentId) {
        String token = Jwts.builder()
                .setSubject("SRB-USER")
                .setExpiration(new Date(System.currentTimeMillis() + tokenExpiration))
                .claim("studentId", studentId)
                .signWith(SignatureAlgorithm.HS512, getKeyInstance())
                .compressWith(CompressionCodecs.GZIP)
                .compact();
        return token;
    }

    /**
     * check the token if valid or not
     * @param token
     * @return
     */
    public static boolean checkToken(String token) {
        if(StringUtils.isEmpty(token)){
            return false;
        }
        try {
            Jwts.parser().setSigningKey(getKeyInstance()).parseClaimsJws(token);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    /**
     * get the student id
     * @param token
     * @return
     */
    public static String getStudentId(String token) {
        Claims claims = getClaims(token);
        return (String)claims.get("studentId");
    }

    /**
     * remove token
     * @param token
     */
    public static void removeToken(String token) {

    }

    /**
     * check token and return Claims
     * @param token
     * @return
     */
    private static Claims getClaims(String token) {
        if(StringUtils.isEmpty(token)) {
            // LOGIN_AUTH_ERROR(-211, "failed"),
            throw new BusinessException(ResultEnum.LOGIN_ERROR);
        }
        try {
            Jws<Claims> claimsJws = Jwts.parser().setSigningKey(getKeyInstance()).parseClaimsJws(token);
            Claims claims = claimsJws.getBody();
            return claims;
        } catch (Exception e) {
            throw new BusinessException(ResultEnum.LOGIN_ERROR);
        }
    }
}

