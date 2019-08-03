<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>    
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="管理页面">
		<!-- JS 部分引用 -->	
	<script type="text/javascript" src="<%=basePath%>js/jquery-3.2.1.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/commonJS.js"></script>	
	<script type="text/javascript" src="<%=basePath%>js/top.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/bootstrap.js"></script> 
	<script type="text/javascript" src="<%=basePath%>js/login.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/admin.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/Verification_Code.js"></script>
	<!-- CSS 样式部分引用 -->
	<link 	type="text/css" 	   href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" >
	<link 	type="text/css" 	   href="<%=basePath%>css/top.css"   rel="stylesheet" >

<title>管理页面</title>
</head>

<body > 
  <!-- 整块DIV区域 -->
  <!-- 头部 -->
	<div style="width: 100%;" >
		<jsp:include page="top.jsp"></jsp:include>
	</div>
<!------------------------------------------ 这部分是用户信息管理表 ------------------------------------------------>
<table  align="center" class="table table-hover table-striped"  style="width: 100%;height:300px; text-align: center;">
  <thead>
		<tr>
			<th colspan="13" style="text-align: center; font-size: 22px;">用户信息管理</th>
		</tr>
  </thead>
  	<tr >
		<td colspan="7" style="text-align: center;"><span class="label label-info">学号：</span><input class="input2" type="text" value="${ub.getRoleName()}" id="rolename" name="rolename" style="width: 195px; "/></td>
		<td	colspan="2" style="text-align:center;"></td>
		<td colspan="4" style="text-align: center;">
		  <input type="button" class="btn btn-primary" id="selectUser" name="selectUser" value="查询" onclick="listByCondition()"/>&nbsp;&nbsp;
		  <input type="button" class="btn btn-primary" id="rest" name="rest" value="重置"  onclick="restform()" />&nbsp;&nbsp;
		  <input type="button" class="btn btn-primary" id="addUser"name="newcreate" value="新增" onclick="addRole()" />&nbsp;&nbsp;	 
		  <input type="button" class="btn btn-primary" id="delUser" name="deluser" value="批量删除"   ><!-- onclick="del_user()" -->
		</td>
	</tr>
	<tr>
			<td style="text-align: center;"><input type="checkbox" id="allchoose" 
    			name="allchoose" value="allchoose" onclick="checkbox1()"><label><font color="red" >全选</font></label></td>
    		<td style="text-align: center;"><label><font color="red" >序号</font></label></td>
			<td style="text-align: center;"><label><font color="red" >学号</font></label></td>
			<td style="text-align: center;"><label><font color="red" >密码</font></label></td>
			<td style="text-align: center;"><label><font color="red" >用户昵称</font></label></td>
 			<td style="text-align: center;"><label><font color="red" >用户姓名</font></label></td>
 			<td style="text-align: center;"><label><font color="red" >性别</font></label></td>
 			<td style="text-align: center;"><label><font color="red" >电话</font></label></td>
 			<td style="text-align: center;"><label><font color="red" >邮箱</font></label></td>
			<td style="text-align: center;"><label><font color="red" >身份证</font></label></td>
			<td style="text-align: center;"><label><font color="red" >地址</font></label></td>
			<td style="text-align: center;"><label><font color="red" >注册时间</font></label></td>
			<td style="text-align: center;"><label><font color="red" >修改时间</font></label></td>
			<td style="text-align: center;"><label><font color="red" >操作</font></label></td>
	</tr>
	<!---------------------------- 将数据取出 ---------------------------------->
 	<c:forEach begin="0" end="9" items="${listUserInfo}" var="user" varStatus="i">
              <%--  ${i.index从0开始}:${user.name}; --%>
