package com.example.deco7381.controller;

import com.example.deco7381.common.R;
import com.example.deco7381.common.ResultEnum;
import com.example.deco7381.pojo.Course;
import com.example.deco7381.pojo.vo.StudentInfoVo;
import com.example.deco7381.service.CourseService;
import com.example.deco7381.service.StudentService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@Controller
@RestController
@RequestMapping("/search")
public class SearchController {
    @Resource
    private StudentService studentService;
    @Resource
    private CourseService courseService;

//    @GetMapping("/student")
//    public R getStudent(String studentId){
//        StudentInfoVo student = studentService.getStudent(studentId);
//        return R.ok().resultEnum(ResultEnum.SUCCESS).data("student",student);
//    }
    @GetMapping("/course")
    public R getCourse(String course){
        Course course1 = courseService.getCourse(course);
        if(course1==null){
            return R.error().resultEnum(ResultEnum.ERROR);
        } else {
            return R.error().resultEnum(ResultEnum.SUCCESS).data("course",course1);
        }

    }

}
