package com.example.deco7381;

import com.example.deco7381.pojo.Course;
import com.example.deco7381.pojo.Student;
import com.example.deco7381.mapper.HobbiesMapper;
import com.example.deco7381.mapper.NotificationsMapper;
import com.example.deco7381.mapper.StudentCourseMapper;
import com.example.deco7381.pojo.*;
import com.example.deco7381.service.*;
import org.junit.runner.RunWith;
import com.example.deco7381.service.CourseFieldsService;
import com.example.deco7381.service.CourseService;
import com.example.deco7381.service.HobbiesService;
import com.example.deco7381.service.StudentService;

import com.example.deco7381.service.impl.HobbiesServiceImpl;
import org.junit.jupiter.api.Test;
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
    @Resource
    private StudentCourseMapper studentCourseMapper;
    @Resource
    private NotificationsMapper notificationsMapper;
    @Resource
    private NotificationsService notificationsService;
    @Resource
    private PostsService postsService;

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
        List<Hobbies> hobbies = hobbiesService.getHobbies("46725807");
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

    @Test
    /**
     * 读取所有该课程属性下所有课程测试
     */
    public void test7() {
        List<CourseFields> courseFields = courseFieldsService.getAllCourseByFields("EAIT");
    }

    @Test
    /**
     * Adding course by Student
     */
    public void test8() {
        courseFieldsService.addCourse("46725806","DECO7381");
    }

    @Test
    /**
     * Adding Notifications
     */
    public void test9() {
        notificationsService.addNotification("46725806","We're not friends any more...");
    }

    @Test
    /**
     * Getting Notifications
     */
    public void test10() {
        notificationsService.getNotifications("46725806");
    }

    @Test
    /**
     * Adding post
     */
    public void test11() {
        postsService.addPost("46725806","Today is a good day!");
    }

    @Test
    /**
     * Getting post
     */
    public void test12() {
        postsService.getPostsById("46725806");
    }

    @Test
    /**
     * Get random friends with same hobbies
     */
    public void test13() {
        hobbiesService.getRandomFriends("12");
    }
}
