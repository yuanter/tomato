package com.wmg.service.impl;

import com.wmg.dao.LoginDao;
import com.wmg.model.Admin;
import com.wmg.model.User;
import com.wmg.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService {
    @Autowired
    private  LoginDao loginDao;

    @Override
    public User findUserByStudengID(String studentID) {
        // TODO Auto-generated method stub
        return loginDao.findUserByStudengID(studentID);
    }

    @Override
    public Admin findAdminByAdminID(String adminID) {
        // TODO Auto-generated method stub
        return loginDao.findAdminByAdminID(adminID);
    }

}
