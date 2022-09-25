package com.example.deco7381.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.deco7381.mapper.HobbiesMapper;
import com.example.deco7381.pojo.Hobbies;
import com.example.deco7381.pojo.StudentCourse;
import com.example.deco7381.service.HobbiesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
@Service
public class HobbiesServiceImpl extends ServiceImpl<HobbiesMapper, Hobbies> implements HobbiesService {

    @Autowired
    private HobbiesMapper hobbiesMapper;

    @Override
    public List<String> getHobbies(String studentId) {
        LambdaQueryWrapper<Hobbies> lambdaQueryWrapper = new LambdaQueryWrapper<>();
        lambdaQueryWrapper.eq(Hobbies::getStudentId,studentId);
        List<Hobbies> hobbies = hobbiesMapper.selectList(lambdaQueryWrapper);
        ArrayList<String> hobbiesList = new ArrayList<String>();
        for(Hobbies hobbies1:hobbies){
            hobbiesList.add(hobbies1.getHobby());
        }
        return hobbiesList;

    }

}
