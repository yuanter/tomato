<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="图床">
	
	<script type="text/javascript" src="<%=basePath%>js/jquery.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/tuchuang.js"></script>
	<link 	type="text/css" 	   href="<%=basePath%>css/tuchuang.css"   rel="stylesheet" >
<title>图床</title>
</head>
<body>
	<div id="container">
		<div id="profile-img">
			<img src="https://yaohuo.me/tuchuang/" id="imgLoading" class="Rotation img" title="">
		</div>
		<div id="content">
			<p class="imgType" id="imgType"></p>
			<form id="form1">
				<a href="javascript:void(0)" id="SinaImg" onclick="update(&#39;sina&#39;)" class="btn btn-default" rel="nofollow">选择图片</a>
				<input type="file" id="file" name="file" onchange="sc($(&#39;#imgType&#39;).attr(&#39;imgType&#39;));" style="display:none" accept="image/*">
			</form>
			<div id="progress"><progress max="100" value="0" id="pg"></progress></div>
			<div class="imgContent" id="imgContent">
				<div id="imgurl" style="margin: 30px 0px 30px 0px;">
				<div class="code">以下为UBB代码</div>
				<textarea name="a" value="" id="Imgs_Ubb"></textarea>
				</div>
				<div id="images"></div>
			</div>
		</div>
	</div>
<!--
	<footer class="footer">
	<div class="container">
	<p class="text-muted" align="center">若上传过慢，可使用：<a href="/tuchuang/Index.htm">备用图床</a></p>
	</div>
	</footer>
-->
</body>
</html>