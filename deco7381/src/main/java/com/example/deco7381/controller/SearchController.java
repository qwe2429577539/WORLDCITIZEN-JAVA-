package com.example.deco7381.controller;

import com.example.deco7381.common.R;
import com.example.deco7381.common.ResultEnum;
import com.example.deco7381.pojo.Course;
import com.example.deco7381.pojo.CourseFields;
import com.example.deco7381.pojo.vo.StudentInfoVo;
import com.example.deco7381.service.CourseFieldsService;
import com.example.deco7381.service.CourseService;
import com.example.deco7381.service.StudentService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

@Controller
@CrossOrigin
@RestController
@RequestMapping("/search")

/**
 * A controller for services on search page
 */
public class SearchController {
    @Resource
    private StudentService studentService;
    @Resource
    private CourseService courseService;
    @Resource
    private CourseFieldsService courseFieldsService;

//    @GetMapping("/student")
//    public R getStudent(String studentId){
//        StudentInfoVo student = studentService.getStudent(studentId);
//        return R.ok().resultEnum(ResultEnum.SUCCESS).data("student",student);
//    }

    /**
     * get all the courses
     * @param course
     * @return
     */
    @GetMapping("/course")
    public R getCourse(String course){
        //get the course from database by course's name
        Course course1 = courseService.getCourse(course);
        //if the course is null
        if(course1==null){
            //return error message
            return R.error().resultEnum(ResultEnum.ERROR);
        //if not
        } else {
            //return success message
            return R.ok().resultEnum(ResultEnum.SUCCESS).data("course",course1);
        }
    }

    /**
     * get courses by field
     * @param fieldName
     * @return
     */
    @GetMapping("/field")
    public R getCourseByField(String fieldName){
        //get all courses by field name from database
        List<CourseFields> allCourseByFields = courseFieldsService.getAllCourseByFields(fieldName);
        //return success message
        return R.ok().resultEnum(ResultEnum.SUCCESS).data("courseList",allCourseByFields);
    }

}
