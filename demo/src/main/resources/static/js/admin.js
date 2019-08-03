
//批量删除全选与反选
function checkbox1() {

	var allchoose=document.getElementById("allchoose").checked;
	if(allchoose==true){
		var x=document.getElementsByName("choose");
		for (var i=0;i<x.length;i++) {
			if(x[i].type=="checkbox")
				x[i].checked=true;			
		}
	}
			else{
				var x=document.getElementsByName("choose");
				for(var i=0;i<x.length;i++){
					if(x[i].type=="checkbox")
						x[i].checked=false;
				}
			}

}


//批量删除用户
function del_user(){	
	/*document.getElementById("deluser")*/
	var x=document.getElementsByName("choose");
	var pagenow=document.getElementById("pagenowInput").value;
	//alert(pagenow);
	var str="";//作为拼接字符传参数
	var temp=0;//统计删除多少条数据
	for (var i=0;i<x.length;i++) {
		var num=parseInt(x[i].value);
	if(x[i].checked==true){		
		//var numcout=(pagenow-1)*10+num;	//10为当前每页显示的条数
		var numcout=document.getElementById("val"+(i+1)).value;
		str=str+numcout+",";
		temp++;
	}
	}
	
	if (window.confirm('是否删除？')) {		
		document.getElementById("hdText2").value=temp;	
	//document.getElementById("test1").innerHTML=str;//测试
	document.getElementById("hdText1").value=str+"";	
	if(str!=''){
		alert("总共删除数据"+temp+"条");
	document.getElementById("deleteInput").click();
	}
	else {
		alert("不允许空值删除");
		return;
	}
	}
}


/**
 * 发布公告
 */
function notice(){
	var notice=$("#notice").val();
	alert("notice："+notice);
	$.ajax({
        type: 'post',
        url: 'admin/notice',
        cache:false,
        data: {"Notice":notice}, 
        success: function(data){
        	console.log("返回成功："+data);
        	alert("发布成功");
        	onloadNotice();
        },
         error:function(data){ 
                  //总是执行这个error 
        	 console.log("返回错误："+data);
        
                 } 
    });
}


/**
 * 加载中后台交易信息
 * @returns
 */
function getData(){
	$.ajax({
        type: 'get',
        url: 'admin/onloadGoodsInfo',
        cache:false,
        success: function(data){
        	console.log("加载数据成功！");
                 },
         error:function(data){ 
                  //总是执行这个error 
        	 console.log("返回错误："+data);
        
                 } 
    });
}

function onloadData() {
	getData();
} 