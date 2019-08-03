<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is login page">
<title>用户登陆</title>
</head>

	<script type="text/javascript" src="<%=basePath%>js/jquery-3.2.1.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/top.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/bootstrap.js"></script> 
	<script type="text/javascript" src="<%=basePath%>js/login.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/Verification_Code.js"></script>
	<link 	type="text/css" 	   href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" >
	<link   type="text/css"        href="<%=basePath%>css/login.css" rel="stylesheet" >
	<link 	type="text/css" 	   href="<%=basePath%>css/top.css"   rel="stylesheet" >
<body >


<!-- ----------------------------------------------登陆部分----------------------------------------- -->
     <button  style="display: none;" id="modalBotton" name="modalButton" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
           <!-- 开始执行模态框 -->
     </button>
     <!-- 模态框（modal） -->
     <div class=" modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
       <div class="modal-dialog">
         <div class="modal-content">
           <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
              &times;
              </button>
              <h4 class="modal-title" id="myModalLabel">
                	 <!--   模态框（modal）标题  --> 
                	 <center>用户登陆</center>               
              </h4>
            </div>
            
            
 <form id="login_form" action="login" method="POST">   
	<div  class="modal-body">
   		 <!-- 在这里添加文本 -->             

			账号：<input type="text"  id="userid" name="userid" maxlength="8"
			data-error="请填写用户名" placeholder="用户名"  autofocus required><br />
			密码：<input type="password"  id="password" name="password" maxlength="20"
		 	data-error="请填写密码" placeholder="密码" required><br/>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="tip" style="font-size:18px;"></span><br>
<!-- 			<input type="submit" id="submit_btn" class="btn btn-default" data-dismiss="modal" value="登陆">
			<input type="button" id="register" class="btn btn-default" data-dismiss="modal" value="注册" onclick="window.location.href='jsp/register'">	
			 -->		
		
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
      </div><!-- /.modal-content -->
      </div> <!-- /.modal -->




<!-- ----------------------------------------------登陆后显示部分----------------------------------------- -->

</body>
</html>