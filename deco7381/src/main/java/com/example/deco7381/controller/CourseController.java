package com.example.deco7381.controller;

import com.example.deco7381.common.R;
import com.example.deco7381.common.ResultEnum;
import com.example.deco7381.pojo.CourseFields;
import com.example.deco7381.service.CourseFieldsService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Controller
@RestController
@CrossOrigin
@RequestMapping("/course")

/**
 * A controller for services on course page
 */
public class CourseController {
    @Resource
    private CourseFieldsService courseFieldsService;

    /**
     * add course in this page
     * @param map
     * @return
     */
    @PostMapping("/add")
    public R addCourse(@RequestBody Map<String,Object> map){
        //get the student id
        String studentId= (String) map.get("studentId");
        //get the course id
        String courseId= (String) map.get("courseId");
        //add the course by student id and course id
        courseFieldsService.addCourse(studentId,courseId);
        //return success message
        return R.ok().resultEnum(ResultEnum.SUCCESS);
    }

    /**
     * get all the course's fields
     * @return
     */
    @GetMapping("/getfield")
    private R getAllField(){
        //get all course's fields from database
        List<CourseFields> courseFields = courseFieldsService.getCourseFields();
        //return success message
        return R.ok().resultEnum(ResultEnum.SUCCESS).data("fields",courseFields);
    }

    /**
     * delete the course by student id and course id
     * @param map
     * @return
     */
    @PostMapping("/delete")
    public R deleteCourse(@RequestBody Map<String,Object> map){
        //get the student id
        String studentId = (String) map.get("studentId");
        //get the course id
        String courseId = (String) map.get("courseId");
        //delete the course from database
        courseFieldsService.deleteCourse(studentId,courseId);
        //return success message
        return R.ok().resultEnum(ResultEnum.SUCCESS);
    }
}
