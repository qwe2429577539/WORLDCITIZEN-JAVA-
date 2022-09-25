package com.example.deco7381.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.deco7381.mapper.CourseFieldsMapper;
import com.example.deco7381.pojo.CourseFields;
import com.example.deco7381.service.CourseFieldsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class CourseFieldsServiceImpl extends ServiceImpl<CourseFieldsMapper, CourseFields> implements CourseFieldsService {
    @Resource
    private CourseFieldsMapper courseFieldsMapper;

    @Override
    public List<CourseFields> getCourseFields() {
        LambdaQueryWrapper<CourseFields> lambdaQueryWrapper = new LambdaQueryWrapper<>();
        List<CourseFields> courseFields = courseFieldsMapper.selectList(lambdaQueryWrapper);
        return courseFields;
    }
}
