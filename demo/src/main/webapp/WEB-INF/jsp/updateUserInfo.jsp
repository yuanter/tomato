<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type"    content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />    
	<meta http-equiv="pragma"          content="no-cache">
	<meta http-equiv="cache-control"   content="no-cache">
	<meta http-equiv="expires"		   content="0">    
	<meta http-equiv="keywords"        content="keyword1,keyword2,keyword3">
	<meta http-equiv="description"     content="管理页面">
		<!-- JS 部分引用 -->	
	<script type="text/javascript" src="<%=basePath%>js/jquery-3.2.1.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/commonJS.js"></script>	
	<script type="text/javascript" src="<%=basePath%>js/top.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/bootstrap.js"></script> 
	<script type="text/javascript" src="<%=basePath%>js/login.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/admin.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/register.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/updateUserInfo.js"></script>
	<!-- CSS 样式部分引用 -->
	<link 	type="text/css" 	   href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" >
	<link 	type="text/css" 	   href="<%=basePath%>css/top.css"   rel="stylesheet" >
<title>更新用户信息</title>
</head>

	
<body onload="setSex1()">
  <!-- 整块DIV区域 -->
  <!-- 头部 -->
	<div style="width: 100%;" >
		<jsp:include page="top.jsp"></jsp:include>
	</div>
<form id="Update" name="Update"  method="post">
	<table  align="center" class="table table-hover table-striped"  style="width: 100%;height:300px; text-align: center;">
  <thead>
		<tr>
			<th colspan="3" style="text-align: center; font-size: 22px;">用户信息管理</th>
		</tr>
  </thead>
	<tr>
			<td style="text-align: right;"><p style="margin-left: 180px;"><label>学号：</label></p></td>
			<td style="text-align: left;"><span id="username_div" style="text-align: left;color:red;border:true;">${userInfo.getStudentID()}</span></td>			
	</tr>	
	<tr>	
			<td style="text-align: right;"><label>密码：</label></td>
			<td style="text-align: left;"><input type="text"  id="psw1" name="psw1" maxlength="20" data-error="请填写密码" placeholder="请输入密码" required value="${userInfo.getPassword()}"> 
			<label id="psw1_div" style="text-align: left;color:red;">这是加密后的密码</label></td>			
	</tr>	
 	<tr>

 			<td style="text-align: right;"><label>昵称：</label></td>
 			<td style="text-align: left;"><input type="text" id="userNickName" name="userNickName" placeholder="请输入昵称"  required value="${userInfo.getUserNickName()}" onblur="onblur7()"/></td>
	</tr>
	<tr>

 			<td style="text-align: right;"><label>姓名：</label></td>
 			<td style="text-align: left;"><input type="text" id="userName" name="userName" placeholder="请输入姓名"  required value="${userInfo.getName()}" onblur="onblur7()"/></td>
	</tr>		
	<tr>
 			<td style="text-align: right;"><label>电话：</label></td>
 			<td style="text-align: left;"><input type="text" id="tel" name="tel" placeholder="请输入手机号码" required value="${userInfo.getTel()}" onblur="onblurTel()"/>
 			<label id="tel_div" style="text-align: left;color:red;visibility: visible;"></label></td>
	</tr>
	<tr>
 			<td style="text-align: right;"><label>邮箱：</label></td>
 			<td style="text-align: left;"><input type="text" id="email" name="email" placeholder="请输入邮箱"  required value="${userInfo.getEmail()}" onblur="onblur7()"/>
 			<label id="email_div" style="text-align: left;color:red;visibility: visible;"></label></td>
	</tr>
	<tr>
			<td style="text-align: right;"><label>性别：</label></td>
			<td style="text-align: left;"><input type="radio" id="sex0" value="男" name="sex">男&nbsp;&nbsp;
			<input type="hidden" id="Sex_hidden" value="${userInfo.getSex()}"><!-- 给性别设置值 -->
			<input type="radio" id="sex1"  value="女" name="sex">女</td>
	</tr>
	<tr>

 			<td style="text-align: right;"><label>地址：</label></td>
 			<td style="text-align: left;"><TEXTAREA id="address" name="address" cols="10" rows="3" style="width:50%;font-size:12px;color:#666;" placeholder="请输入个人地址" >${userInfo.getUserAddress()}</TEXTAREA>
 			<label id="tel_div" style="text-align: left;color:red;visibility: visible;"></label></td>
	</tr>
	<tr>

 			<td style="text-align: right;"><label>身份证：</label></td>
 			<td style="text-align: left;"><input type="text" id="IDCard" name="IDCard" placeholder="请输入身份证" required value="${userInfo.getIDCard()}" />
 			<label id="tel_div" style="text-align: left;color:red;visibility: visible;"></label></td>
	</tr>	
	<tr>
			<td style="text-align: right;"><button type="button" class="btn btn-primary" value="确定" id="button1" onclick="window.location.href='<%=basePath%>index'" >首页</button></td>
			<td style="text-align: left;"><button type="button" class="btn btn-primary" value="确定" id="button1" onclick="submitRegisterForm()" >确定</button>&nbsp;&nbsp;<button type="button" class="btn btn-primary" value="取消" id="button2" >取消</button></td>
			<td style="text-align: left;"><label id="div2"></label></td>
	</tr>
</table>
 </form>
<jsp:include page="../base/footer.jsp"></jsp:include>
</body>
</html>