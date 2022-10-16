package com.example.deco7381.controller;

import com.example.deco7381.common.R;
import com.example.deco7381.common.ResultEnum;
import com.example.deco7381.service.HobbiesService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Controller
@RestController
@CrossOrigin
@RequestMapping("/hobby")

/**
 * A controller for services on hobby page
 */
public class HobbyController {
    @Resource
    private HobbiesService hobbiesService;

    /**
     * add hobby by user's id
     * @param map
     * @return
     */
    @PostMapping("/add")
    public R addHobby(@RequestBody Map<String,Object> map){
        //get the student id
        String studentId = (String)map.get("studentId");
        //get the hobby
        String hobby = (String)map.get("hobby");
        //add hobbies in database
        hobbiesService.addHobbies(studentId,hobby);
        //return success message
        return R.ok().resultEnum(ResultEnum.SUCCESS);
    }

    /**
     * get all hobbies by student id
     * @param studentId
     * @return
     */
    @GetMapping("/get")
    public R getHobby(String studentId){
        //get all hobbies from database
        List<String> hobbies = hobbiesService.getHobbies(studentId);
        //return success message
        return R.ok().resultEnum(ResultEnum.SUCCESS).data("hobbies",hobbies);
    }

    /**
     * delete all hobbies by student id
     * @param map
     * @return
     */
    @PostMapping("/delete")
    public R deleteHobby(@RequestBody Map<String,Object> map ){
        //get the student id
        String studentId = (String)map.get("studentId");
        //get the hobby
        String hobby = (String)map.get("hobby");
        //delete hobby from database
        hobbiesService.deleteHobby(studentId,hobby);
        //return success message
        return R.ok().resultEnum(ResultEnum.SUCCESS);
    }
}
