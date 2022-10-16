package com.example.deco7381.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.deco7381.pojo.Course;
import com.example.deco7381.pojo.Hobbies;
import com.example.deco7381.pojo.Student;
import com.example.deco7381.pojo.vo.GetStudentVo;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Set;
/**
 * Service of HobbiesService
 */
public interface HobbiesService extends IService<Hobbies> {
    /**
     * get student's hobbies by student id
     * @param studentId
     * @return
     */
    List<String> getHobbies(String studentId);

    /**
     * add the hobbie by student's id and hobby's name
     * @param studentId
     * @param hobby
     */
    void addHobbies(String studentId,String hobby);

    /**
     * delete the hobby by student's id and hobby's name
     * @param studentId
     * @param hobby
     */
    void deleteHobby(String studentId, String hobby);

    /**
     * get some random friends based on the recommended algorithm
     * @param studentId
     * @return
     */
    HashMap<String, Set<GetStudentVo>> getRandomFriends(String studentId);
}
