package com.example.deco7381.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.deco7381.pojo.ChannelPosts;
import org.apache.ibatis.annotations.Mapper;

@Mapper
/**
 * mapper of channel's posts
 */
public interface ChannelPostsMapper extends BaseMapper<ChannelPosts> {
}