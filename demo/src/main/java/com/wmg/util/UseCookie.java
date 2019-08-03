package com.wmg.util;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Date;


/**
在保存用户信息阶段，主要的工作是对用户的信息进行加密并保存到客户端。加密用户的信息是较为繁琐的，大致上可分为以下几个步聚：
① 得到用户信息（例如用户名+密码）、经MD5加密后的用户密码、cookie有效时间(本文设置的是两星期，可根据自己需要修改)
② 自定义的一个webKey，这个Key是我们为自己的网站定义的一个字符串常量，这个可根据自己需要随意设置
③ 将上两步得到的四个值得新连接成一个新的字符串，再进行MD5加密，这样就得到了一个MD5明文字符串
④ 将用户名、cookie有效时间、MD5明文字符串使用“：”间隔连接起来，再对这个连接后的新字符串进行MD5
⑤ 设置一个cookieName,将cookieName和上一步产生的MD5编码写入到客户端。

其实弄明白了保存原理，读取及校验原理就很容易做了。读取和检验可以分为下面几个步骤
① 根据设置的cookieName，得到cookieValue，如果值为空，就不帮用户进行自动登陆；否则执行读取方法
② 将cookieValue进行MD5，将取得的字符串以split(“:”)进行拆分，得到一个String数组cookieValues（此操作与保存阶段的第4步正好相反），这一步将得到三个值：
  cookieValues[0] ---- 用户名
  cookieValues[1] ---- cookie有效时间
  cookieValues[2] ---- MD5明文字符串
③ 判断cookieValues的长度是否为3，如果不为3则进行错误处理。
④ 如果长度等于3，取出第二个,即cookieValues[1]，此时将会得到有效时间（long型），将有效时间与服务器系统当前时间比较，如果小于当前时间，则说明cookie过期，进行错误处理。
⑤ 如果cookie没有过期，就取cookieValues[0]，这样就可以得到用户名了，然后去数据库按用户名查找用户。
⑥ 如果上一步返回为空，进行错误处理。如果不为空，那么将会得到一个已经封装好用户信息的User实例对象user
⑦ 取出实例对象user的用户名、密码、cookie有效时间（即cookieValues[1]）、webKey，然后将四个值连接起来，然后进行MD5加密，这样做也会得到一个MD5明文字符串（此操作与保存阶段的第3步类似）
⑧ 将上一步得到MD5明文与cookieValues[2]进行equals比较，如果是false，进行错误处理；如果是true，则将user对象添加到session中，帮助用户完成自动登陆*/

public class UseCookie {
 MD5 md5=new MD5();

//网站自定义秘钥
static final String serverKey="wmg19950722";
//cookie名字
static final String cookieName="Bmt_UserCookie";
/**
 * 作者：院长
 * 设置用户cookie
 * @param request
 * @param response
 * @param userInfo
 * @throws NoSuchAlgorithmException
 * @throws UnsupportedEncodingException
 */
public void setCookie(HttpServletRequest request,HttpServletResponse response,String userInfo) throws NoSuchAlgorithmException, UnsupportedEncodingException {
	//将用户信息解压出来
	String[] tempStr=userInfo.split(":");
	String username=tempStr[0];
	//用户有效期
	int effectiveTime=30;
	//当前时间
	SimpleDateFormat format=new SimpleDateFormat("yyyyMMdd");
	String serverStr=format.format(new Date());
	//加密这些信息
	//加密前的cookie
	String md5str = userInfo + effectiveTime + serverStr + serverKey;
		   md5str=md5.EncoderByMd5(md5str);
	//cookie信息
	String cookiestr =username+ ":"+effectiveTime + ":" + serverStr + ":" + md5str;		
	Cookie cookie=new Cookie(cookieName, cookiestr);
	Cookie usernameCookie=new Cookie("username", username);
	// 持久化该Cookie对象
	//设置cookie的使用路径，为根目录，即全部可用
	cookie.setPath("/");
	//设置Cookie的有效期为30天
	cookie.setMaxAge(30*24*60*60);
	// 将Cookie对象发送给浏览器
	response.addCookie(cookie);
	response.addCookie(usernameCookie);
	
	//设置session信息
	HttpSession session = request.getSession();
	//session.setMaxInactiveInterval(60*10);// 设置session对象超时销毁时间10分钟
	// request.getSession().invalidate();//手动销毁session方法
	// 浏览器关闭后还是将session id发送到浏览器，实现session持久化
	session.setAttribute("StudentID",username);
	Cookie cookiesUsername = new Cookie("JSESSIONID", session.getId());
	//设置cookie的生命周期为30天
	cookiesUsername.setMaxAge(30*24*60*60);
	//设置cookie的使用路径，为根目录，即全部可用
	cookiesUsername.setPath(request.getContextPath());
	//相应 给浏览器一个 session id   
    response.addCookie(cookiesUsername);
}


/**
 * 作者：院长
 * 读取用户cookie信息
 * @param request
 * @param response
 * @param userInfo
 * @return
 * @throws NoSuchAlgorithmException
 * @throws UnsupportedEncodingException
 */
public int ReaderCookie(HttpServletRequest request,HttpServletResponse response,String userInfo) throws NoSuchAlgorithmException, UnsupportedEncodingException {//0=no cookie 1=success 2=somewrong 
	//将用户用户名和密码解密出来
	String[] tempStr=userInfo.split(":");
	String username=tempStr[0];
	//String password=tempStr[1];
	Cookie[] cookies = request.getCookies();
	if (cookies != null && request.getSession(false) != null) {
		for (Cookie cookie : cookies) {
			// 获取客户端Cookie的名字
			String localCookieName =cookie.getName();
			if (cookieName.equals(localCookieName)) {
				//获取cookie值
				String cookieValue=cookie.getValue();				
				String[] sarr = cookieValue.split(":");//分割cookie值
				SimpleDateFormat format=new SimpleDateFormat("yyyyMMdd");
				String todayStr=format.format(new Date());
				//服务器设置的时间
				int cookieDate=Integer.parseInt(sarr[2]);
				//当前时间
				int todayDate=Integer.parseInt(todayStr);
				//服务器设置的有效cookie时长
				int valueTime=Integer.parseInt(sarr[1]);
				//当前时间-服务器设置的时间<=有效时长
				if ((todayDate-cookieDate)<=valueTime) {
					String md5str=userInfo + sarr[1] + sarr[2] +serverKey;
						   md5str=md5.EncoderByMd5(md5str);
					if (md5str.equals(sarr[3])) {//将加密后的明文对比
						HttpSession session = request.getSession();
						//session.setMaxInactiveInterval(60*10);// 设置session对象超时销毁时间10分钟
						// request.getSession().invalidate();//手动销毁session方法
						System.out.println("进入标志");
						// 浏览器关闭后还是将session id发送到浏览器，实现session持久化
						session.setAttribute("StudentID",username);
						Cookie cookiesUsername = new Cookie("JSESSIONID", session.getId());
						//设置cookie的生命周期为10min
						cookiesUsername.setMaxAge(60*10);
						//设置cookie的使用路径，为根目录，即全部可用
						cookiesUsername.setPath("/");
						//相应 给浏览器一个 session id   
				        response.addCookie(cookiesUsername);
						return 1;
					} else {
						return 2;
					}
				}else {
					return 2;
				}

			}else {
				return 2;
			}
		}
	}
	//没有找到该cookie
	return 0;
   
}
}
