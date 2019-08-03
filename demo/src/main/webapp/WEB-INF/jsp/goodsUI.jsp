<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>宝魅探</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="goodsUI">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />
	<!-- JS 部分引用 -->
	<script type="text/javascript" src="<%=basePath%>js/jquery-3.2.1.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/top.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/bootstrap.js"></script> 
	<script type="text/javascript" src="<%=basePath%>js/login.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/Verification_Code.js"></script>
	<!-- CSS 样式部分引用 -->
	<link 	type="text/css" 	   href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" >
	<link 	type="text/css" 	   href="<%=basePath%>css/top.css"   rel="stylesheet" >
	<link 	rel="stylesheet"	   type="text/css" href="<%=basePath%>css/goodsUI.css">
	<%-- <link 	type="text/css"		   href="<%=basePath%>css/login.css" rel="stylesheet" > --%>
  </head>

<body>
<div style="width: 100%;height: 84%; ">
	<div style="width: 100%;height: 20%; ">
  		<!-- 头部 -->
		<jsp:include page="top.jsp"></jsp:include>	
		<ul id="nav1">
			<li>
				<input  type="button" style="height:20px;background:#0095BB;color:#FFF; margin: 20px 20px 0px 0px ;float:right;" id="select" name="select"  value="查询" onclick="listByCondition()"/>
			</li>
			<input results="search" type="search"  placeholder="搜索" autofocus  style="float:right;margin: 20px 0;" />
			<!-- <input type="image" style="size: 10px" src="./images/fangdajing.png" onmousemove="this.src='./images/fangdajing.png'" onmouseout="this.src='./images/fangdajing.png'" /> -->
			<li >
				<select name="select" onchange=window.open(this.value) ><!-- 暂时先弹出新窗口 --><!-- <select name="select" onchange=window.open(this.value) > -->
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
				</select>
			</li>
			<li><a href="index">首页</a></li>
			<li ><a href="">分类</a></li>
			<li ><a href="jsp/addGoodsInfo">发布信息</a></li>
			<li ><a href="">待定菜单五</a></li>
			<li ><a href="">待定菜单六</a></li>
			<li ><a href="">二手指南</a></li>
		</ul> 
	</div>
	<div style="background:#00A2CA;width: 4%;height: 100%; font-size:16px; float: left;">
		<ul  class="nav nav-list " style="height: 100%;">
			<li><a class="active" href="#">所有类别</a></li>
			<li><a class="active" href="#">数码产品</a></li>
			<li><a href="#">图书音像</a></li>
			<li><a href="#">男装女装</a></li>
			<li><a href="#">家用电器</a></li>
			<li><a href="#">家居建材</a></li>
			<li><a href="#">户外运动</a></li>
			<li><a href="#">美妆</a></li>
			<li><a href="#">宠物</a></li>
			<li><a href="#">办公</a></li>
			<li><a href="#">食品</a></li>
			<li><a href="#">其他</a></li>
		</ul>			
	</div> 
	<div style="width: 18%;height: 80%; float: left;">
		<!-- 左边DIV(书籍类) -->	
		<div id="bookDiv" name="bookDiv" style="text-align:center;width:100%;height: 100%;float: left; position: relative;left: 0px;  top: 0px;right: 0px;border:solid 1px;border-top-color:transparent;">
			<table id="bookTable" name="bookTable" align="center" class="table table-hover table-striped"  style="width: 100%; text-align: center;">
              	<tbody id="bookTbody" name="bookTbody">	
					<tr style="font-size: 22px;"> 				  		
						<td colspan="2" style="text-align: center; font-size: 22px;"><font color="red">图书音像</font></td>
					</tr>              				
		 			<c:forEach begin="0" end="14" items="${listBook}" var="book" varStatus="i">
	 	            <%--  ${i.index从0开始}:${book.name}; --%>
			<%-- 	 我们常会用c标签来遍历需要的数据，为了方便使用，varStatus属性可以方便我们实现一些与行数相关的功能，如：
					奇数行、偶数行差异；最后一行特殊处理等等。先就varStatus属性常用参数总结下：
					c:forEach varStatus属性
	
					current当前这次迭代的（集合中的）项
					index当前这次迭代从 0 开始的迭代索引
					count当前这次迭代从 1 开始的迭代计数
					first用来表明当前这轮迭代是否为第一次迭代的标志
					last用来表明当前这轮迭代是否为最后一次迭代的标志
					begin属性值
					end属性值
					step属性值 
							
					${status.index}      输出行号，从0开始。
					${status.count}      输出行号，从1开始。
					${status.current}   当前这次迭代的（集合中的）项
					${status.first}  判断当前项是否为集合中的第一项，返回值为true或false
					${status.last}   判断当前项是否为集合中的最后一项，返回值为true或false
					begin、end、step分别表示：起始序号，结束序号，跳跃步伐。
					
					如：<c:forEach begin='1' end='5' step='2' items='${list}' var='item'>
					表示：操作list集合汇中1~5条数据，不是逐条循环，而是按每2个取值。即操作集合中的第1、3、5条数据。 --%>              	
					<tr style="font-size: 16px;"> 	
				  		<td style="text-align: center;"><span><a href="showGoodsInfo?TransactionID=${book.getTransactionID()}"><font color="blue">${book.getTitle()}</font></a></span></td>
					</tr>					
 					</c:forEach>
 				</tbody>
 			</table>
		</div>
	</div>
	<div style="width: 60%;height: 80%; float: left;">
		<!-- 中间 DIV -->
		<div style="width: 100%;height: 50%; ">
			<!-- 户外运动 -->
			<div id="sportDiv" name="sportDiv" style="text-align:center;width:25%;height: 100%;float: left; position: relative;left: 0px;  top: 0px;right: 0px;border:solid 1px; border-top-color:transparent;">
				<table id="sportTable"  name="sportTable" align="center" class="table table-hover table-striped"  style="width: 100%; text-align: center;">		
		            <tbody id="sportTbody" name="sportTbody">
						<tr style="font-size: 22px;"> 				  		
							<td colspan="2" style="text-align: center; font-size: 22px;"><font color="red">户外运动</font></td>
						</tr>		            				
		 				<c:forEach begin="0" end="5" items="${listSport}" var="sport" varStatus="i">
		               	<%--  ${i.index从0开始}:${sport.name}; --%>						             					
						<tr style="font-size: 16px;"> 	
					  		<td style="text-align: center;"><span><a href="showGoodsInfo?TransactionID=${sport.getTransactionID()}"><font color="blue">${sport.getTitle()}</font></a></span></td>
						</tr>						
		 				</c:forEach>
		 			</tbody>	
		 		</table>
					 
				
			</div>
			<!-- 中间DIV （数码产品）-->
			<div id="digitalDiv" name="digitalDiv" style="text-align:center;width:25%;height: 100%;float: left; position: relative;left: 0px;  top: 0px;right: 0px;border:solid 1px;border-top-color:transparent; ">
				<table id="digitalTable" name="digitalTable" align="center" class="table table-hover table-striped"  style="width: 100%; text-align: center;">	
	              <tbody id="digitalTbody" name="digitalTbody">
					<tr style="font-size: 22px;"> 				  		
						<td colspan="2" style="text-align: center; font-size: 22px;"><font color="red">数码产品</font></td>
					</tr>	              				
		 			<c:forEach begin="0" end="5" items="${listDigital}" var="digital" varStatus="i">
	 	            <%--  ${i.index从0开始}:${digital.name}; --%>				
					<tr style="font-size: 16px;"> 	
					  	<td style="text-align: center;"><span><a href="showGoodsInfo?TransactionID=${digital.getTransactionID()}"><font color="blue">${digital.getTitle()}</font></a></span></td>
					</tr>
					</c:forEach>					
				  </tbody>
	 			</table>
			</div>
			<!-- 男装女装 -->
			<div id="clothingDiv" name="clothingDiv" style="text-align:center;width:25%;height: 100%;float: left;position: relative;left: 0px;  top: 0px;right: 0px;border:solid 1px;border-top-color:transparent;">
				<table id="clothingTable" name="clothingTable" align="center" class="table table-hover table-striped"  style="width: 100%; text-align: center;">
		             <tbody id="clothingTbody" name="clothingTbody">
						<tr style="font-size: 22px;"> 				  		
							<td colspan="2" style="text-align: center; font-size: 22px;"><font color="red">男装女装</font></td>
						</tr>		             				
		 				<c:forEach begin="0" end="5" items="${listClothing}" var="clothing" varStatus="i">
		               	<%--  ${i.index从0开始}:${clothing.name}; --%>
				<%-- 	 我们常会用c标签来遍历需要的数据，为了方便使用，varStatus属性可以方便我们实现一些与行数相关的功能，如：
						奇数行、偶数行差异；最后一行特殊处理等等。先就varStatus属性常用参数总结下：
						c:forEach varStatus属性
		
						current当前这次迭代的（集合中的）项
						index当前这次迭代从 0 开始的迭代索引
						count当前这次迭代从 1 开始的迭代计数
						first用来表明当前这轮迭代是否为第一次迭代的标志
						last用来表明当前这轮迭代是否为最后一次迭代的标志
						begin属性值
						end属性值
						step属性值 
								
						${status.index}      输出行号，从0开始。
						${status.count}      输出行号，从1开始。
						${status.current}   当前这次迭代的（集合中的）项
						${status.first}  判断当前项是否为集合中的第一项，返回值为true或false
						${status.last}   判断当前项是否为集合中的最后一项，返回值为true或false
						begin、end、step分别表示：起始序号，结束序号，跳跃步伐。
						
						如：<c:forEach begin='1' end='5' step='2' items='${list}' var='item'>
						表示：操作list集合汇中1~5条数据，不是逐条循环，而是按每2个取值。即操作集合中的第1、3、5条数据。 --%>              					
						<tr style="font-size: 16px;"> 	
					 	 	<td style="text-align: center;"><span><a href="showGoodsInfo?TransactionID=${clothing.getTransactionID()}"><font color="blue">${clothing.getTitle()}</font></a></span></td>
						</tr>
						</c:forEach>
					</tbody>
		 		</table>	
			</div>  
			<!-- 美妆 -->
			<div id="makeupDiv" name="makeupDiv" style="text-align:center;width:25%;height: 100%;float: left; position: relative;left: 0px;  top: 0px;right: 0px;border:solid 1px; border-top-color:transparent;">
				<table id="makeupTable" name="makeupTable"  align="center" class="table table-hover table-striped"  style="width: 100%; text-align: center;">		
		              <tbody id="makeupTbody" name="makeupTbody">	
						<tr style="font-size: 22px;"> 				  		
							<td colspan="2" style="text-align: center; font-size: 22px;"><font color="red">美妆</font></td>
						</tr>		              			
						<c:forEach begin="0" end="5" items="${listMakeup}" var="makeup" varStatus="i">
		 	             	<%--  ${i.index从0开始}:${digital.name}; --%>					             					
						<tr style="font-size: 16px;"> 	
					 	 	<td style="text-align: center;"><span><a href="showGoodsInfo?TransactionID=${makeup.getTransactionID()}"><font color="blue">${makeup.getTitle()}</font></a></span></td>
						</tr>
			 			</c:forEach>
			 		</tbody>
		 		</table>
					 
				
			</div>
		</div>
		<div class="carousel slide" id="carousel-914875" style="width: 100%;height: 50%;">
				<ol class="carousel-indicators">
					<li data-slide-to="0" data-target="#carousel-914875" class="active">&nbsp;</li>
					<li data-slide-to="1" data-target="#carousel-914875">&nbsp;</li>
					<li data-slide-to="2" data-target="#carousel-914875">&nbsp;</li>
				</ol>				
				<div class="carousel-inner" style="width: 100%;height: 100%;">
					<div class="item active"><img alt="" src="http://www.bootcss.com/p/layoutit/img/1.jpg" style="width: 100%;height: 100%;"/>
						<div class="carousel-caption" >
							<h4>棒球</h4>							
							<p>棒球运动是一种以棒打球为主要特点，集体性、对抗性很强的球类运动项目，在美国、日本尤为盛行。</p>
						</div>
					</div>					
					<div class="item"><img alt="" src="https://cdn.sinaimg.cn.52ecy.cn/large/005BYqpgly1g2s8ui8wq1j311i0u0dm4.jpg" style="width: 100%;height: 100%;"/>
						<div class="carousel-caption">
							<h4>冲浪</h4>
							
							<p>冲浪是以海浪为动力，利用自身的高超技巧和平衡能力，搏击海浪的一项运动。运动员站立在冲浪板上，或利用腹板、跪板、充气的橡皮垫、划艇、皮艇等驾驭海浪的一项水上运动。</p>
						</div>
					</div>			
					<div class="item"><img alt="" src="http://www.bootcss.com/p/layoutit/img/3.jpg" style="width: 100%;height: 100%;"/>
						<div class="carousel-caption" >
							<h4>自行车</h4>
							
							<p>以自行车为工具比赛骑行速度的体育运动。1896年第一届奥林匹克运动会上被列为正式比赛项目。环法赛为最著名的世界自行车锦标赛。</p>
						</div>
					</div>
				</div>
				<a class="left carousel-control" data-slide="prev" href="#carousel-914875">&lsaquo;</a> 
				<a class="right carousel-control" data-slide="next" href="#carousel-914875">&rsaquo;</a>
		</div>		
	</div>
	<div style="width: 18%;height: 80%; float: left;">	
		<!-- 其他物品-->
		<div style="text-align:center;width:100%;height: 100%;float: left;position: relative;left: 0px;  top: 0px;right: 0px;border:solid 1px;border-top-color:transparent;">
			<table  align="center" class="table table-hover table-striped"  style="width: 100%; text-align: center;">
	            <tbody id="digitalTbody">
					<tr style="font-size: 22px;"> 				  		
						<td colspan="2" style="text-align: center; font-size: 22px;"><font color="red">其他物品</font></td>
					</tr>	            					
	 				<c:forEach begin="0" end="14" items="${listOther}" var="other" varStatus="i">
	               	<%--  ${i.index从0开始}:${digital.name}; --%>				            	 	
				  	<tr style="font-size: 16px;"> 	
					 	 <td style="text-align: center;"><span><a href="showGoodsInfo?TransactionID=${other.getTransactionID()}"><font color="blue">${other.getTitle()}</font></a></span></td>
					</tr>
	 				</c:forEach>
	 			</tbody>
	 		</table>	
		</div>  

	</div>

</div>
<div style="width: 100%;height: 16%;">
<jsp:include page="../base/footer.jsp"></jsp:include>
<%-- <jsp:include page="../base/loadImage.jsp"></jsp:include> --%>
</div>
</body>

</html>
 	