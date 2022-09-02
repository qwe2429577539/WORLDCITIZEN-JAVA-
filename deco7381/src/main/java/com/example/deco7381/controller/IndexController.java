package com.example.deco7381.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.deco7381.common.Assert;
import com.example.deco7381.common.R;
import com.example.deco7381.common.ResultEnum;
import com.example.deco7381.pojo.Student;

import com.example.deco7381.pojo.vo.LoginVO;
import com.example.deco7381.pojo.vo.RegisterRequestVo;
import com.example.deco7381.pojo.vo.StudentInfoVo;
import com.example.deco7381.service.CourseService;
import com.example.deco7381.service.StudentService;
import com.example.deco7381.utils.JwtUtils;

import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Map;

@CrossOrigin
@RestController
@RequestMapping("/user")
public class IndexController {
    @Resource
    private StudentService studentService;
    @Resource
    private CourseService courseService;

    /**
     *获取该学生的选课列表
     */
    @RequestMapping("/courseList")
    public R getCourseList(String studentId){
        List<String> courses = studentService.getCourse(studentId);
        return R.ok().resultEnum(ResultEnum.COURSE_FOUND).data("courseList",courses);
    }

    /**
     *获取选了这门课的所有学生
     */
    @RequestMapping("/studentList")
    public R getStudentInfoList(String courseId){
        List<String> students = courseService.getStudentList(courseId);
        List<Student> studentInfo = courseService.getStudentInfo(students);
        return R.ok().resultEnum(ResultEnum.SUCCESS).data("studentList",studentInfo);
    }
    /**
     * 用户注册
     */
    @PostMapping("/register")
    public R register(@RequestBody RegisterRequestVo rVo) {
        Map<String, Object> resMap = studentService.register(rVo);
        Integer code = (Integer) resMap.get("code");
        if (code.equals(ResultEnum.REGISTER_SUCCESS.getCode()))
            return R.ok().resultEnum(ResultEnum.REGISTER_SUCCESS);
        else return R.error().code(code).message((String) resMap.get("msg"));
    }

    /**
     * 登录
     */
    @PostMapping("/login")
    public R login(@RequestBody LoginVO loginVO) {
        String studentId = loginVO.getStudentId();
        String password = loginVO.getPassword();
        Assert.notEmpty(studentId,ResultEnum.LOGIN_ERROR);
        Assert.notEmpty(password,ResultEnum.LOGIN_ERROR);
        StudentInfoVo studentInfoVo = studentService.login(loginVO);
        return R.ok().resultEnum(ResultEnum.SUCCESS).data("studentInfo",studentInfoVo);
    }
    @GetMapping("/checkToken")
    public R checkToken(HttpServletRequest request) {

        String token = request.getHeader("token");
        boolean result = JwtUtils.checkToken(token);

        if(result){
            return R.ok().resultEnum(ResultEnum.SUCCESS);
        }else{
            return R.error().resultEnum(ResultEnum.LOGIN_ERROR);
        }

    }
    }


