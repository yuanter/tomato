package com.wmg.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
@Mapper
public interface UpdateUserInfo {
/**
 * 更新用户信息
 */
	public Integer updateUserInfo(@Param("StudentID") String studentID, @Param("Password") String password,
                                  @Param("UserNickName") String userNickName, @Param("Name") String name,
                                  @Param("Tel") String tel, @Param("Email") String email, @Param("Sex") String sex, @Param("UserSign") Integer userSign,
                                  @Param("IDCard") String IDCard, @Param("UserAddress") String UserAddress, @Param("RegistrationTime") Date RegistrationTime);


}
