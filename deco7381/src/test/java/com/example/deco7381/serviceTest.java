package com.example.deco7381;

import com.example.deco7381.mapper.HobbiesMapper;
import com.example.deco7381.pojo.*;
import com.example.deco7381.service.CourseFieldsService;
import com.example.deco7381.service.CourseService;
import com.example.deco7381.service.HobbiesService;
import com.example.deco7381.service.StudentService;

import com.example.deco7381.service.impl.HobbiesServiceImpl;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
public class serviceTest {
    @Resource
    private StudentService studentService;
    @Resource
    private CourseService courseService;
    @Resource
    private HobbiesService hobbiesService;
    @Resource
    private CourseFieldsService courseFieldsService;

    /**
     * 读取该学生的所有课程测试
     */
    @Test
    public void test1() {
        List<String> course = studentService.getCourse("46725806");
        course.forEach(System.out::println);
    }

    /**
     *读取该课程下的所有学生id测试
     */
    @Test
    public void test2() {
        List<String> student = courseService.getStudentList("DECO7381");
        student.forEach(System.out::println);
    }

    /**
     * 读取学生信息测试
     */
    @Test
    public void test3() {
        List<String> students = courseService.getStudentList("DECO7381");
        List<Student> studentInfo = courseService.getStudentInfo(students);
        studentInfo.forEach(System.out::println);
    }

    /**
     * 读取学生爱好测试
     */
    @Test
    public void test4() {
        List<String> hobbies = hobbiesService.getHobbies("46725807");
    }

    /**
     * 读取用户所有朋友测试
     */
    @Test
    public void test5() {
        List<UserFriend> friends = studentService.getFriends("46725807");
    }

    /**
     * 读取所有课程属性测试
     */
    @Test
    public void test6() {
        List<CourseFields> courseFields = courseFieldsService.getCourseFields();
    }
}