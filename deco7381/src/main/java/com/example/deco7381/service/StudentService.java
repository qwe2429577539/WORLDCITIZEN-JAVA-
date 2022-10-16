package com.example.deco7381.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.deco7381.pojo.Student;
import com.example.deco7381.pojo.StudentCourse;
import com.example.deco7381.pojo.UserFriend;
import com.example.deco7381.pojo.vo.GetStudentVo;
import com.example.deco7381.pojo.vo.LoginVO;
import com.example.deco7381.pojo.vo.RegisterRequestVo;
import com.example.deco7381.pojo.vo.StudentInfoVo;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
/**
 * Service of StudentService
 */
@Service
    public interface StudentService extends IService<Student>{
    /**
     * get all the courses by student's id
     * @param studentId
     * @return
     */
    List<String> getCourse(String studentId);

    /**
     * user register
     * @param rVo
     * @return
     */
    Map<String, Object> register(RegisterRequestVo rVo);

    /**
     * user login
     * @param loginVO
     * @return
     */
    StudentInfoVo login(LoginVO loginVO);

    /**
     * get all the user's friend by student's id
     * @param studentId
     * @return
     */
    List<String> getFriends(String studentId);

    /**
     * get student's information by student's id
     * @param studentId
     * @return
     */
    GetStudentVo getInfo(String studentId);

    /**
     * adding friend by user's id and student's id
     * @param myId
     * @param otherId
     */
    void addFriend(String myId, String otherId);

    /**
     * delete friend by user's id and student's id
     * @param myId
     * @param friendId
     */
    void deleteFriend(String myId, String friendId);

}
