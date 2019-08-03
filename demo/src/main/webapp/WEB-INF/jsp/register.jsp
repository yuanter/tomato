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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>用户注册</title>
<link	type="text/css"		   href="<%=basePath%>css/register.css" rel="stylesheet" >
<link 	type="text/css" 	   href="<%=basePath%>css/goodsUI.css" rel="stylesheet" >
<script type="text/javascript" src="<%=basePath%>js/register.js"></script>
<script type="text/javascript" src="<%=basePath%>js/Verification_Code.js"></script>
</head>

<body id="body1" onload="Verification_Code()">
 	<!-- 头部 -->
	<div style="width: 100%;" >
		<jsp:include page="top.jsp"></jsp:include>
	</div>

<!-- 主体部分 -->
<div>
<form id="registerForm"><!--  action="register/insertUserInfo" method="POST"> -->
<table  align="center" class="table table-hover table-striped"  style="width: 100%;height:300px; text-align: center;">
  <thead>
		<tr>
			<th colspan="4" style="text-align: center; font-size: 22px;">用户注册</th>
		</tr>
  </thead>
	<tr>
			<td style="text-align: right;"><p style="margin-left: 280px;"><label>学号<font color="red">*</font>：</label></p></td>
			<td style="text-align: left;"><input type="text"  id="username" name="username" mixlength="4" data-error="请填写学号" placeholder="请输入学号" autofocus required  onblur="onblur1()"  ><!-- onfocus="javascript:if(this.value=='请输入用户名')this.value='';" oninput="monitorInput(event)" onporpertychange="monitorInput(event)"--> <span id="username_div" style="text-align: left;color:red;border:true;visibility: visible;"></span></td>			
	</tr>	
	<tr>	
			<td style="text-align: right;"><label>密码<font color="red">*</font>：</label></td>
			<td style="text-align: left;"><input type="password"  id="psw1" name="psw1" maxlength="20" data-error="请填写密码" placeholder="请输入密码" required onblur="onblur2()"> 
			<label id="psw1_div" style="text-align: left;color:red;visibility: visible;"></label></td>			
	</tr>	
	<tr>	
			<td style="text-align: right;"><label>确认密码<font color="red">*</font>：</label></td>
			<td style="text-align: left;"><input type="password"  id="psw2" name="psw2" maxlength="20" data-error="请填写密码" placeholder="请输入密码" required onblur="onblur3()" > 
			<label id="psw2_div" style="text-align: left;color:red;visibility: visible;"></label></td>			
 	</tr>
	<tr>
 			<td style="text-align: right;"><label>电话<font color="red">*</font>：</label></td>
 			<td style="text-align: left;"><input type="text" id="tel" name="tel" placeholder="请输入手机号码" required onblur="onblurTel()"/>
 			<label id="tel_div" style="text-align: left;color:red;visibility: visible;"></label></td>
	</tr>
	<tr>
 			<td style="text-align: right;"><label>昵称<font color="red">*</font>：</label></td>
 			<td style="text-align: left;"><input type="text" id="userNickName" name="userNickName" placeholder="请输入昵称"  required onblur="onblur7()"/></td>
	</tr>
	<tr>
 			<td style="text-align: right;"><label>邮箱<font color="red">*</font>：</label></td>
 			<td style="text-align: left;"><input type="text" id="email" name="email" placeholder="请输入邮箱"  required onblur="onblur7()"/>
 			<label id="email_div" style="text-align: left;color:red;visibility: visible;"></label></td>
	</tr>
	<tr>
 			<td style="text-align: right;"><label>验证码<font color="red">*</font>：</label></td>
 			<td style="text-align: left;"><input type="text" id="input_Verification_Code" placeholder="请输入右边的验证码"  required onblur="onblur6()"/>
 			<label id="Verification_Code_div"   style="width: 188px; "  onclick="Verification_Code()"></label></td>
	</tr>
	<tr>
			<td style="text-align: right;"><label>性别<font color="red" >*</font>：</label></td>
			<td style="text-align: left;"><input type="radio" id="sex0" value="男" name="sex">男&nbsp;&nbsp;<input type="radio" id="sex1"  value="女" name="sex">女</td>
	</tr>
	<tr>
			<td style="text-align: right;"><label>是否同意总则<font color="red">*</font>：</label></td>
			<td style="text-align: left;"><input type="checkbox" id="zz" name="zz" value="总则" onclick="zongze()"><button type="button" value="确定" id="button1" onclick="submitRegisterForm()" disabled="true">确定</button>&nbsp;&nbsp;<button type="reset" value="取消" id="button2" >取消</button></td>
			<td style="text-align: left;"><label id="div2"></label></td>
	</tr>
</table>

 <TEXTAREA cols="" rows="" readOnly="true" style="width:100%;height:380px;font-size:18px;color:#666;  border: solid;2px;">
一、总则

1．1　用户应当同意本协议的条款并按照页面上的提示完成全部的注册程序。用户在进行注册程序过程中点击"同意"按钮即表示用户与本站达成协议，完全接受本协议项下的全部条款。
1．2　用户注册成功后，本站将给予每个用户一个用户帐号及相应的密码，该用户帐号和密码由用户负责保管；用户应当对以其用户帐号进行的所有活动和事件负法律责任。
1．3　用户可以使用本站各个频道单项服务，当用户使用本站各单项服务时，用户的使用行为视为其对该单项服务的服务条款以及本站在该单项服务中发出的各类公告的同意。
1．4　本站会员服务协议以及各个频道单项服务条款和公告可由本站随时更新，且无需另行通知。您在使用相关服务时,应关注并遵守其所适用的相关条款。
1．5　您在使用本站提供的各项服务之前，应仔细阅读本服务协议。如您不同意本服务协议,可随时对其的修改，您可以主动取消本站提供的服务；您一旦使用本站服务，即视为您已了解并完全同意本服务协议各项内容，包括本站对服务协议随时所做的任何修改，并成为本站用户。
</TEXTAREA>
</form>
</div>

 

<jsp:include page="../base/footer.jsp"></jsp:include>

</body>
</html>