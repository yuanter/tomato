<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<title>交易信息</title>
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
	<script type="text/javascript" src="<%=basePath%>js/showGoodsInfo.js"></script>
	<!-- CSS 样式部分引用 -->
	<link 	type="text/css" 	   href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" >
	<link 	type="text/css" 	   href="<%=basePath%>css/top.css"   rel="stylesheet" >	
	<link 	type="text/css" 	   href="<%=basePath%>css/tuchuang.css"   rel="stylesheet" >	
	<link 	rel="stylesheet"	   type="text/css" href="<%=basePath%>css/goodsInfo.css">
</head>

<body onload="dealData()">
<!-- 整块DIV区域 -->
<div style="width: 100%;height: 85%;">
	<div style="width: 100%;height:5%;">
	  <!-- 头部 -->
		<jsp:include page="top.jsp"></jsp:include>
	</div>
	<div style="width: 100%;height:95%;">
		<form id="goodsInfo">
		<table align="center" class="table table-hover table-striped" style="width: 100%;height:300px; text-align: center;" >
			  <thead>
					<tr>
						<th colspan="3" style="text-align: center;font-size: 22px;"><span id="goodsInfoID" name="goodsInfoID">交易信息详情</span><input type="hidden" id="getstudenID_Input" value="${studenID}"></th>
					</tr>
			  </thead>
			  <tbody>
				<tr>
						<td  style="text-align: right; vertical-align: middle;"><p style="margin-left: 110px;"><label>标题<font color="red">*</font>：</label></p></td>		
						<td  style="text-align: left;"><span id="goodsTitleSpan">${oneGoodsInfo.getTitle()}</span>
						<input type="text"  id="goodsTitle" name="goodsTitle"  placeholder="标题最多输入40个字符" value="${oneGoodsInfo.getTitle()}" mixlength="40"  /></td>			
				</tr>	
				<tr>	
						<td style="text-align: right;vertical-align: middle;"><label>物品类型<font color="red">*</font>：</label></td>
						<td style="text-align: left;">
						<input type="hidden" id="classificationId" value="${oneGoodsInfo.getCategory()}">	
						<select id="classification" name="classification"  >
							<option value="1">图书/音像</option>
							<option value="2">户外运动</option>
							<option value="3">数码</option>
							<option value="4">男装/女装</option>
							<option value="5">美妆</option>
							<option value="6">所有分类</option>
							<option value="7">家用电器</option>							
							<option value="8">居家/建材</option>														
							<option value="9">食品</option>
							<option value="10">办公</option>						
							<option value="11">宠物</option>
						</select></td>			
				</tr>	
				<tr>	
						<td style="text-align: right;vertical-align: middle;"><label>交易方式<font color="red">*</font>：</label></td>
						<td style="text-align: left;">	
						<input type="hidden" id="transactionModeId" value="${oneGoodsInfo.getMode()}">		
						<select id="transactionMode" name="transactionMode"  >
							<option value="1">线上交易</option>
							<option value="2">线下交易</option>
							<option value="3">其他方式</option>
						</select></td>
			 	</tr>
				<tr>
			 			<td style="text-align: right;vertical-align: middle;"><label>物品成色&nbsp;：</label></td>
			 			<td style="text-align: left;">	
			 			<input type="hidden" id="conditionId" value="${oneGoodsInfo.getCondition()}">	
			 			<select id="condition" name="condition"  >
			 				<option value="0">其他</option>
			 				<option value="1">9.9成</option>
							<option value="2">9.5成</option>
							<option value="3">9成</option>
							<option value="1">8.5成</option>
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
			 			<td style="text-align: right;vertical-align: middle;"><label>物品价格&nbsp;：</label></td>
			 			<td style="text-align: left;"><span id="PriceSpan">${oneGoodsInfo.getPrice()}元</span>
			 			<input type="text" id="Price" name="Price" placeholder="请输入价格" value="${oneGoodsInfo.getPrice()}" /><span id="RMB">元</span></td>
				</tr>
				<tr >
			 			<td style="text-align: right;vertical-align: middle;"><label>创建交易时间&nbsp;：</label></td>
			 			<td style="text-align: left;"><span id="createTime">${oneGoodsInfo.getCreateTime()}</span></td>
				</tr>
				<tr >
			 			<td style="text-align: right;vertical-align: middle;"><label>交易地点&nbsp;：</label></td>
			 			<td style="text-align: left;">
			 			<select id="transactionAddress" name="transactionAddress"  >
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
			 			<td style="text-align: right;vertical-align: middle;"><label>联系方式<font color="red">*</font>：</label></p></td>
			 			<td style="text-align: left;"><span id="telSpan">${goodsUser.getTel()}</span><input type="text" id="telInput" placeholder="请输入联系方式" value="${goodsUser.getTel()}"/></td>
				</tr>
				<tr >
			 			<td style="text-align: right;vertical-align: middle;"><label>商品描述&nbsp;：</label></td>
			 			<td style="text-align: left;"><TEXTAREA cols="10" rows="3" style="width:50%;height:180px;font-size:12px;color:#666;"></TEXTAREA></td>
				</tr>
				<tr>
			 			<td style="text-align: right;vertical-align: middle;"><label>上传照片&nbsp;：</label></td>
			 			<td style="text-align: left;"><button class="btn btn-default  btn-primary" onclick="update(&#39;sina&#39;)" >选择图片</button>
			 			<div id="progress"><progress max="100" value="0" id="pg"></progress></div>
						</td>
						
				</tr>
				<tr>
			 			<td style="text-align: right;vertical-align: middle;"><button id="submit_btn" onclick="releaseGoodsInfo()" type="button" class="btn btn-primary">
			                                                       确认发布
			                 </button></td>
			 			<td style="text-align: left;"><button type="reset" id="register" class="btn btn-primary" value="取消" >
			                                                      取消发布
			                 </button></td>
				</tr>
			 </tbody>
		</table>
		</form>
	</div>

</div>
<div style="width: 100%;height: 15%;">
	<jsp:include page="../base/footer.jsp"></jsp:include>
</div>
</body>
</html>