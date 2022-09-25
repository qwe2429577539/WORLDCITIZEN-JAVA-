package com.example.deco7381.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.deco7381.mapper.CourseFieldsMapper;
import com.example.deco7381.mapper.CourseMapper;
import com.example.deco7381.mapper.StudentCourseMapper;
import com.example.deco7381.mapper.StudentMapper;
import com.example.deco7381.pojo.Course;
import com.example.deco7381.pojo.CourseFields;
import com.example.deco7381.pojo.Student;
import com.example.deco7381.pojo.StudentCourse;
import com.example.deco7381.service.CourseFieldsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class CourseFieldsServiceImpl extends ServiceImpl<CourseFieldsMapper, CourseFields> implements CourseFieldsService {
    @Resource
    private CourseFieldsMapper courseFieldsMapper;
    @Autowired
    private StudentCourseMapper studentCourseMapper;
    @Autowired
    private CourseMapper courseMapper;
    @Autowired
    private StudentMapper studentMapper;

    @Override
    public List<CourseFields> getCourseFields() {
        QueryWrapper<CourseFields> queryWrapper = new QueryWrapper<>();
        queryWrapper.select("DISTINCT field_name").orderByAsc("field_name");
        List<CourseFields> courseFields = courseFieldsMapper.selectList(queryWrapper);
        return courseFields;
    }

    @Override
    public List<CourseFields> getAllCourseByFields(String courseField) {
        LambdaQueryWrapper<CourseFields> lambdaQueryWrapper = new LambdaQueryWrapper<>();
        lambdaQueryWrapper.eq(CourseFields::getFieldName,courseField);
        List<CourseFields> courseFields = courseFieldsMapper.selectList(lambdaQueryWrapper);
        return courseFields;
    }

    @Override
    public void addCourse(String studentId,String courseId) {
        LambdaQueryWrapper<Student> lambdaQueryWrapper = new LambdaQueryWrapper<>();
        StudentCourse studentCourse = new StudentCourse();
        lambdaQueryWrapper.eq(Student::getStudentId,studentId);
        Student student =studentMapper.selectOne(lambdaQueryWrapper);
        String name = student.getName();
        studentCourse.setStudentId(studentId);
        studentCourse.setCourseId(courseId);
        studentCourse.setStudentName(name);
        studentCourseMapper.insert(studentCourse);
    }
}
