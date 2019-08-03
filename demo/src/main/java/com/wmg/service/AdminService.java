package com.wmg.service;

import com.wmg.model.GoodsInfo;
import com.wmg.model.User;

import java.util.List;

public interface AdminService {
    /**
     * 发布公告
     */
    public void notice(String Notice);

    /**
     * 加载公告
     */
    public String onloadNotice();

    /**
     * 初始化查询所有数据数据
     */
    public List<GoodsInfo> findAllGoodsInfo();

    /**
     * 初始化查询所有用户信息数据
     */
    public List<User> findAllUserInfo();
}
