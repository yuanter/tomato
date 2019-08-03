<%@ page language="java" import="java.util.*" 
contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'footer.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="shortcut icon" href="./images/logo3.jpg" />
<link rel="stylesheet" type="text/css" href="./css/footer.css">
</head>

<body>

	<!-- footer -->
	
	<div class="footer" style="background: rgba(0, 28, 50, 0);background-image: url('./images/dibu2.jpg');text-align:center; background-size: 100% 100%;height: 16%;">
		<!-- <p class="text-muted text-center"> -->
		<div style="float: left;">
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<img alt="140x140" src="./images/logo.jpg" class="img-circle" />
					</div>
				</div>
			</div>
		</div>		
		<div class="footer_div" style="font-size: 26px;text-align: right;">

			Copyright © 2019 &nbsp; &nbsp; 			
			<a href="<%=basePath%>index" >宝魅探</a>⊙<a href="http://www.bmt.pub"><font color="blue;">友情链接</font></a>		
        	<embed align="middle" width="33%" height="80%" title="Adobe Flash Player" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" allowscriptaccess="always" name="honehoneclock" bgcolor="#ffffff" quality="high" src="http://chabudai.sakura.ne.jp/blogparts/honehoneclock/honehone_clock_wh.swf" wmode="transparent">        			
       			
			<%-- <jsp:include page="Clock.jsp"></jsp:include> --%>		
		</div>

	</div>
</body>
</html>
