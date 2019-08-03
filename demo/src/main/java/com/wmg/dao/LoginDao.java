package com.wmg.dao;

import com.wmg.model.Admin;
import com.wmg.model.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface LoginDao {
    /**
     * 通过学号登陆查询用户账号是否存在
     */
    public User findUserByStudengID(@Param("studentID") String studentID);

    /**
     * 通过管理员ID查询是否存在
     */
    public Admin findAdminByAdminID(@Param("adminID") String adminID);
}
