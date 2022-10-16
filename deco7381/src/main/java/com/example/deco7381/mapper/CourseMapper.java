package com.example.deco7381.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.deco7381.pojo.Course;
import org.apache.ibatis.annotations.Mapper;

@Mapper
/**
 * mapper of courses
 */
public interface CourseMapper extends BaseMapper<Course> {
}
