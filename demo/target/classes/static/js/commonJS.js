/**
 * 加载公告
 */
function onloadNotice(){
	$.ajax({
        type: 'get',
        url: 'admin/onloadNotice',
        cache:false,
        success: function(data){
        	console.log("返回成功："+data);
        	document.getElementById("marqueeGongGao").innerHTML=data;  
                 },

         error:function(data){ 
                  //总是执行这个error 
        	 console.log("返回错误："+data);
        
                 } 
    });
}


//获取url的参数
function getUrlParam(name) {	
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); // 构造一个含有目标参数的正则表达式对象
    var r = window.location.search.substr(1).match(reg);  // 匹配目标参数
    if (r != null) return unescape(r[2]); 
    return null; // 返回参数值
}	
//页面加载时获取参数
function getParam(name) {
    var name = getUrlParam('username');
    if(name){
/*     	document.getElementById("U_ID").style.display="none";
    	document.getElementById("userid_td").style.display="none";
    	document.getElementById("userid_tr").style.display="none";*/
    	document.getElementById("username").value=name;
    	document.getElementById("username").disabled=true;
    }

}