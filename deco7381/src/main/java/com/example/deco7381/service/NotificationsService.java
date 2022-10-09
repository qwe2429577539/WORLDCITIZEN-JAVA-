package com.example.deco7381.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.deco7381.pojo.Notifications;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface NotificationsService extends IService<Notifications> {
    void addNotification(String StudentId,String Content);
    List<Notifications> getNotifications(String StudentId);
}
