package com.wmg.service.impl;

import com.wmg.dao.AdminDao;
import com.wmg.model.GoodsInfo;
import com.wmg.model.User;
import com.wmg.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminDao adminDao;

    @Override
    public void notice(String Notice) {
        // TODO Auto-generated method stub
        adminDao.notice(Notice);
    }
    @Override
    public String onloadNotice() {
        // TODO Auto-generated method stub
        return adminDao.onloadNotice();
    }
    @Override
    public List<GoodsInfo> findAllGoodsInfo() {
        // TODO Auto-generated method stub
        return adminDao.findAllGoodsInfo();
    }
    @Override
    public List<User> findAllUserInfo() {
        // TODO Auto-generated method stub
        return adminDao.findAllUserInfo();
    }
}
