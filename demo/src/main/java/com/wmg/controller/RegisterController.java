package com.wmg.controller;

import com.wmg.model.User;
import com.wmg.service.impl.RegisterServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@RequestMapping("/")
public class RegisterController {
	@Autowired
    RegisterServiceImpl registerServiceImpl;
	
	
	/**返回注册界面*/
	@RequestMapping("jsp/register")
	public ModelAndView toRegisterView(Model model) {
		ModelAndView view=new ModelAndView("register");
		return view;		
	}
	
	/**
	 * 校验用户名是否被注册
	 **/
	@RequestMapping(value="register/userName", produces = "text/html; charset=utf-8")
	public @ResponseBody
    String  register(String studentID)throws NoSuchAlgorithmException, UnsupportedEncodingException {
		User isStudentID=registerServiceImpl.findUserByStudengID(studentID);
		if (isStudentID!=null) {
			if (isStudentID.getStudentID().equals(null)==false) {				
				return "该账号已存在";	
			}
		}else {		
			return "" ;
		}		
			return "";
	}
	
	
	
	/**
	 * 校验手机号码是否被注册
	 */
	@RequestMapping(value="register/Tel", produces = "text/html; charset=utf-8")
	public @ResponseBody
    String  registerTel(String Tel)throws NoSuchAlgorithmException, UnsupportedEncodingException {
		User isTel=registerServiceImpl.findUserByTel(Tel);
		if (isTel!=null) {
			if (isTel.getTel().equals(null)==false) {				
				return "该号码已注册";	
			}
		}else {		
			return "" ;
		}		
			return "";
	}
	
	
	
	/**
	 * 插入用户注册数据到数据库
	 * @throws ParseException 
	 */
	@RequestMapping(value="register/insertUserInfo", produces = "text/html; charset=utf-8")
	public @ResponseBody
    String insertUserInfo(String username, String psw1, String userNickName, String uname, String tel, String email, String sex, Integer userSign,
                          String IDCard, String UserAddress, Date RegistrationTime)throws NoSuchAlgorithmException, UnsupportedEncodingException, ParseException{
		Date nowDate=new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateString = formatter.format(nowDate);	
		RegistrationTime = (Date) formatter.parse(dateString);
		System.out.println("nowDate:"+nowDate);	
		userSign=1;
		registerServiceImpl.insertUserInfo(username, psw1, userNickName, uname, tel, email, sex, userSign, IDCard, UserAddress, RegistrationTime);
		
		return "注册成功";
		
	}
} 	
