package com.example.deco7381.controller;

import com.example.deco7381.pojo.Notifications;
import com.example.deco7381.service.NotificationsService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin
@RestController
@Slf4j
@RequestMapping("/notification")
public class NotificaitonController {
    @Autowired
    private NotificationsService notificationsService;


    /**
     * Get all notifications from this user
     * @param studentId
     * @return
     */
    public List<Notifications> getAllNotifications(String studentId){
        List<Notifications> notifications = notificationsService.getNotifications(studentId);
        return notifications;
    }

}
