package com.wmg.service.impl;

import com.wmg.dao.RegisterDao;
import com.wmg.model.User;
import com.wmg.service.RegisterService;
import com.wmg.util.MD5;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.Date;

@Service
public class RegisterServiceImpl implements RegisterService{
	@Autowired
    private  RegisterDao registerDao;
	MD5 md5=new MD5();
	@Override
	public User findUserByStudengID(String studentID) {
		// TODO Auto-generated method stub
		return registerDao.findUserByStudengID(studentID);
	}
	@Override
	public User findUserByTel(String Tel) {
		// TODO Auto-generated method stub
		return registerDao.findUserByTel(Tel);
	}
	@Override
	public Integer insertUserInfo(String studentID, String password, String userNickName, String name, String tel,
			String email, String sex, Integer userSign, String IDCard, String UserAddress, Date RegistrationTime) throws NoSuchAlgorithmException, UnsupportedEncodingException {
		// TODO Auto-generated method stub
		if (password!=null) {
			password=md5.EncoderByMd5(password);
		}
		return registerDao.insertUserInfo(studentID, password, userNickName, name, tel, email, sex, userSign, IDCard, UserAddress, RegistrationTime);
	}

}
