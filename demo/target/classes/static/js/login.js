
/**
 * 登陆
 * @returns
 */
function formSubmit() {
	var userid=$("#userid").val();
	var password=$("#password").val();
/*	$.post('jsp/login',{"studenID":studenID,"password":password},function(res){				
		console.log(res.message);	
	},"json");*/
	document.getElementById("login_form").submit();
	//关闭模态框
	$("#closeBtn").click();
	//关闭页面罩幕
	$(".modal-backdrop.fade").hide();
	//关闭模态框,需要二次关闭
	$("#closeBtn").click();
	 /*  $.ajax({
	        type: 'post',
	        url: 'jsp/login',
	        cache:false,
	        data: {"userid":userid,"password":password}, 
	        beforeSend:function()
	        {
	            $("#myModalLabel").html("正在登陆中.......");
	            return true;
	        },
	        success: function(data){
	        	//console.log("返回成功："+data);
        		alert("登陆成功");

        		//关闭模态框
				$("#closeBtn").click();
				//关闭页面罩幕
        		$(".modal-backdrop.fade").hide();
        		//关闭模态框,需要二次关闭
        		$("#closeBtn").click();
				 
	        	if (data=="登陆成功") {
 
				}else {								
	        	$("#tip").html(data);
				}
	                 },

	         error:function(data){ 
	                  //总是执行这个error 
	        	 console.log("返回错误："+data);
	        
	                 } 
	    }); 		*/
}

