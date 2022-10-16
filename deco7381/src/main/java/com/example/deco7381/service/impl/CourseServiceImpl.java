package com.example.deco7381.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.deco7381.mapper.CourseMapper;
import com.example.deco7381.mapper.StudentCourseMapper;
import com.example.deco7381.mapper.StudentMapper;
import com.example.deco7381.pojo.Course;
import com.example.deco7381.pojo.Student;
import com.example.deco7381.pojo.StudentCourse;
import com.example.deco7381.pojo.vo.GetStudentVo;
import com.example.deco7381.pojo.vo.StudentInfoVo;
import com.example.deco7381.service.CourseService;
import com.example.deco7381.utils.Utils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/**
 * Service Implementation class of course
 */
@Service
public class CourseServiceImpl extends ServiceImpl<CourseMapper, Course> implements CourseService {
    @Resource
    private StudentCourseMapper studentCourseMapper;
    @Resource
    private StudentMapper studentMapper;
    @Resource
    private CourseMapper courseMapper;

    /**
     * get all student lists
     * @param courseId
     * @return
     */
    @Override
    public List<String> getStudentList(String courseId) {
        //initialize a hashmap to store course id
        HashMap<String, Object> courseIdMap = new HashMap<>();
        //put course id in the map
        courseIdMap.put("course_id",courseId);
        //get the student's course list from database by course id map
        List<StudentCourse> studentCourses = studentCourseMapper.selectByMap(courseIdMap);
        ArrayList<String> studentList = new ArrayList<String>();
        //get each student course and put it into student list
        for(StudentCourse studentCourse:studentCourses){
            studentList.add(studentCourse.getStudentId());
        }
        return studentList;
    }

    /**
     * get the student's information
     * @param studentIdList
     * @return
     */
    @Override
    public List<GetStudentVo> getStudentInfo(List<String> studentIdList) {
        //list for storing the student VO
        ArrayList<GetStudentVo> studentList = new ArrayList<>();
        //initialize a student map
        HashMap<String, Object> studentMap = new HashMap<>();
        for(String studentId:studentIdList){
            studentMap.put("student_id",studentId);
            //select all students from database
            List<Student> students = studentMapper.selectByMap(studentMap);
            for(Student student:students){
                GetStudentVo getStudentVo = new GetStudentVo();
                //set img
                getStudentVo.setImgSrc("http://localhost:8080/img/"+student.getStudentId()+".jpg");
                //set id
                getStudentVo.setStudentId(student.getStudentId());
                //set name
                getStudentVo.setName(student.getName());
                //set country
                getStudentVo.setCountry(student.getCountry());
                //set email
                getStudentVo.setEmail(student.getEMail());
                //add the student into student list
                studentList.add(getStudentVo);
            }
        }
        //return student list
        return studentList;
    }

    /**
     * get the course information
     * @param course
     * @return
     */
    @Override
    public Course getCourse(String course) {
        //initialize the LambdaQueryWrapper
        QueryWrapper<Course> courseQueryWrapper = new QueryWrapper<>();
        //if the course is not null
        if (Utils.HasDigit(course)){
            String courseId=course;
            //select the course from database
            courseQueryWrapper.eq("course_id",courseId);
            Course course1 = courseMapper.selectOne(courseQueryWrapper);
            return course1;
        //if the course is null
        }else {
            String courseName=course;
            //select the course from database
            courseQueryWrapper.eq("name",courseName);
            Course course2 = courseMapper.selectOne(courseQueryWrapper);
            return course2;
        }


    }

}
