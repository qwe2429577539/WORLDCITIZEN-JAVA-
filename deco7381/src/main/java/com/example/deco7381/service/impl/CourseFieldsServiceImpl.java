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
/**
 * Service Implementation class of course fields
 */
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

    /**
     * delete course by student's id and course's id
     * @param studentId
     * @param courseId
     */
    @Override
    public void deleteCourse(String studentId, String courseId) {
        //initialize the LambdaQueryWrapper
        LambdaQueryWrapper<StudentCourse> studentCourseLambdaQueryWrapper = new LambdaQueryWrapper<>();
        //delete the course by course's id and student's id
        studentCourseLambdaQueryWrapper.eq(StudentCourse::getCourseId,courseId).eq(StudentCourse::getStudentId,studentId);
        studentCourseMapper.delete(studentCourseLambdaQueryWrapper);
    }

    /**
     * get all course fields
     * @return
     */
    @Override
    public List<CourseFields> getCourseFields() {
        //initialize the QueryWrapper
        QueryWrapper<CourseFields> queryWrapper = new QueryWrapper<>();
        //select all the distinct fields name from database
        queryWrapper.select("DISTINCT field_name").orderByAsc("field_name");
        List<CourseFields> courseFields = courseFieldsMapper.selectList(queryWrapper);
        //return all distinct fields
        return courseFields;
    }

    /**
     * get all courses by fields
     * @param courseField
     * @return
     */
    @Override
    public List<CourseFields> getAllCourseByFields(String courseField) {
        //initialize the LambdaQueryWrapper
        LambdaQueryWrapper<CourseFields> lambdaQueryWrapper = new LambdaQueryWrapper<>();
        //get all course by the field's name
        lambdaQueryWrapper.eq(CourseFields::getFieldName,courseField);
        List<CourseFields> courseFields = courseFieldsMapper.selectList(lambdaQueryWrapper);
        //return all courses
        return courseFields;
    }

    /**
     * add course by student's id and course's id
     * @param studentId
     * @param courseId
     */
    @Override
    public void addCourse(String studentId,String courseId) {
        //initialize the LambdaQueryWrapper
        LambdaQueryWrapper<Student> lambdaQueryWrapper = new LambdaQueryWrapper<>();
        //initialize the studentCourse
        StudentCourse studentCourse = new StudentCourse();
        //select the student with student's id from database
        lambdaQueryWrapper.eq(Student::getStudentId,studentId);
        Student student =studentMapper.selectOne(lambdaQueryWrapper);
        String name = student.getName();
        //set student id
        studentCourse.setStudentId(studentId);
        //set course id
        studentCourse.setCourseId(courseId);
        //set student name
        studentCourse.setStudentName(name);
        //insert it into database
        studentCourseMapper.insert(studentCourse);
    }
}
