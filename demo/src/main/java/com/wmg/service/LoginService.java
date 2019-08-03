package com.wmg.service;

import com.wmg.model.Admin;
import com.wmg.model.User;


public interface LoginService {
    /**
     * 通过学号登陆查询用户账号是否存在
     */
    User findUserByStudengID(String studentID);

    /**
     * 通过管理员ID查询是否存在
     */
    Admin findAdminByAdminID(String adminID);
}
