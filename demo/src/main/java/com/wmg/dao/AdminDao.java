package com.wmg.dao;

import com.wmg.model.GoodsInfo;
import com.wmg.model.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper

public interface AdminDao {
/**
 * 发布公告
 */
public void notice(@Param("Notice") String Notice);

/**
 * 加载公告
 */
public String onloadNotice();

/**
 * 初始化查询所有交易信息数据
 */
public List<GoodsInfo> findAllGoodsInfo();

/**
 * 初始化查询所有用户信息数据
 */
public List<User> findAllUserInfo();


}
