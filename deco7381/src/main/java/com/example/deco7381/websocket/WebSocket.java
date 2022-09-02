package com.example.deco7381.websocket;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.CrossOrigin;

import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@ServerEndpoint("/chat/{userName}")
@Component

public class WebSocket {
    public static final Map<String, Session> sessionMap = new ConcurrentHashMap<>();

    @OnOpen
    public void onOpen(Session session,@PathParam("userName") String userName){
        System.out.println(userName+"连接成功");
        sessionMap.put(userName,session);
    }

    @OnMessage
    public void onMessage(String message){
        System.out.println(message);
    }
}
