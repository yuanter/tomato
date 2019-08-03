package com.wmg.controller;

import com.wmg.model.User;
import com.wmg.service.impl.AdminServiceImpl;
import com.wmg.service.impl.LoginServiceImpl;
import com.wmg.service.impl.RegisterServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/")
public class UserInfoController {
	@Autowired
    RegisterServiceImpl registerServiceImpl;
	@Autowired
    LoginServiceImpl loginServiceImpl;
	@Autowired
    AdminServiceImpl adminServiceImpl;
	
	
	/**
	 * 返回更新用户信息页面
	 */	
	@RequestMapping(value="userInfo", produces = "text/html; charset=utf-8")
	public @ResponseBody
    ModelAndView updateUserInfo(String studentID, HttpServletRequest request, HttpServletResponse response, Model model) {
		ModelAndView view=new ModelAndView("updateUserInfo");
		/**
		 * 加载用户信息列表
		 */	
		System.out.println("studentID:::"+studentID);
		User userInfo = loginServiceImpl.findUserByStudengID(studentID);
		request.setAttribute("userInfo",userInfo);

		return view;		
	}

	
}
