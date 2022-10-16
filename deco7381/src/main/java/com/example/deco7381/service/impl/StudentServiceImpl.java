package com.example.deco7381.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.deco7381.common.Assert;
import com.example.deco7381.common.ResultEnum;
import com.example.deco7381.mapper.HobbiesMapper;
import com.example.deco7381.mapper.StudentCourseMapper;
import com.example.deco7381.mapper.StudentFriendsMapper;
import com.example.deco7381.pojo.Hobbies;
import com.example.deco7381.pojo.Student;
import com.example.deco7381.mapper.StudentMapper;

import com.example.deco7381.pojo.StudentCourse;
import com.example.deco7381.pojo.UserFriend;
import com.example.deco7381.pojo.vo.GetStudentVo;
import com.example.deco7381.pojo.vo.LoginVO;
import com.example.deco7381.pojo.vo.RegisterRequestVo;
import com.example.deco7381.pojo.vo.StudentDetailVO;
import com.example.deco7381.pojo.vo.StudentInfoVo;
import com.example.deco7381.service.StudentService;
import com.example.deco7381.utils.JwtUtils;
import com.example.deco7381.websocket.WebSocket;
import org.springframework.beans.factory.config.CustomScopeConfigurer;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/**
 * Service Implementation class of student service
 */
@Service
public class StudentServiceImpl extends ServiceImpl<StudentMapper, Student> implements StudentService {
    @Resource
    private StudentMapper studentMapper;
    @Resource
    private StudentCourseMapper studentCourseMapper;
    @Resource
    private StudentFriendsMapper studentFriendsMapper;

    /**
     * get all courses by id
     * @param studentId
     * @return
     */
    @Override
    public List<String> getCourse(String studentId){
        //put student id into hashmap
        HashMap<String, Object> studentIdMap = new HashMap<>();
        studentIdMap.put("student_id",studentId);
        //get all the courses by student id
        List<StudentCourse> studentCourses = studentCourseMapper.selectByMap(studentIdMap);
        ArrayList<String> courseList = new ArrayList<String>();
        //get each course's id
        for(StudentCourse studentCourse:studentCourses){
            courseList.add(studentCourse.getCourseId());
        }
        //return the id list
        return courseList;

    }

    /**
     * user register
     * @param rVo
     * @return
     */
    @Override
    public Map<String, Object> register(RegisterRequestVo rVo) {
        //register code
        int code;
        //responsive message
        String msg=null;
        Map<String, Object> map = new HashMap<>();
        Map<String,Object> idMap=new HashMap<>();
        //get all the students by id map
        idMap.put("student_id",rVo.getStudentId());
        List<Student> students = studentMapper.selectByMap(idMap);
        //if the account is already exists in database
        if (students.size()!=0){
            //return failed message
            msg= ResultEnum.REGISTER_FAILED.getMessage();
            code=ResultEnum.REGISTER_FAILED.getCode();
        //if not exist
        } else{
            //set the student information
            Student user = new Student();
            user.setStudentId(rVo.getStudentId());
            user.setPassword(rVo.getPassword());
            user.setCountry(rVo.getCountry());
            user.setEMail(rVo.getEmail());
            user.setName(rVo.getName());
            //insert the user into the database, register successfully
            studentMapper.insert(user);
            msg=ResultEnum.REGISTER_SUCCESS.getMessage();
            code=ResultEnum.REGISTER_SUCCESS.getCode();
        }
        //return the message and code
        map.put("message",msg);
        map.put("code",code);
        return map;
    }

