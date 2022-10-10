package com.example.deco7381.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.deco7381.mapper.HobbiesMapper;
import com.example.deco7381.mapper.StudentMapper;
import com.example.deco7381.pojo.Hobbies;
import com.example.deco7381.pojo.Student;
import com.example.deco7381.service.HobbiesService;
import com.example.deco7381.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
public class HobbiesServiceImpl extends ServiceImpl<HobbiesMapper, Hobbies> implements HobbiesService {

    @Autowired
    private HobbiesMapper hobbiesMapper;
    @Autowired
    private StudentService studentService;
    @Autowired
    private StudentMapper studentMapper;

    @Override
    public List<Hobbies> getHobbies(String studentId) {
        LambdaQueryWrapper<Hobbies> lambdaQueryWrapper = new LambdaQueryWrapper<>();
        lambdaQueryWrapper.eq(Hobbies::getStudentId,studentId);
        List<Hobbies> hobbies = hobbiesMapper.selectList(lambdaQueryWrapper);
        //ArrayList<String> hobbiesList = new ArrayList<String>();
        //for(Hobbies hobbies1:hobbies){
            //hobbiesList.add(hobbies1.getHobby());
        //}
        return hobbies;

    }

    @Override
    public void addHobbies(String studentId, String hobby) {
        Hobbies hobbies = new Hobbies();
        hobbies.setHobby(hobby);
        hobbies.setStudentId(studentId);
        hobbiesMapper.insert(hobbies);
    }

    @Override
    public Set<Student> getRandomFriends(String studentId) {
        LambdaQueryWrapper<Hobbies> lambdaQueryWrapper = new LambdaQueryWrapper<>();
        //lambdaQueryWrapper.eq(Hobbies::getStudentId,studentId);
        List<Hobbies> myHobbiesList = hobbiesMapper.selectList(lambdaQueryWrapper);

        LambdaQueryWrapper<Hobbies> lambdaQueryWrapper2 = new LambdaQueryWrapper<>();
        lambdaQueryWrapper2.ne(Hobbies::getStudentId,studentId);
        List<Hobbies> othersHobbiesList = hobbiesMapper.selectList(lambdaQueryWrapper2);

        Set<Student> RandomFriends = new HashSet<>();
        for (Hobbies hobbies:myHobbiesList) {
            for (Hobbies hobbies1:othersHobbiesList) {
                if (hobbies.getHobby().equals(hobbies1.getHobby())){
                    String id = hobbies1.getStudentId();
                    LambdaQueryWrapper<Student> studentLambdaQueryWrapper = new LambdaQueryWrapper<>();
                    studentLambdaQueryWrapper.eq(Student::getStudentId,id);
                    Student student = studentService.getOne(studentLambdaQueryWrapper);
                    if (id!=studentId){
                        RandomFriends.add(student);
                    }
                }
            }

        }
        return RandomFriends;
    }

}
