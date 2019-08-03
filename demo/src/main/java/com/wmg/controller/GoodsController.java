package com.wmg.controller;

import com.wmg.model.GoodsInfo;
import com.wmg.model.User;
import com.wmg.service.impl.GoodsServiceImpl;
import com.wmg.service.impl.LoginServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/")
public class GoodsController {
	@Autowired
    GoodsServiceImpl goodsServiceImpl;
	@Autowired
    LoginServiceImpl loginServiceImpl;
	
	/**
	 * 转跳至填写发布交易信息页面
	 * @param request
	 * @param response
	 * @param model
	 * @return
	 */
	 @RequestMapping(value="jsp/addGoodsInfo", produces = "text/html; charset=utf-8")
	 public ModelAndView addTransactionInfo(HttpServletRequest request, HttpServletResponse response, Model model){
			ModelAndView view=new ModelAndView("addGoodsInfo");
			return view;
		 
	 }
	 /**
	  * 转跳至交易信息详情页面
	  * @param request
	  * @param response
	  * @param model
	  * @return
	  */
	 @RequestMapping(value="showGoodsInfo", produces = "text/html; charset=utf-8")
	 public @ResponseBody
     ModelAndView showGoodsInfo(String TransactionID, HttpServletRequest request, HttpServletResponse response, Model model){
			ModelAndView view=new ModelAndView("showGoodsInfo");
			Long transactionID=Long.parseLong(TransactionID);
			/**
			 * 查找交易信息
			 */
			GoodsInfo	transaction= goodsServiceImpl.findGoodsByTransactionID(transactionID);
			view.addObject("oneGoodsInfo", transaction);
			
			/**
			 * 根据交易ID查找学号
			 */
			String studentID=goodsServiceImpl.findStudentIdByTransactionID(transactionID);
			/**
			 * 加载用户信息
			 */	
			System.out.println("studentID:::"+transactionID);
			User userInfo = loginServiceImpl.findUserByStudengID(studentID);
			view.addObject("goodsUser",userInfo);
			return view;		 
	 }

	 
	 /**
	  * 状态至我的发布
	  * @param request
	  * @param response
	  * @param model
	  * @return
	  */
	 @RequestMapping(value="userTransactionInfo", produces = "text/html; charset=utf-8")
	 public @ResponseBody
     ModelAndView toUserTransactionInfo(String TransactionID, HttpServletRequest request, HttpServletResponse response, Model model){
			ModelAndView view=new ModelAndView("updateGoodsInfo");
			Long transactionID=Long.parseLong(TransactionID);
			List<GoodsInfo>	transaction= goodsServiceImpl.findAllGoodsByTransactionID(transactionID);
			view.addObject("allGoodsInfo", transaction);
			return view;		 
	 }
	 
	 /**
	  * 添加发布信息
	  * @param TransactionID
	  * @param request
	  * @param response
	  * @param model
	  * @return
	 * @throws ParseException 
	  */
	 @RequestMapping(value="addGoodsInfo", produces = "text/html; charset=utf-8")
	 public @ResponseBody
     ModelAndView addGoodsInfo(Long TransactionID, String goodsTitle, String transactionMode, String classification,
                               String Condition, String Price, String Describe, String Photo, Integer TransactionState, String Message,
                               Date CreateTime, Date TransactionTime, String TransactionAddress, Long TrafficVolume, String StudentID, HttpServletRequest request, HttpServletResponse response, Model model) throws ParseException{
			ModelAndView view=new ModelAndView("updateGoodsInfo");
			Date date=new Date();
			SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");			
			TransactionState=1;//初始交易信息状态为未交易
			Message="好帅";
			TrafficVolume=0l;
			/**
			 * 订单时间
			 */
			String s=format.format(date);
			Date timestamp = format.parse(s);
			TransactionID = timestamp.getTime();
			
			/**
			 * 创建时间
			 */
			String dateString = format.format(date);	
			CreateTime = (Date) format.parse(dateString);
			System.out.println("TransactionID:"+TransactionID+"+goodsTitle:"+goodsTitle+"+transactionMode:"+transactionMode+"+classification:"+classification+"+Condition:"+Condition+"+Price:"+Price+"+Describe:"+Describe+"+Photo:"+Photo+"+TransactionState:"+TransactionState+"+Message:"+Message+"+CreateTime:"+CreateTime+"+TransactionTime:"+TransactionTime+"+TransactionAddress:"+TransactionAddress+"+TrafficVolume:"+TrafficVolume+"+StudentID："+StudentID);

			/**
			 * 添加交易信息
			 */
			goodsServiceImpl.addGoodsInfo(TransactionID, goodsTitle, transactionMode, classification, Condition, Price, Describe, Photo, TransactionState, Message, CreateTime, TransactionTime, TransactionAddress, TrafficVolume);
			/**
			 * 更新用户与交易信息关系表
			 */
			System.out.println("StudentID:"+StudentID);
			goodsServiceImpl.addUserAndGoodsInfo(TransactionID, StudentID);
			/*			List<GoodsInfo>	transaction= goodsServiceImpl.findAllGoodsByTransactionID(transactionID);
			view.addObject("allGoodsInfo", transaction);*/
			return view;		 
	 }

	 
}
