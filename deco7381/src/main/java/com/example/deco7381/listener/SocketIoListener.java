package com.example.deco7381.listener;

import com.corundumstudio.socketio.SocketIOClient;
import com.corundumstudio.socketio.SocketIOServer;
import com.corundumstudio.socketio.annotation.OnConnect;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Component
@Transactional(rollbackFor = Throwable.class)
public class SocketIoListener {
    @Resource
    private SocketIOServer socketIOServer;
    @OnConnect
    public void eventOnConnect(SocketIOClient client){
        Map<String, List<String>> urlParams = client.getHandshakeData().getUrlParams();
        System.out.println(urlParams);

    }

}
