package com.example.deco7381.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.deco7381.mapper.HobbiesMapper;
import com.example.deco7381.mapper.StudentMapper;
import com.example.deco7381.pojo.Hobbies;
import com.example.deco7381.pojo.Student;
import com.example.deco7381.pojo.StudentCourse;
import com.example.deco7381.pojo.vo.GetStudentVo;
import com.example.deco7381.service.HobbiesService;
import com.example.deco7381.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;
/**
 * Service Implementation class of hobbies
 */
@Service
public class HobbiesServiceImpl extends ServiceImpl<HobbiesMapper, Hobbies> implements HobbiesService {

    @Autowired
    private HobbiesMapper hobbiesMapper;
    @Autowired
    private StudentService studentService;

    /**
     * get all hobbies by user's id
     * @param studentId
     * @return
     */
    @Override
    public List<String> getHobbies(String studentId) {
        //initialize the LambdaQueryWrapper
        LambdaQueryWrapper<Hobbies> lambdaQueryWrapper = new LambdaQueryWrapper<>();
        //select hobbies from database by the student's id
        lambdaQueryWrapper.eq(Hobbies::getStudentId,studentId);
        List<Hobbies> hobbies = hobbiesMapper.selectList(lambdaQueryWrapper);
        //initialize a list for hobbies storage
        ArrayList<String> hobbiesList = new ArrayList<String>();
        for(Hobbies hobbies1:hobbies){
            hobbiesList.add(hobbies1.getHobby());
        }
        //return the list
        return hobbiesList;
    }

    /**
     * add hobby by user's id and hobby name
     * @param studentId
     * @param hobby
     */
    @Override
    public void addHobbies(String studentId,String hobby){
        //initialized a hobbies object
        Hobbies hobbies = new Hobbies();
        //set name
        hobbies.setHobby(hobby);
        //set student id
        hobbies.setStudentId(studentId);
        //insert it into database
        hobbiesMapper.insert(hobbies);
    }

    /**
     * delete hobby by student's id and hobby name
     * @param studentId
     * @param hobby
     */
    @Override
    public void deleteHobby(String studentId, String hobby) {
        //initialize the LambdaQueryWrapper
        QueryWrapper<Hobbies> hobbiesQueryWrapper = new QueryWrapper<>();
        //delete hobby by student's id and hobby name from database
        hobbiesQueryWrapper.eq("student_id",studentId).eq("hobby",hobby);
        hobbiesMapper.delete(hobbiesQueryWrapper);
    }

    /**
     * get random friends by recommended algorithm
     * @param studentId
     * @return
     */
    @Override
    public HashMap<String, Set<GetStudentVo>> getRandomFriends(String studentId) {
        //initialize the LambdaQueryWrapper
        LambdaQueryWrapper<Hobbies> lambdaQueryWrapper = new LambdaQueryWrapper<>();
        //select all the hobbies of the user by the student's id first
        lambdaQueryWrapper.eq(Hobbies::getStudentId,studentId);
        //put it into myHobbiesList
        List<Hobbies> myHobbiesList = hobbiesMapper.selectList(lambdaQueryWrapper);
        //we use the hashmap for data storing
        HashMap<String, Set<GetStudentVo>> stringSetHashMap = new HashMap<>();

//        LambdaQueryWrapper<Hobbies> lambdaQueryWrapper2 = new LambdaQueryWrapper<>();
//        lambdaQueryWrapper2.ne(Hobbies::getStudentId,studentId);
//        List<Hobbies> othersHobbiesList = hobbiesMapper.selectList(lambdaQueryWrapper2);

        //for each user's hobby
        for(Hobbies hobbies:myHobbiesList){
            //get the name
            String hobby = hobbies.getHobby();
            //initialize the LambdaQueryWrapper
            LambdaQueryWrapper<Hobbies> hobbiesLambdaQueryWrapper = new LambdaQueryWrapper<>();
            //get all the same hobby from database
            hobbiesLambdaQueryWrapper.eq(Hobbies::getHobby,hobby);
            //put it into myHobbiesList list
            List<Hobbies> sameHobbyStudent = hobbiesMapper.selectList(hobbiesLambdaQueryWrapper);
            HashSet<GetStudentVo> students = new HashSet<>();
            //get each same hobby
            for(Hobbies hobbies1:sameHobbyStudent){
                //it could not be the same user
                if(!hobbies1.getStudentId().equals(studentId)){
                    String studentId1 = hobbies1.getStudentId();
                    GetStudentVo info = studentService.getInfo(studentId1);
                    students.add(info);
                }
            }
            //put the random friends into hashmap
            stringSetHashMap.put(hobby,students);
        }
        //return hash map
        return stringSetHashMap;

//        Set<Student> RandomFriends = new HashSet<>();
//        for (Hobbies hobbies:myHobbiesList) {
//            for (Hobbies hobbies1:othersHobbiesList) {
//                if (hobbies.getHobby().equals(hobbies1.getHobby())){
//                    String id = hobbies1.getStudentId();
//                    LambdaQueryWrapper<Student> studentLambdaQueryWrapper = new LambdaQueryWrapper<>();
//                    studentLambdaQueryWrapper.eq(Student::getStudentId,id);
//                    Student student = studentService.getOne(studentLambdaQueryWrapper);
//                    if (id!=studentId){
//                        RandomFriends.add(student);
//                    }
//                }
//            }
//
//        }
//        return RandomFriends;
    }

}