<%-- 	 我们常会用c标签来遍历需要的数据，为了方便使用，varStatus属性可以方便我们实现一些与行数相关的功能，如：
		奇数行、偶数行差异；最后一行特殊处理等等。先就varStatus属性常用参数总结下：		
		${status.index}      输出行号，从0开始。
		${status.count}      输出行号，从1开始。
		${status.current}   当前这次迭代的（集合中的）项
		${status.first}  判断当前项是否为集合中的第一项，返回值为true或false
		${status.last}   判断当前项是否为集合中的最后一项，返回值为true或false
		begin、end、step分别表示：起始序号，结束序号，跳跃步伐。
		
		如：<c:forEach begin='1' end='5' step='2' items='${list}' var='item'>
		表示：操作list集合汇中1~5条数据，不是逐条循环，而是按每2个取值。即操作集合中的第1、3、5条数据。 --%>
    <tr>
    	<td style="text-align: center;"><input type="checkbox" name="choose" value="${i.index+1}"></td>
    	<td style="text-align: center;">${i.index+1}</td> 
    	<td style="text-align: center;"><input type="text" style="display:none;" id="val${i.index+1}" name="val${i.index+1}" value="${user.getStudentID()}" /> ${user.getStudentID()}</td>   			
		<td style="text-align: center;">${user.getPassword()}</td>	
    	<td style="text-align: center;">${user.getUserNickName()}</td>
    	<td style="text-align: center;">${user.getName()}</td>
    	<td style="text-align: center;">${user.getSex()}</td>
    	<td style="text-align: center;">${user.getTel()}</td>
    	<td style="text-align: center;">${user.getEmail()}</td>
    	<td style="text-align: center;">${user.getIDCard()}</td>
    	<td style="text-align: center;">${user.getUserAddress()}</td>
    	<td style="text-align: center;">${user.getRegistrationTime()}</td>
    	<td style="text-align: center;">${user.getModifyTime()}</td>    	
    	<td style="text-align: center;">
    		<a href="userInfo?studentID=${user.getStudentID()}" style="color: blue;">修改</a>
    		⊙<a href="deleteUserInfo?StudentID=${user.getStudentID()}" style="color: blue;" onclick="return window.confirm('是否删除？');">删除</a>
    	</td>
    </tr>			
    </c:forEach >
    <c:forEach begin="0" end="0" items="${listUserInfo}" var="user" varStatus="i">
 		<tr>
			<td colspan="13" style="text-align:center;">		
				<div id="fenye1" >
					<ul  class="pagination" >
						<li><a href="admin/onloadGoodsInfo">首页</a></li>
						<li><a href="#">&laquo;</a></li>
						<li class="active"><a href="#">${i.index+1}</a></li>
						<li><a href="#">${i.index+2}</a></li>
						<li><a href="#">${i.index+3}</a></li>
						<li><a href="#">${i.index+4}</a></li>
						<li><a href="#">${i.index+5}</a></li>
						<li><a href="#">&raquo;</a></li>
						<li><a href="adminTailPage" onclick="fenye(this.value)">尾页</a></li>
						<span class="label label-default">第</span>
						<li><input type="text" id="inputPage" placeholder="1" style="text-align: center;"></li>
		         		<span class="label label-default">页</span>
		         		<button class="label label-info" id="searchGoodsInfoBtn">搜索</button>  			 		
					</ul>				
				</div>
			</td>
		</tr>
	</c:forEach>
</table>


<!------------------------------------------ 这部分是交易信息管理表 ------------------------------------------------>


