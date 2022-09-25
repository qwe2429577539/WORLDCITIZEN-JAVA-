package com.example.deco7381.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.service.IService;
import com.example.deco7381.pojo.CourseFields;
import com.example.deco7381.service.CourseFieldsService;
import org.apache.ibatis.annotations.Mapper;

import java.time.temporal.ChronoField;
@Mapper
public interface CourseFieldsMapper extends BaseMapper<CourseFields> {
}
