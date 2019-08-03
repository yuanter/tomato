//package com.wmg.controller;
//
//import com.wmg.model.Admin;
//import com.wmg.service.impl.AdminServiceImpl;
//import com.wmg.service.impl.LoginServiceImpl;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.servlet.ModelAndView;
//
//@Controller
//public class TestController {
//    @Autowired LoginServiceImpl loginServiceImpl;
//    @Autowired AdminServiceImpl adminServiceImpl;
//    @RequestMapping("/index")
//    public ModelAndView test(){
//        ModelAndView modelAndView=new ModelAndView("top");
//        Admin admin=loginServiceImpl.findAdminByAdminID("1");
//        String str=admin.getNotice();
//        System.out.println("admin:-------"+admin);
//        modelAndView.addObject("night","晚上好,");
//        System.out.println("我是个日志输出");
//        return modelAndView;
//    }
//}
