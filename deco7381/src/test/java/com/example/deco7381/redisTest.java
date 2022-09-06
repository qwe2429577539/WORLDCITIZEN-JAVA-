package com.example.deco7381;

import com.example.deco7381.mapper.StudentMapper;
import com.example.deco7381.pojo.Student;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.TimeUnit;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@RunWith(SpringRunner.class)
public class redisTest {
    @Resource
    private RedisTemplate redisTemplate;
    @Resource
    private StudentMapper studentMapper;
    @Test
    public void test2(){
        HashMap<String, Object> stringStringHashMap = new HashMap<>();
        stringStringHashMap.put("student_id","46725806");
        List<Student> students = studentMapper.selectByMap(stringStringHashMap);
        redisTemplate.opsForValue().set("studentId",students,5, TimeUnit.MINUTES);
    }

    @Test
    public void test3(){
        List<Student> studentId = (List<Student>) redisTemplate.opsForValue().get("studentId");
        System.out.println(studentId);
    }

}
