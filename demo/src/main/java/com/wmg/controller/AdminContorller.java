package com.wmg.controller;

import com.wmg.model.GoodsInfo;
import com.wmg.service.impl.AdminServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping("/")
public class AdminContorller {
	@Autowired
    AdminServiceImpl adminServiceImpl;
		/**
		 * 发布公告
		 */
	@RequestMapping(value="admin/notice", produces = "text/html; charset=utf-8")
	public @ResponseBody
    String noticeController(String Notice, HttpServletRequest request, HttpServletResponse response, Model model){
		adminServiceImpl.notice(Notice);
		return "发布成功";	
	}
	
	/**
	 * 发布公告
	 */
	@RequestMapping(value="admin/onloadNotice", produces = "text/html; charset=utf-8")
	public @ResponseBody
    String onloadNoticeController(HttpServletRequest request, HttpServletResponse response, Model model){
		String notice=adminServiceImpl.onloadNotice();
		System.out.println("notice:"+notice);
		return notice;	
	}

	/**
	 * 加载后台管理数据_交易信息
	 */
	@RequestMapping(value="admin/onloadGoodsInfo", produces = "text/html; charset=utf-8")
	public @ResponseBody
    ModelAndView onloadGoodsInfo(HttpServletRequest request, HttpServletResponse response, Model model){
		ModelAndView view=new ModelAndView("admin");
		/**
		 * 加载交易信息列表
		 */
		List<GoodsInfo> listGoodsInfo=adminServiceImpl.findAllGoodsInfo();
		request.setAttribute("listGoodsInfo",listGoodsInfo);

		return view;	
	}
	
	/**
	 * 返回增加用户信息页面
	 */	
	@RequestMapping(value="showUserInfo", produces = "text/html; charset=utf-8")
	public ModelAndView showUserInfo(Model model) {
		ModelAndView view=new ModelAndView("showUserInfo");
		return view;		
	}
	
	/**
	 * 删除用户信息
	 */	
	@RequestMapping(value="deleteUserInfo", produces = "text/html; charset=utf-8")
	public String deleteUserInfo(Model model) {
		
		return "成功删除";		
	}
}
