package com.wmg.controller;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.wmg.model.Admin;
import com.wmg.model.GoodsInfo;
import com.wmg.model.User;
import com.wmg.service.impl.AdminServiceImpl;
import com.wmg.service.impl.LoginServiceImpl;
import com.wmg.util.MD5;
import com.wmg.util.UseCookie;


@Controller
@RequestMapping("/")
public class LoginController {
    @Autowired LoginServiceImpl loginServiceImpl;
    @Autowired AdminServiceImpl adminServiceImpl;
    MD5 md5=new MD5();//使用加密解密工具

    /**
     * 作者：院长
     * 进行登陆并发送cookie到用户浏览器
     * @param userid
     * @param password
     * @param request
     * @param response
     * @param model
     * @return
     * @throws NoSuchAlgorithmException
     * @throws UnsupportedEncodingException
     */
    @RequestMapping(value="login", produces = "text/html; charset=utf-8")
    public @ResponseBody ModelAndView loginController(String userid,String password,HttpServletRequest request, HttpServletResponse response,Model model) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        ModelAndView view=new ModelAndView();
        User user=loginServiceImpl.findUserByStudengID(userid);
        System.out.println("user:--------"+user);
        Admin admin=loginServiceImpl.findAdminByAdminID(userid);
        System.out.println("admin:-------"+admin);

        /**
         * 判断是管理员
         */
        if (admin!=null) {
            if (admin.getPsw().equals(password)) {//checkpassword(newpasswd,oldpasswd)
                String adminInfo=admin.getAdminID()+":"+admin.getPsw();//将用户信息打包
                System.out.println("adminInfo="+adminInfo);
                UseCookie useCookie=new UseCookie();
                useCookie.setCookie(request, response, adminInfo);//将用户信息发送至用户浏览器cookie

                /**
                 * 加载交易信息列表
                 */
                List<GoodsInfo> listGoodsInfo=adminServiceImpl.findAllGoodsInfo();
                request.setAttribute("listGoodsInfo",listGoodsInfo);

                /**
                 * 加载用户信息列表
                 */
                List<User> listUserInfo = adminServiceImpl.findAllUserInfo();
                request.setAttribute("listUserInfo",listUserInfo);

                view.setViewName("admin");
                return view;
            }else {
                view.setViewName("404");
                return view;
            }
        }
        /**
         * 判断是学生用户
         */
        if (user!=null) {
            //String tempPassword=md5.EncoderByMd5(temp.getPassword());//这里实现加密存储后将不用
            //if (temp.getPassword().equals(password)) {
            if (md5.checkpassword(password, user.getPassword())) {//checkpassword(newpasswd,oldpasswd)
                String userInfo=user.getStudentID()+":"+user.getPassword();//将用户信息打包
                System.out.println("userInfo="+userInfo);
                UseCookie useCookie=new UseCookie();
                useCookie.setCookie(request, response, userInfo);//将用户信息发送至用户浏览器cookie
                //useCookie.ReaderCookie(request, response, userInfo);//读取用户浏览器cookie信息并解密
                view.setViewName("redirect:index");
                return view;
            }else {
                view.setViewName("404");
                return view;
            }
        }
        /**
         * 其他身份返回出错信息
         */
        else {
            view.setViewName("404");
            return view;
        }
    }

    /**
     * 重定向到首页*/
    /*	ModelAndView view=new ModelAndView("redirect:goodsUI");*/
}
