<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<base href="<%=basePath%>">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="initial-scale=1,minimum-scale=1,width=device-width">
	<title>Error 404 (Not Found)</title>
<style>
@charset "utf-8";html{overflow:auto}body,div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,pre,form,fieldset,input,textarea,p,blockquote,th,td{margin:0;padding:0}body{font:12px/1.5 \5b8b\4f53,Arial,Verdana;color:#000;background:#f8f8f8}ul{list-style:none}button{border:0 none;padding:0;cursor:pointer;outline:0}img{border:0}a{text-decoration:none;color:#000;outline:0}.wrap{width:960px;margin:0 auto}.clear{clear:both}.clear_fix{zoom:1}.clear_fix:after{display:block;clear:both;content:".";visibility:hidden;height:0;font-size:0}.fl{float:left}.fr{float:right}.red{color:#c20101!important}#iframe{width:100%;height:100%}.notFound{background:url(./images/404.png) no-repeat center 120px;width:100%x;height:430px;margin:0 auto}.notFound div{font-family:Microsoft YaHei,\5b8b\4f53,Arial,Verdana;font-size:14px;color:#000;text-align:center;padding-top:270px}.notFound a{color:#37B6E8;text-decoration:underline}
</style>
</head>
<body>
<div class="notFound">
<div>
前方施工，<a href="javascript:history.go(-1)">返回上级</a>
 <span>
或者</span>
 <a href="index">返回首页</a>
 </div>
 </div>
 </body>
 </html>
