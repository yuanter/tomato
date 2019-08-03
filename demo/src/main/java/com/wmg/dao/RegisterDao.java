package com.wmg.dao;

import com.wmg.model.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
@Mapper
public interface RegisterDao {
	/**
	 * 通过学号查询用户账号是否存在
	 */
	public User findUserByStudengID(@Param("studentID") String studentID);

	/**
	 * 通过手机号查询用户账号是否存在
	 */
	public User findUserByTel(@Param("Tel") String Tel);


	/**
	 * 向数据库插入新增用户信息
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
	public Integer insertUserInfo(@Param("StudentID") String studentID, @Param("Password") String password,
                                  @Param("UserNickName") String userNickName, @Param("Name") String name,
                                  @Param("Tel") String tel, @Param("Email") String email, @Param("Sex") String sex, @Param("UserSign") Integer userSign,
                                  @Param("IDCard") String IDCard, @Param("UserAddress") String UserAddress, @Param("RegistrationTime") Date RegistrationTime);
}
