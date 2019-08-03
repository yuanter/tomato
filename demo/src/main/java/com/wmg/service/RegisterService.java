package com.wmg.service;

import com.wmg.model.User;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.Date;

public interface RegisterService {
	/**
	 * 通过学号登陆查询用户账号是否存在
	 */
	User findUserByStudengID(String studentID);
	
	/**
	 * 通过手机号查询用户是否被注册
	 */
	User findUserByTel(String Tel);
	
	/**
	 * 向数据库插入用户信息
	 * @param studentID
	 * @param password
	 * @param userNickName
	 * @param name
	 * @param tel
	 * @param email
	 * @param sex
	 * @param userSign
	 * @param IDCard
	 * @param UserAddress
	 * @param RegistrationTime
	 * @param modifyTime
	 * @return
	 */
	public Integer insertUserInfo(String studentID, String password,
                                  String userNickName, String name,
                                  String tel, String email, String sex, Integer userSign,
                                  String IDCard, String UserAddress, Date RegistrationTime)throws NoSuchAlgorithmException, UnsupportedEncodingException;

}
