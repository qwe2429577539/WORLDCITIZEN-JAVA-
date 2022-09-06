package com.example.deco7381;

import com.example.deco7381.pojo.Student;
import com.example.deco7381.service.CourseService;
import com.example.deco7381.service.StudentService;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;
import java.util.List;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
public class serviceTest {
    @Resource
    private StudentService studentService;
    @Resource
    private CourseService courseService;
    @Test
    public void test1(){
        List<String> course = studentService.getCourse("46725806");
        course.forEach(System.out::println);
    }
    @Test
    public void test2(){
        List<String> student = courseService.getStudentList("DECO7381");
        student.forEach(System.out::println);
    }
    @Test
    public void test3(){
        List<String> students = courseService.getStudentList("DECO7381");
        List<Student> studentInfo = courseService.getStudentInfo(students);
        studentInfo.forEach(System.out::println);
    }
}
