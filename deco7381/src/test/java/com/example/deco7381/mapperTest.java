package com.example.deco7381;

import com.example.deco7381.pojo.Course;
import com.example.deco7381.pojo.Student;
import com.example.deco7381.pojo.StudentCourse;
import com.example.deco7381.mapper.CourseMapper;
import com.example.deco7381.mapper.StudentCourseMapper;
import com.example.deco7381.mapper.StudentMapper;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
public class mapperTest {
    @Resource
    private StudentMapper studentMapper;
    @Resource
    private CourseMapper courseMapper;
    @Resource
    private StudentCourseMapper studentCourseMapper;

    @Test
    public void test1(){
        Student student = new Student();
        student.setName("Jiahao Lu");
        student.setStudentId("4672580");
        student.setCountry("China");
        student.setEMail("chrissnkrs@outlook.com");
        int result = studentMapper.insert(student);
        System.out.println(result);
    }
    @Test
    public void test2(){
        Course course = new Course();
        course.setCourseId("DECO7381");
        course.setName("Studio 3 - Build");
        int result = courseMapper.insert(course);
        System.out.println(result);
    }
    @Test
    public void test3(){
        StudentCourse studentCourse = new StudentCourse();
        studentCourse.setCourseId("DECO7381");
        studentCourse.setStudentId("46725806");
        int result = studentCourseMapper.insert(studentCourse);
        System.out.println(result);
    }
    @Test
    public void test4(){
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("student_id","46725806");
        List<Student> students = studentMapper.selectByMap(hashMap);
        students.forEach(System.out::println);
    }
    @Test
    public void test5(){
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("student_id","46725806");
        List<StudentCourse> studentCourses = studentCourseMapper.selectByMap(hashMap);
        studentCourses.forEach(System.out::println);
    }
    @Test
    public void test6(){
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("student_id","46725805");
        List<StudentCourse> studentCourses = studentCourseMapper.selectByMap(hashMap);
        studentCourses.forEach(System.out::println);
    }


}
