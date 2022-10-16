package com.example.deco7381.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.deco7381.common.Assert;
import com.example.deco7381.common.R;
import com.example.deco7381.common.ResultEnum;
import com.example.deco7381.pojo.*;

import com.example.deco7381.pojo.UserFriend;
import com.example.deco7381.pojo.vo.GetStudentVo;
import com.example.deco7381.pojo.vo.LoginVO;
import com.example.deco7381.pojo.vo.RegisterRequestVo;
import com.example.deco7381.pojo.vo.StudentInfoVo;
import com.example.deco7381.service.CourseFieldsService;
import com.example.deco7381.service.CourseService;
import com.example.deco7381.service.StudentCourseService;
import com.example.deco7381.service.StudentService;
import com.example.deco7381.utils.JwtUtils;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@CrossOrigin
@RestController
@Controller
@RequestMapping("/user")

/**
 * A controller for services on index page (main page)
 */
public class IndexController {
    @Resource
    private StudentService studentService;
    @Resource
    private CourseService courseService;
    @Resource
    private CourseFieldsService courseFieldsService;
    @Resource
    private StudentCourseService studentCourseService;

    /**
     *Get user's course list
     */
    @RequestMapping("/courseList")
    public R getCourseList(String studentId){
        //get all the courses from database
        List<String> courses = studentService.getCourse(studentId);
        //return success message
        return R.ok().resultEnum(ResultEnum.COURSE_FOUND).data("courseList",courses);
    }

    /**
     *Get all the students under tge course
     */
    @RequestMapping("/studentList")
    public R getStudentInfoList(String courseId){
        //get all student from database
        List<String> students = courseService.getStudentList(courseId);
        //get all student's information from database
        List<GetStudentVo> studentInfo = courseService.getStudentInfo(students);
        //return success message
        return R.ok().resultEnum(ResultEnum.SUCCESS).data("studentList",studentInfo);
    }

    /**
     * get all the friends by user's id
     * @param studentId
     * @return
     */
    @RequestMapping("/friend")
    public R getFriend(String studentId){
        //get all the friends by student id from database
        List<String> friends = studentService.getFriends(studentId);
        //return success message
        return R.ok().resultEnum(ResultEnum.SUCCESS).data("friend",friends);

    }
    /**
     * register function for user
     */
    @PostMapping("/register")
    public R register(@RequestBody RegisterRequestVo rVo) {
        //user registering
        Map<String, Object> resMap = studentService.register(rVo);
        //get the code when registering
        Integer code = (Integer) resMap.get("code");
        //if code is equal to the given code
        if (code.equals(ResultEnum.REGISTER_SUCCESS.getCode()))
            //return success message
            return R.ok().resultEnum(ResultEnum.REGISTER_SUCCESS);
        //if not, return error message
        else return R.error().code(code).message((String) resMap.get("msg"));
    }

    /**
     * login function for user
     */
    @PostMapping("/login")
    public R login(@RequestBody LoginVO loginVO) {
        //get id
        String studentId = loginVO.getStudentId();
        //get password
        String password = loginVO.getPassword();
        //assert it's notEmpty
        Assert.notEmpty(studentId,ResultEnum.LOGIN_ERROR);
        //assert it's notEmpty
        Assert.notEmpty(password,ResultEnum.LOGIN_ERROR);
        //create a login DTO
        StudentInfoVo studentInfoVo = studentService.login(loginVO);
        //return success message
        return R.ok().resultEnum(ResultEnum.SUCCESS).data("studentInfo",studentInfoVo);
    }

    /**
     * get all information of one student by student's id
     * @param studentId
     * @return
     */
    @GetMapping("/getinfo")
    public R getInfo(String studentId){
        //get the information from database
        GetStudentVo info = studentService.getInfo(studentId);
        //return success message
        return R.ok().resultEnum(ResultEnum.SUCCESS).data("info",info);
    }

    /**
     * check the token of the http request
     * @param request
     * @return
     */
    @GetMapping("/checkToken")
    public R checkToken(HttpServletRequest request) {
        //get the token
        String token = request.getHeader("token");
        //check the token if true or not
        boolean result = JwtUtils.checkToken(token);
        //if true
        if(result){
            //return success message
            return R.ok().resultEnum(ResultEnum.SUCCESS);
        //if false
        }else{
            //return error message
            return R.error().resultEnum(ResultEnum.LOGIN_ERROR);
        }
    }

    /**
     * add friend by user's id and friend's id
     * @param map
     * @return
     */
    @PostMapping("/addfriend")
    public R addFriend(@RequestBody Map<String,Object> map){
        //get user's id
        String myId = (String) map.get("myId");
        //get friend's id
        String otherId = (String) map.get("otherId");
        studentService.addFriend(myId,otherId);
        //return success message
        return R.ok().resultEnum(ResultEnum.SUCCESS);
    }

    /**
     * delete friend by user's id and friend's id
     * @param map
     * @return
     */
    @PostMapping("/deletefriend")
    public R deleteFriend(@RequestBody Map<String,Object> map){
        //get user's id
        String myId = (String) map.get("myId");
        //get friend's id
        String friendId = (String) map.get("friendId");
        studentService.deleteFriend(myId,friendId);
        //return success message
        return R.ok().resultEnum(ResultEnum.SUCCESS);
    }


    }