<table  align="center" class="table table-hover table-striped"  style="width: 100%;height:300px; text-align: center;">
  <thead>
		<tr>
			<th colspan="16" style="text-align: center; font-size: 22px;">交易信息管理</th>
		</tr>
  </thead>
  	<tr >
		<td colspan="3" style="text-align: center;"><span class="label label-info">通过用户学号查询：</span><input class="input2" type="text" value="${ub.getRoleName()}" id="rolename" name="rolename" style="width: 195px; "/></td>
		<td colspan="3" style="text-align: center;"><span class="label label-info">通过交易信息ID查询：</span><input class="input2" type="text" value="${ub.getRoleName()}" id="rolename" name="rolename" style="width: 195px; "/></td>
		<td colspan="3" style="text-align: center;"><span class="label label-info">已完成的交易：</span><input class="input2" type="text" value="${ub.getRoleName()}" id="rolename" name="rolename" style="width: 195px; "/></td>		
		<td colspan="3" style="text-align: center;"><span class="label label-info">进行中的交易：</span><input class="input2" type="text" value="${ub.getRoleName()}" id="rolename" name="rolename" style="width: 195px; "/></td>		
		<td colspan="4" style="text-align: center;">
		  <input type="button" class="btn btn-primary" id="selectUser" name="selectUser" value="查询" onclick="listByCondition()"/>&nbsp;&nbsp;
		  <input type="button" class="btn btn-primary" id="rest" name="rest" value="重置"  onclick="restform()" />&nbsp;&nbsp;
		  <input type="button" class="btn btn-primary" id="addUser"name="newcreate" value="新增" onclick="addRole()" />&nbsp;&nbsp;	 
		  <input type="button" class="btn btn-primary" id="delUser" name="deluser" value="批量删除"   ><!-- onclick="del_user()" -->
		</td>
	</tr>
	<tr>
			<td style="text-align: center;"><input type="checkbox" id="allchoose" 
    			name="allchoose" value="allchoose" onclick="checkbox1()"><label><font color="red" >全选</font></label></td>
    		<td style="text-align: center;"><label><font color="red" >序号</font></label></td>
			<td style="text-align: center;"><label><font color="red" >交易信息ID</font></label></td>
			<td style="text-align: center;"><label><font color="red" >标题</font></label></td>
			<td style="text-align: center;"><label><font color="red" >交易方式</font></label></td>
 			<td style="text-align: center;"><label><font color="red" >物品类别</font></label></td>
 			<td style="text-align: center;"><label><font color="red" >物品成色</font></label></td>
 			<td style="text-align: center;"><label><font color="red" >物品价格</font></label></td>
			<td style="text-align: center;"><label><font color="red" >物品描述</font></label></td>
			<td style="text-align: center;"><label><font color="red" >照片</font></label></td>
			<td style="text-align: center;"><label><font color="red" >交易状态</font></label></td>
			<td style="text-align: center;"><label><font color="red" >创建时间</font></label></td>
			<td style="text-align: center;"><label><font color="red" >交易时间</font></label></td>
			<td style="text-align: center;"><label><font color="red" >交易地点</font></label></td>
			<td style="text-align: center;"><label><font color="red" >点击量</font></label></td>
			<td style="text-align: center;"><label><font color="red" >留言</font></label></td>
			<td style="text-align: center;"><label><font color="red" >操作</font></label></td>			
	</tr>
	<c:forEach begin="0" end="9" items="${listGoodsInfo}" var="goodsInfo" varStatus="i">
              <%--  ${i.index从0开始}:${ub.name}; --%>
	    <tr>
	    	<td style="text-align: center;"><input type="checkbox" name="choose" value="${i.index+1}"></td>
	    	<td style="text-align: center;">${i.index+1}</td> 
	    	<td style="text-align: center;">${goodsInfo.getTransactionID()}</td>   			
			<td style="text-align: center;">${goodsInfo.getTitle()}</td>	
	    	<td style="text-align: center;">${goodsInfo.getMode()}</td>
	    	<td style="text-align: center;">${goodsInfo.getCategory()}</td>
	    	<td style="text-align: center;">${goodsInfo.getCondition()}</td>
	    	<td style="text-align: center;">${goodsInfo.getPrice()}</td>
	    	<td style="text-align: center;">${goodsInfo.getDescribe()}</td>
	    	<td style="text-align: center;">${goodsInfo.getPhoto()}</td>
	    	<td style="text-align: center;">${goodsInfo.getTransactionState()}</td>
	    	<td style="text-align: center;">${goodsInfo.getCreateTime()}</td>
	    	<td style="text-align: center;">${goodsInfo.getTransactionTime()}</td>
	    	<td style="text-align: center;">${goodsInfo.getTransactionAddress()}</td>
	    	<td style="text-align: center;">${goodsInfo.getTrafficVolume()}</td>
	    	<td style="text-align: center;">${goodsInfo.getMessage()}</td>
	    	<td style="text-align: center;">
	    		<a href="addOrUpdateGoodsInfo?TransactionID=${goodsInfo.getTransactionID()}" style="color: blue;">修改</a>
	    		⊙<a href="deleteGoodsInfo?TransactionID=${goodsInfo.getTransactionID()}" style="color: blue;" onclick="return window.confirm('是否删除？');">删除</a>
	    	</td>
	    </tr>			
    </c:forEach>
	<tr>
			<td colspan="16" style="text-align:center;">
				<div id="fenye2" >
					<ul  class="pagination" >
						<li><a href="#" onclick="getData()">首页</a></li>
						<li><a href="#">&laquo;</a></li>
						<li class="active"><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">&raquo;</a></li>
						<li><a href="adminTailPage" onclick="fenye(this.value)">尾页</a></li>
						<span class="label label-default">第</span>
						<li><input type="text" id="inputPage" placeholder="1" style="text-align: center;"></li>
		         		<span class="label label-default">页</span>
		         		<button class="label label-info" id="searchGoodsInfoBtn">搜索</button>  			 		
					</ul>				
				</div>	
			</td>		
	</tr>
</table>
	
	
<!------------------------------------------ 这部分是系统管理表 ------------------------------------------------>


<table  align="center" class="table table-hover table-striped"  >
	<thead>
		<tr>
			<th colspan="7" style="text-align: center; font-size: 22px;">网站系统管理</th>
		</tr>
	</thead>
	<tr>
		<td style="text-align: right;">&nbsp;</td>
		<td style="text-align: right;">&nbsp;</td>
		<td style="text-align: right;">&nbsp;</td>
  		<td style="text-align: right;"><label><font color="red" >公告：</font></label></td>
  		<td style="text-align: right;"><TEXTAREA id="notice" cols="10" rows="3" style="width:100%;font-size:12px;color:#666;"></TEXTAREA></td>
  		<td style="text-align: left;"><input type="button" class="btn btn-primary" id="noticeBtn" name="noticeBtn" value="发布公告" onclick="notice()"/><td style="text-align: center;">		
		
	</tr>
	<tr>
		<td style="text-align: right;">&nbsp;</td>
		<td style="text-align: right;">&nbsp;</td>
		<td style="text-align: right;">&nbsp;</td>
		<td style="text-align: right;"><label><font color="red" >日志：</font></label></td>
		<td style="text-align: right;"><TEXTAREA id="log" cols="10" rows="3" style="width:100%;font-size:12px;color:#666;"></TEXTAREA></td>
  		<td style="text-align: left;"><input type="button" class="btn btn-primary" id="selectUser" name="selectUser" value="查看日志" onclick="listByCondition()"/><td style="text-align: center;">		
	</tr>
</table>	
</body>
</html>