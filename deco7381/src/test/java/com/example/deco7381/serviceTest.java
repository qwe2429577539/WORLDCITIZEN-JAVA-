package com.example.deco7381;

import com.example.deco7381.pojo.Course;
import com.example.deco7381.mapper.StudentCourseMapper;
import com.example.deco7381.pojo.*;
import com.example.deco7381.pojo.vo.GetStudentVo;
import com.example.deco7381.service.*;

import org.junit.jupiter.api.Test;
import org.springframework.boot.system.ApplicationHome;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Set;

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
    private ChannelPostsService channelPostsService;

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
        List<GetStudentVo> studentInfo = courseService.getStudentInfo(students);
        studentInfo.forEach(System.out::println);
    }
    @Test
    public void test9(){
        Course deco7100 = courseService.getCourse("deco7100");
        if(deco7100==null){
            System.out.println("yes");
        }
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
        List<String> friends = studentService.getFriends("46725806");
        System.out.println(friends);
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
    public void test10(){
        courseFieldsService.addCourse("46725806","CSSE1001");
    }

    @Test
    public void test11(){
        hobbiesService.addHobbies("46725807","Novel");
    }

    @Test
    public void test12(){
        hobbiesService.deleteHobby("46725806","Sport");
    }

    @Test
    public void test13(){
        HashMap<String, Set<GetStudentVo>> randomFriends = hobbiesService.getRandomFriends("46725806");
        System.out.println(randomFriends);
    }
    @Test
    public void test14(){
        channelPostsService.addPost("46725807","DailyLife","I haven't played basketball for a long time. Can someone play basketball with me?");
    }

    @Test
    public void test15(){
        List<ChannelPosts> dailyLife = channelPostsService.getAllPosts("DailyLife");
        System.out.println(dailyLife);
    }
    @Test
    public void test16(){
        studentService.deleteFriend("46725806","46725809");
    }

    @Test
    public void test17(){
        String property ="file:"+System.getProperty("user.dir")+"\\src\\main\\resources\\static\\img\\";
        String path=property.replaceAll("\\\\","/");
        String test="file:D:/deco7381/deco7381/src/main/resources/static/img/";
        System.out.println(test);
        System.out.println(path);


    }
}
