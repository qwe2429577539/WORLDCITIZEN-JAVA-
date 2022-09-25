package com.example.deco7381.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.deco7381.pojo.CourseFields;

import java.util.List;

public interface CourseFieldsService extends IService<CourseFields> {
    List<CourseFields> getCourseFields();
}
