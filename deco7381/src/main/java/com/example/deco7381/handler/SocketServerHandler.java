package com.example.deco7381.handler;

import com.corundumstudio.socketio.SocketIOServer;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
@Component
public class SocketServerHandler implements ApplicationRunner {
    @Resource
    private SocketIOServer socketIOServer;

    @Override
    public void run(ApplicationArguments args) throws Exception {
        socketIOServer.start();

    }
}
