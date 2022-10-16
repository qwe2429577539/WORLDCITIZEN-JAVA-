package com.example.deco7381.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.deco7381.pojo.Student;
import org.apache.ibatis.annotations.Mapper;

@Mapper
/**
 * mapper of student
 */
public interface StudentMapper extends BaseMapper<Student> {
}
