<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<title>发布交易信息</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="goodsInfo">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />
	<!-- 图床专用 -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
	<meta name="referrer" content="no-referrer">
	<!-- JS 部分引用 -->
	<script type="text/javascript" src="<%=basePath%>js/jquery-3.2.1.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/top.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/bootstrap.js"></script> 
	<script type="text/javascript" src="<%=basePath%>js/login.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/Verification_Code.js"></script>	
	<script type="text/javascript" src="<%=basePath%>js/tuchuang.js"></script>
	<!-- CSS 样式部分引用 -->
	<link 	type="text/css" 	   href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" >
	<link 	type="text/css" 	   href="<%=basePath%>css/top.css"   rel="stylesheet" >	
	<link 	type="text/css" 	   href="<%=basePath%>css/tuchuang.css"   rel="stylesheet" >	
	<link 	rel="stylesheet"	   type="text/css" href="<%=basePath%>css/goodsInfo.css">
</head>

<body>
<!-- 整块DIV区域 -->
<div style="width: 100%;height: 210%;">
	<div style="width: 100%;height:5%;">
	  <!-- 头部 -->
		<jsp:include page="top.jsp"></jsp:include>
	</div>
	<div style="width: 100%;height:95%;">
	<form id="addGoodsInfo" action="addGoodsInfo" method="post">
	<input type="hidden" id="getstudenID_Input" name="StudentID" value="${StudentID}">
		<table align="center" class="table table-hover table-striped" style="width: 100%;height:300px; text-align: center;" >
			  <thead>
					<tr>
						<th colspan="4" style="text-align: center;font-size: 22px;"><span id="goodsInfoID" name="goodsInfoID">欢迎${cookie.username.value},快来发布您的交易信息吧</span></th>
					</tr>
			  </thead>
			  <tbody>
				<tr>
						<td  style="text-align: right; vertical-align: middle;"><p style="margin-left: 80px;"><label>标题<font color="red">*</font>：</label></p></td>		
						<td  style="text-align: left;"><input type="text"  id="goodsTitle" name="goodsTitle" placeholder="标题最多输入40个字符" mixlength="40"  /></td>			
				</tr>	
				<tr>	
						<td style="text-align: right;vertical-align: middle;"><p style="margin-left: 80px;"><label>物品类型<font color="red">*</font>：</label></p></td>
						<td style="text-align: left;">	
						<select id="classification" name="classification"  >
							<option value="0">图书/音像</option>
							<option value="1">户外运动</option>
							<option value="2">数码</option>
							<option value="3">男装/女装</option>
							<option value="4">美妆</option>
							<option value="5">所有分类</option>
							<option value="6">家用电器</option>							
							<option value="8">居家/建材</option>														
							<option value="8">食品</option>
							<option value="9">办公</option>						
							<option value="10">宠物</option>
						</select></td>			
				</tr>	
				<tr>	
						<td style="text-align: right;vertical-align: middle;"><p style="margin-left: 80px;"><label>交易方式<font color="red">*</font>：</label></p></td>
						<td style="text-align: left;">			
						<select name="transactionMode"  >
							<option value="0">线上交易</option>
							<option value="1">线下交易</option>
							<option value="2">其他方式</option>
						</select></td>
			 	</tr>
				<tr>
			 			<td style="text-align: right;vertical-align: middle;"><p style="margin-left: 80px;"><label>物品成色&nbsp;：</label></p></td>
			 			<td style="text-align: left;">			
			 			<select name="Condition"  >
			 				<option value="0">其他</option>
			 				<option value="1">9.9成</option>
							<option value="2">9.5成</option>
							<option value="3">9成</option>
							<option value="4">8.5成</option>
							<option value="5">8成</option>
							<option value="6">7.5成</option>
							<option value="7">7成</option>
							<option value="8">6.5成</option>
							<option value="9">6成</option>
							<option value="10">伊拉克成色</option>
							<option value="11">全新</option>
						</select></td>
				</tr>
				<tr>
			 			<td style="text-align: right;vertical-align: middle;"><p style="margin-left: 80px;"><label>物品价格&nbsp;：</label></p></td>
			 			<td style="text-align: left;"><input type="text" id="Price" name="Price" placeholder="请输入价格" /><label>元	</label></td>
				</tr>
				<tr >
			 			<td style="text-align: right;vertical-align: middle;"><p style="margin-left: 80px;"><label>交易地点&nbsp;：</label></p></td>
			 			<td style="text-align: left;">
			 			<select name="transactionAddress"  >
							<option value="0">吹水街</option>
							<option value="1">一品堂</option>
							<option value="2">二雅厅</option>
							<option value="3">思齐楼</option>
							<option value="4">信达楼</option>
							<option value="5">至善楼</option>
							<option value="6">操场主席台</option>
						</select></td>
				</tr>	
				<tr>
			 			<td style="text-align: right;vertical-align: middle;"><p style="margin-left: 80px;"><label>联系方式<font color="red">*</font>：</label></p></td>
			 			<td style="text-align: left;"><input type="text" id="input_Verification_Code" placeholder="请输入联系方式"  required "/></td>
				</tr>
				<tr >
			 			<td style="text-align: right;vertical-align: middle;"><p style="margin-left: 80px;"><label>商品描述&nbsp;：</label></p></td>
			 			<td style="text-align: left;"><TEXTAREA id="describe" name="Describe" cols="10" rows="3" style="width:50%;height:180px;font-size:12px;color:#666;"></TEXTAREA></td>
				</tr>
				<tr>
			 			<td style="text-align: right;vertical-align: middle;"><p style="margin-left: 80px;"><label>上传照片&nbsp;：</label></p></td>
			 			<td style="text-align: left;"><button class="btn btn-default  btn-primary" onclick="update(&#39;sina&#39;)" >选择图片</button>
			 			<div id="progress"><progress max="100" value="0" id="pg"></progress></div>
						</td>
						
				</tr>
				<tr>
			 			<td style="text-align: right;vertical-align: middle;"><input  id="submit_btn" onclick="releaseGoodsInfo()" type="submit" class="btn btn-primary" value="确定发布" /></td>
			 			<td style="text-align: left;"><input type="reset" id="register" class="btn btn-primary" value="取消发布" /></td>
				</tr>
			 </tbody>
		</table>
		
		<div id="container">
			<div id="content">
				<p class="imgType" id="imgType"></p>
				<form id="form1">
		<!-- 		<a href="javascript:void(0)" id="SinaImg" onclick="update(&#39;sina&#39;)" class="btn btn-default" rel="nofollow">选择图片</a> -->
					<span style="font-size: 22px;">上传预览图如下：</span>
					<input type="file" id="file" name="file" onchange="sc($(&#39;#imgType&#39;).attr(&#39;imgType&#39;));" style="display:none" accept="image/*">
				</form>
				<div class="imgContent" id="imgContent">
					<div id="imgurl" style="margin: 30px 0px 30px 0px;">
					<div class="code"></div>
					<!-- <div class="code">以下为html代码</div> -->
						<textarea name="Photo" value="" id="Imgs_html"></textarea> 
					</div>
					<div id="images"></div>
				</div>
			</div>
		</div>
		</form>
	</div>
<div style="width: 100%;height: 15%;">
	<jsp:include page="../base/footer.jsp"></jsp:include>
</div>
</div>
</body>
</html>