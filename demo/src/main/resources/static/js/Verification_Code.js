/*验证码函数*/

	//定义全局初始验证码
	var code='';
function Verification_Code() {
	//定义10个阿拉伯数字
	var num=new Array(1,2,3,4,5,6,7,8,9,0);
	//定义26个大写字母
	var character_big=new Array();
	//定义26个小写字母
	var character_small=new Array();	
	//定义全部验证码字符
	var all_character;
	//定义验证码长度
	var codelength=4;
	
	
	for (var i = 0; i <=25; i++) {
		character_big[i]=String.fromCharCode((65+i));//将26个字母对应码转化为字符并存到数组中
//		alert(character_big[i]);
		
	}
	for (var i =0; i <=25; i++) {
		character_small[i]=String.fromCharCode((65+i)).toLowerCase();//将大写转化为小写
//		alert(character_small[i]);		
	}

	
	//将全部字符合并到一个数组
	for(var i in character_big){
		num.push(character_big[i]);
	}
	for(var i in character_small){
		num.push(character_small[i]);
	}
	all_character=num;
	
	
	//随机验证码事件
	for (var i = 0; i <codelength; i++) {
		var	indexof=Math.floor(Math.random()*all_character.length);		
		code+=all_character[indexof];
	}
	
	//将验证码写入需要写入的区域
	document.getElementById("Verification_Code_div").innerHTML="";
	document.getElementById("Verification_Code_div").innerHTML=code;
	code="";
}



function write_1() {	
	var inputcode=document.getElementById("input_Verification_Code");
	var codeV=inputcode.value.toUpperCase();
	if(codeV!=code.toUpperCase()){
	code="";
	codeV.value="";
	Verification_Code();
}else {
	submit1();
}
}



function Refresh_1() {
	
}