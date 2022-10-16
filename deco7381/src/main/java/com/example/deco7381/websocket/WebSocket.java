package com.example.deco7381.websocket;

import com.alibaba.fastjson2.JSON;
import com.example.deco7381.pojo.Message;
import com.example.deco7381.pojo.vo.GetStudentVo;
import com.fasterxml.jackson.databind.util.JSONPObject;
import org.apache.tomcat.util.json.JSONParser;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.CrossOrigin;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 * Core function of chat page
 */
@ServerEndpoint("/chat/{studentId}")
@Component
public class WebSocket {
    private static final Map<String, Session> sessionMap = new ConcurrentHashMap<>();
    @Resource
    private RedisTemplate<String, Object> redis;


    private static RedisTemplate redisTemplate;

    @PostConstruct
    public void initialRedis(){
        redisTemplate=this.redis;
    }

    /**
     * Connection on open a session
     * @param session
     * @param studentId
     */
    @OnOpen
    public void onOpen(Session session,@PathParam("studentId") String studentId){
        //return a success message
        System.out.println(studentId+"connect successfully");
        //put session into session map
        sessionMap.put(studentId,session);
        //get all history message
        List<Message> messages = (List<Message>) redisTemplate.opsForValue().get(studentId);
        //if message is not null, put it into the session
        if(messages!=null){
            redisTemplate.delete(studentId);
            for(Message message:messages){
                String messageJson = JSON.toJSONString(message);
                sendTo(messageJson,session);
            }
        }

    }

    /**
     * Connection on close a session
     * @param studentId
     */
    @OnClose
    public void onClose(@PathParam("studentId") String studentId){
        //return the closed message
        System.out.println(studentId+"close connection");
    }

    /**
     * condition of sending message
     * @param message
     */
    @OnMessage
    public void onMessage(String message){
        Message messageInfo = JSON.parseObject(message, Message.class);
        GetStudentVo getStudentVo = JSON.parseObject(messageInfo.getTo(), GetStudentVo.class);
        System.out.println(getStudentVo);
        String toString=getStudentVo.getStudentId();
        Session sessionTo=sessionMap.get(toString);
        if(sessionTo==null){
            System.out.println(sessionMap);
            if(redisTemplate.opsForValue().get(toString)==null){
                ArrayList<Message> messages = new ArrayList<>();
                messages.add(messageInfo);
                redisTemplate.opsForValue().set(toString,messages);
            } else {
                List<Message> messageList = (List<Message>) redisTemplate.opsForValue().get(toString);
                messageList.add(messageInfo);
                redisTemplate.opsForValue().set(toString,messageList);
            }
        } else {
            sendTo(message,sessionTo);
        }
        System.out.println(messageInfo.getContent());
    }

    /**
     * the person that message should be sent to
     * @param message
     * @param sessionTo
     */
    private void sendTo(String message, Session sessionTo) {
        try {
            sessionTo.getBasicRemote().sendText(message);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
