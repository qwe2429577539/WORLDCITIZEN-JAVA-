package com.example.deco7381.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.deco7381.mapper.NotificationsMapper;
import com.example.deco7381.mapper.StudentMapper;
import com.example.deco7381.pojo.Notifications;

import com.example.deco7381.pojo.Student;
import com.example.deco7381.service.NotificationsService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
public class NotificationsServiceImpl extends ServiceImpl<NotificationsMapper, Notifications> implements NotificationsService {

    @Autowired
    private NotificationsMapper notificationsMapper;
    @Autowired
    private StudentMapper studentMapper;

    @Override
    public void addNotification(String StudentId, String Content) {
        LambdaQueryWrapper<Student> studentLambdaQueryWrapper = new LambdaQueryWrapper<>();
        studentLambdaQueryWrapper.eq(Student::getStudentId, StudentId);
        String studentName = studentMapper.selectOne(studentLambdaQueryWrapper).getName();
        Notifications notifications = new Notifications();
        notifications.setContent(Content);
        notifications.setStudentName(studentName);
        notifications.setStudentId(StudentId);
        notificationsMapper.insert(notifications);
        log.info("Adding notification successfully!");
    }

    @Override
    public List<Notifications> getNotifications(String StudentId) {
        LambdaQueryWrapper<Notifications> notificationsLambdaQueryWrapper = new LambdaQueryWrapper<>();
        notificationsLambdaQueryWrapper.eq(Notifications::getStudentId, StudentId);
        List<Notifications> notificationsList = notificationsMapper.selectList(notificationsLambdaQueryWrapper);
        log.info("Get all the notifications");
        return notificationsList;
    }
}
