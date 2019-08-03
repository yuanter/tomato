package com.wmg.Interceptor;

import com.wmg.service.impl.LoginServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Configuration
public class LoginHandlerInterceptor implements WebMvcConfigurer{

    @Autowired
    LoginServiceImpl loginServiceImpl;
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        HandlerInterceptor handlerInterceptor=new HandlerInterceptor() {
            @Override
            public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
                //		String requestURI = request.getRequestURI();
                Cookie[] cookies = request.getCookies();
                String cookieName = null;
                //如果获取到的这个url路径是在查询后台数据的方法的时候,进行拦截
                HttpSession session = request.getSession();
                String serviceName = (String) session.getAttribute("studenID");
                if (cookies != null)
                    for (Cookie cookie : cookies) {
                        // 获取Cookie的名字
                        String name = cookie.getName();
                        if (name.equals("Bmt_UserCookie")) {//cookie名字可以在UseCookie类中修改
                            cookieName = name;
                        }
                    }
                if (serviceName != null || cookieName != null) { //判断sessionid或者cookie是否存在
                    //登陆成功的用户
                    return true;
                } else {
                    System.out.println("少侠，您还没登陆呢，咱回去登陆先。路径为：" + request.getContextPath());
                    //没有登陆，转向登陆界面
                    response.sendRedirect(request.getContextPath() + "/index.jsp");
                    //request.getRequestDispatcher(request.getContextPath()+"/login.jsp").forward(request,response);
                    //request.getRequestDispatcher(request.getContextPath()+"/index.jsp").forward(request, response);

                    return false;
                }


            }
            @Override
            public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

            }

            @Override
            public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

            }
        };

        //添加到拦截器
        registry.addInterceptor(handlerInterceptor).addPathPatterns("/**").excludePathPatterns("/index","/login","/showGoodsInfo","/jsp/goodsUI",
                "/admin/onloadNotice","/css/**","/js/**","/images/**","/register/**","/**/register");
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {

    }
}
