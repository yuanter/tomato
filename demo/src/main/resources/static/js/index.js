function getData() {
	$.ajax({
        type: 'post',
        url: 'index',
        cache:false,
        data:{"Category":1},
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