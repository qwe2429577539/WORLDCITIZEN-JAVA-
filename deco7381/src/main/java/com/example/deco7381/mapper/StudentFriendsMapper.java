package com.example.deco7381.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.deco7381.pojo.UserFriend;
import org.apache.ibatis.annotations.Mapper;

@Mapper
/**
 * mapper of student's friends
 */
public interface StudentFriendsMapper extends BaseMapper<UserFriend> {
}
