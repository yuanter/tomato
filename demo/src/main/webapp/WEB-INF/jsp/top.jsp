<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
    <base href="<%=basePath%>">
   
    <title>top_style</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="头部">

	<link 	type="text/css" 	   href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" >
	<link   type="text/css"        href="<%=basePath%>css/login.css" rel="stylesheet" >
	<link 	type="text/css" 	   href="<%=basePath%>css/top.css"   rel="stylesheet" >
	<script type="text/javascript" src="<%=basePath%>js/jquery-3.2.1.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/top.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/commonJS.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/bootstrap.js"></script> 
	<script type="text/javascript" src="<%=basePath%>js/login.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/Verification_Code.js"></script>
 </head>
<body onload="onloadNotice()">

<div id="top" >
<span id="logoSpan" onclick="window.location.href='<%=basePath%>index'">宝魅探</span> 

<!-- 链接到收藏夹网址 -->
<input type="hidden" id="hiddenInput_username" value="${StudentID}">
<a class="login_register" onclick="openModalButton()"><span>登陆/注册</span></a>
<div id="heart_logo"  onclick="change(this)" rel="sidebar"><a></a></div>
<div id="goods" >
<ul>
	<li onmouseout="this.className='menu2'" onmouseover="this.className='menu1'" class="menu2" style="text-align: center;">购物车
		<div class="list"> 
			<a href="userInfo?studentID=${cookie.username.value}">我的账号</a><br /> 
			<a href="松柏的订单详情链接" target="_blank">我的购物车</a><br /> 
			<a href="index" target="_blank" >菜单</a><br /> 
			<a href="http://www.keleyi.com/a/bjac/21e2e5321077656f.htm" target="_blank" >11个js技巧</a><br /> 
		</div> 
	</li> 
</ul>
</div>
<div id="goods_logo"   onmouseout="startOnmouseOut()" onmouseover="startOnmouseOver()">
	<ul>
		<li id="openCSS"   class="menu3" style="text-align: center;">个人信息
			<div class="list"> 
				<a href="userInfo?studentID=${StudentID}">我的账号</a><br />
				<a href="userTransactionInfo?studentID=${StudentID}">我的发布</a><br />
			</div> 
		</li>
	</ul>
</div>
<center>
<marquee  behavior="scroll"  direction="left" scrollamount="4px" scrolldelay="100" loop="5"  width="30%" >
<span id="marqueeGongGao" style="font: italic;font-size: 18px;" >
<!-- 
<marquee  direction="滚动方向">滚动文字</marquee>
<marquee  behavior="滚动方式">
	behavior的取值	滚动方式
	scroll	循环滚动，默认效果
	slide	只滚动一次就停止
	alternate	来回交替进行滚动
</marquee>
 <marquee   scrollamount="滚动速度">滚动文字</marquee>
    在该语法中，滚动文字的速度实际上是设置滚动文字每次移动的长度，以像素为单位。
<marquee  scrolldelay="时间间隔">滚动文字</marquee>
    时间间隔单位是毫秒（千分之一秒）
<marquee  loop="循环次数">滚动文字</marquee>
<marquee  width=""  height="">滚动文字</marquee>
    宽度和高度的单位均为像素。
 <marquee  bgcolor="颜色代码">滚动文字</marquee>
    文字背景颜色设置为 16 位颜色码
<marquee  hspace="水平范围"  vspace="垂直范围">滚动文字</marquee>
    水平和垂直范围的单位均为像素。 
 -->
</span></marquee>
</center>
</div>
<jsp:include page="login.jsp"></jsp:include>
<!-- ----------------------------------------------登陆部分----------------------------------------- -->
<!--      
	 <button  style="display: none;" id="modalBotton" name="modalButton" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
           开始执行模态框
     </button>
     模态框（modal）
     <div class=" modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
       <div class="modal-dialog">
         <div class="modal-content">
           <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
              &times;
              </button>
              <h4 class="modal-title" id="myModalLabel">
                	   模态框（modal）标题  
                	 <center>用户登陆</center>               
              </h4>
            </div>
            
            
 <form id="login_form" action="jsp/login" method="POST">   
	<div  class="modal-body">
   		 在这里添加文本             

			账号：<input type="text"  id="userid" name="userid" maxlength="8"
			data-error="请填写用户名" placeholder="用户名"  autofocus required><br />
			密码：<input type="password"  id="password" name="password" maxlength="20"
		 	data-error="请填写密码" placeholder="密码" required><br/>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="tip" style="font-size:18px;"></span><br>
			<input type="submit" id="submit_btn" class="btn btn-default" data-dismiss="modal" value="登陆">
			<input type="button" id="register" class="btn btn-default" data-dismiss="modal" value="注册" onclick="window.location.href='jsp/register'">	
					
		
	</div>



              <div  class="modal-footer">
              <center>
                 <button id="submit_btn" onclick="formSubmit()" type="button" class="btn btn-primary">
                                                       登陆
                 </button>
                 <button type="button" id="register" class="btn btn-primary" value="注册" onclick="window.location.href='jsp/register'">
                                                      注册 
                 </button>
                </center>
                 <button type="button" id="closeBtn" class="btn btn-primary" data-dismiss="modal">
                                                     关闭
                 </button>
              </div>
              </form>
         </div>
      </div>/.modal-content
      </div> /.modal



 -->
<!-- ----------------------------------------------登陆后显示部分----------------------------------------- -->

</body>
</html>