    /**
     * user login
     * @param loginVO
     * @return
     */
    @Override
    public StudentInfoVo login(LoginVO loginVO) {
        String studentId = loginVO.getStudentId();
        String password = loginVO.getPassword();
        QueryWrapper<Student> studentWrapper = new QueryWrapper<>();
        studentWrapper.eq("student_id",studentId);
        Student student = studentMapper.selectOne(studentWrapper);
        //if the user is exists in the database
        Assert.notNull(student,ResultEnum.LOGIN_ERROR);
        //if the password is true
        Assert.equals(student.getPassword(),password,ResultEnum.LOGIN_ERROR);
        //create token
        String token = JwtUtils.createToken(student.getStudentId());
        //set the studentInfoVo
        StudentInfoVo studentInfoVo = new StudentInfoVo();
        studentInfoVo.setName(student.getName());
        studentInfoVo.setCountry(student.getCountry());
        studentInfoVo.setToken(token);
        studentInfoVo.setStudentId(student.getStudentId());
        studentInfoVo.setImgSrc("http://localhost:8080/img/"+student.getStudentId()+".jpg");
        //return studentInfoVo
        return studentInfoVo;


    }

    /**
     * get all the user's friends by user's id
     * @param studentId
     * @return
     */
    @Override
    public List<String> getFriends(String studentId) {
        //initialize the LambdaQueryWrapper
        LambdaQueryWrapper<UserFriend> lambdaQueryWrapper = new LambdaQueryWrapper<>();
        //get all user's friends by user's id
        lambdaQueryWrapper.eq(UserFriend::getUser,studentId);
        List<UserFriend> userFriends = studentFriendsMapper.selectList(lambdaQueryWrapper);
        List<String> friends=new ArrayList<>();
        //put each friend in to a list
        for(UserFriend userFriend:userFriends){
            friends.add(userFriend.getFriend());
        }
        return friends;
    }

    /**
     * get student's information by student's id
     * @param studentId
     * @return
     */
    @Override
    public GetStudentVo getInfo(String studentId){
        //initialize the QueryWrapper
        QueryWrapper<Student> studentQueryWrapper = new QueryWrapper<>();
        //select student by student's id
        studentQueryWrapper.eq("student_id",studentId);
        Student student = studentMapper.selectOne(studentQueryWrapper);
        //set the student Vo step by step
        GetStudentVo getStudentVo = new GetStudentVo();
        getStudentVo.setEmail(student.getEMail());
        getStudentVo.setName(student.getName());
        getStudentVo.setStudentId(student.getStudentId());
        getStudentVo.setCountry(student.getCountry());
        getStudentVo.setImgSrc("http://localhost:8080/img/"+student.getStudentId()+".jpg");
        //return student Vo
        return getStudentVo;

    }

    /**
     * add friend by user's id and friend's id
     * @param myId
     * @param otherId
     */
    @Override
    public void addFriend(String myId, String otherId) {
        //set UserFriend object step by step
        UserFriend userFriend1 = new UserFriend();
        UserFriend userFriend2 = new UserFriend();
        userFriend1.setUser(myId);
        userFriend1.setFriend(otherId);
        userFriend2.setFriend(myId);
        userFriend2.setUser(otherId);
        //insert friends into database by user's id and friend's id
        studentFriendsMapper.insert(userFriend1);
        studentFriendsMapper.insert(userFriend2);
    }

    /**
     * delete friend by user's id and friend's id
     * @param myId
     * @param friendId
     */
    @Override
    public void deleteFriend(String myId, String friendId) {
        //initialize the LambdaQueryWrapper
        LambdaQueryWrapper<UserFriend> userFriendLambdaQueryWrapper = new LambdaQueryWrapper<>();
        //delete user's friends by user's id and friend's id
        userFriendLambdaQueryWrapper.eq(UserFriend::getUser,myId).eq(UserFriend::getFriend,friendId);
        studentFriendsMapper.delete(userFriendLambdaQueryWrapper);
        //initialize the LambdaQueryWrapper
        LambdaQueryWrapper<UserFriend> userFriendLambdaQueryWrapper1 = new LambdaQueryWrapper<>();
        //delete user's friends by user's id and friend's id
        userFriendLambdaQueryWrapper1.eq(UserFriend::getUser,friendId).eq(UserFriend::getFriend,myId);
        studentFriendsMapper.delete(userFriendLambdaQueryWrapper1);
    }


}
