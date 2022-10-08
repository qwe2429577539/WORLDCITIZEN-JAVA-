package com.example.deco7381.websocket;

import com.alibaba.fastjson2.JSON;
import com.example.deco7381.pojo.Message;
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

    @OnOpen
    public void onOpen(Session session,@PathParam("studentId") String studentId){

        System.out.println(studentId+"连接成功");
        List<Message> messages = (List<Message>) redisTemplate.opsForValue().get(studentId);
        if(messages!=null){
            redisTemplate.delete(studentId);
            for(Message message:messages){
                String messageJson = JSON.toJSONString(message);
                sendTo(messageJson,session);
            }
        }

    }
    @OnClose
    public void onClose(@PathParam("studentId") String studentId){

        System.out.println(studentId+"断开连接");
    }

    @OnMessage
    public void onMessage(String message){
        Message messageInfo = JSON.parseObject(message, Message.class);
        String to = messageInfo.getTo();
        Session sessionTo = sessionMap.get(to);
        if(sessionTo==null){
            if(redisTemplate.opsForValue().get(to)==null){
                ArrayList<Message> messages = new ArrayList<>();
                messages.add(messageInfo);
                redisTemplate.opsForValue().set(to,messages);
            } else {
                List<Message> messageList = (List<Message>) redisTemplate.opsForValue().get(to);
                messageList.add(messageInfo);
                redisTemplate.opsForValue().set(to,messageList);
            }
        } else {
            sendTo(message,sessionTo);
        }
        System.out.println(messageInfo.getMsg());
    }

    private void sendTo(String message, Session sessionTo) {
        try {
            sessionTo.getBasicRemote().sendText(message);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
