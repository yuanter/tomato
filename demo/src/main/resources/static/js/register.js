
//提示用户不能使用空用户名并校验用户名是否存在
function onblur1(){
	var studentID=$("#username").val();
	if(document.getElementById("username").value==''){
//		document.getElementById("username_div").style.display='block';
		document.getElementById("username_div").style.visibility='visible';
		document.getElementById("username_div").innerHTML="用户名不能为空";
	}
	else{
		if (studentID) {
//			$.post('register/userName',{"studentID":studentID},function(res){		
//				/*console.log(res.message);*/
//				document.getElementById("username_div").innerHTML="";
//				$("#username_div").append(res.message);			
//			});
			$.ajax({
				type: 'post',
				url: 'register/userName',
				cache:false,
				data: {"studentID":studentID}, 
	      	 	 beforeSend:function()
	        	{
//	            	$("#tip").html("<jsp:include page=\"../base/loadImage.jsp\"></jsp:include>");	      			
//	      	 		$("#username_div").val("");
	      	 		document.getElementById("username_div").innerHTML="";					
					return true;
	        	},
				success: function(data){
					$("#username_div").append(data);	
	             },

	             error:function(data){ 
	                 //总是执行这个error 
	            	 console.log("返回错误:"+data);	        
	              } 
			});		
		}else {
		  //document.getElementById("username_div").style.display='none';
			document.getElementById("username_div").innerHTML="&nbsp;&nbsp;&nbsp;&nbsp;";
			document.getElementById("username_div").style.visibility='hidden';
		}
	}
}

/*//监听输入框的值
function monitorInput(e){
	alert(e);
}*/


/**提示用户不能使用空密码*/
function onblur2(){
	if(document.getElementById("psw1").value==''){
//	document.getElementById("username_div").style.display='block';
	document.getElementById("psw1_div").innerHTML="密码不能为空";
	}
	else{
		//document.getElementById("username_div").style.display='none';
		document.getElementById("psw1_div").innerHTML="";
	}
}

/**提示用户不能使用空密码且校验与上一个密码框数值是否一致*/
function onblur3() {
	var psw1=$("#psw1").val();//密码1框数值
	var psw2=$("#psw2").val();//密码2框数值
	if(document.getElementById("psw2").value==''){
		document.getElementById("psw2_div").innerHTML="密码不能为空";
}else{
		if (psw1==psw2) {
			document.getElementById("psw2_div").innerHTML="";
	}else {
		document.getElementById("psw2_div").innerHTML="密码不一致";
	}
}
}

/**
 * 实现刷新检测手机号码是否被注册
 */
function onblurTel() {
	var tel=$("#tel").val();
	if(document.getElementById("tel").value==''){
//		document.getElementById("username_div").style.display='block';
		document.getElementById("tel_div").style.visibility='visible';
		document.getElementById("tel_div").innerHTML="手机号码不能为空";
	}
	else{
		if (tel) {
			$.ajax({
				type: 'post',
				url: 'register/Tel',
				cache:false,
				data: {"Tel":tel}, 
		  	 	 beforeSend:function()
		    	{
//		        	$("#tip").html("<jsp:include page=\"../base/loadImage.jsp\"></jsp:include>");	      			
//		  	 		$("#username_div").val("");
		  	 		document.getElementById("tel_div").innerHTML="";					
					return true;
		    	},
				success: function(data){
					$("#tel_div").append(data);	
		         },

		         error:function(data){ 
		             //总是执行这个error 
		        	 console.log("返回错误:"+data);	        
		          } 
			});
		}else {
			  //document.getElementById("username_div").style.display='none';
				document.getElementById("tel_div").innerHTML="&nbsp;&nbsp;&nbsp;&nbsp;";
				document.getElementById("tel_div").style.visibility='hidden';
			}
		}
}
/**提交注册信息*/
function submitRegisterForm() {
	var username=$("#username").val();
	var psw=$("#psw1").val();
	var tel=$("#tel").val();
	var userNickName=$("#userNickName").val();
	var input_Verification_Code=$("#input_Verification_Code").val();
    var radios = document.getElementsByName("sex");
    var sex="";
    for(var i=0;i<radios.length;i++){
        if(radios[i].checked == true){
        	sex = radios[i].value;
        }
    }	
//	alert("username:"+username+"psw:"+psw+"tel:"+tel+"userNickName:"+userNickName+"sex:"+sex);
	if (username!=""&&psw!=""&&tel!=""&&userNickName!=""&&input_Verification_Code!=""&&sex!="") {
	$.ajax({
		type: 'post',
		url: 'register/insertUserInfo',
		cache:false,
		data: $('#registerForm').serialize(), 
  	 	 beforeSend:function()
    	{
//		document.getElementById("username_div").innerHTML="";
  	 		alert("注册成功");
			return true;
    	},
		success: function(data){
			console.log(data);
			if(data=="注册成功"){
			openModalButton();
			}
         },

         error:function(data){ 
             //总是执行这个error 
        	 console.log("返回错误:"+data);	        
          } 
	});
	//document.getElementById("registerForm").submit();
	
	}else {
		alert("少侠再检查一下错误？");
	}
}



/**提示用户不能使用空时间*/
function onblur4(){
	var p=document.getElementById("time");
	if(p.value==''){
	document.getElementById("datetime_div").innerHTML="时间不能为空且格式为：xxxx-xx-xx";	
	}
	else{
		document.getElementById("datetime_div").innerHTML="";
	}
	
}



function onblur5() {
	var p=document.getElementById("time").value;
	//判断输入的长度
	if(p.length<10){
		alert("日期格式长度必须是10位");
		return false;
	}
	//判断日期中是否包含了"-"字符
	else if((p.charAt(4)!="-")&&(p.charAt(7)!="-")){
		alert("请按照年-月-日的格式输入");
		return false;
	}else{
		//判断是否输入的不是数字
		var time = p.split("-");
		if(isNaN(time[0])||isNaN(time[1])||isNaN(time[2])){
			alert("年月日输入必须是数字");
			return false;
		}else{
			return true;
			
		}
	}
}

function onblur6() {
	var p=document.getElementById("input_Verification_Code");
	if(p.value==''){
	document.getElementById("datetime_div").innerHTML="验证码不能为空";	
	}
	else{
		document.getElementById("datetime_div").innerHTML="";
	}
}


//启用按钮事件
function zongze() {
	if(document.getElementById("zz").checked==true){
		document.getElementById("button1").disabled=false;
	}
	else{
		document.getElementById("button1").disabled=true;
	}
/*	 $("#button1").click(function(){
		  $("p").slideToggle(1000);
		  });*/
}