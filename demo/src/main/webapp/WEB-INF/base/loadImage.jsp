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
	<meta http-equiv="description" content="This is my page">
<title>css自制loading效果</title>
</head>
<body>
 
<style>
    .loading-wrap {
        position: fixed;
        z-index: 100;
        left: 0;
        top: 0;
        right: 0;
        bottom: 0;
        background: #eee;
        line-height: 1;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }
    .loading-circle {
        position: relative;
        width: 40px;
        height: 40px;
        border-radius: 50%;
        background: #fff;
        box-shadow: 0 1px 2px rgba(0,0,0,.1);
        box-sizing: border-box;
    }
    .loading-circle-anim {
        position: absolute;
        top: 50%;
        left: 50%;
        width: 24px;
        height: 24px;
        margin-left: -12px;
        margin-top: -12px;
        border-radius: 50%;
        border: 2px solid #888;
        box-sizing: border-box;
        animation: loading 2s ease-out infinite;
    }
    .loading-circle-anim:after {
        content: " ";
        z-index: 1;
        position: absolute;
        background: #fff;
        top: -5px;
        left: 58%;
        bottom: 0;
        width: 50%;
        height: 30px;
    }
    @keyframes loading {
        0% {
            transform: rotate(0deg);
        }
        50% {
            transform: rotate(360deg);
        }
        100% {
            transform: rotate(720deg);
        }
    }
</style>
 
<div class="loading-wrap">
    <div class="loading-circle">
        <div class="loading-circle-anim"></div>
    </div>
</div>
 
</body>
</html>