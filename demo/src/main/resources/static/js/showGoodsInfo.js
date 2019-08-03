
/**
 * 将数据加载进页面
 * @returns
 */
function dealData() {
	var getstudenID=$("#getstudenID_Input").val();
	classification();//物品类别信息
	transactionMode();//交易方式
	transactionMode()//成色
	if (getstudenID=="") {
		document.getElementById("goodsTitle").style.visibility='hidden';//标题
		document.getElementById("Price").style.visibility='hidden';//价格
		document.getElementById("RMB").innerHTML="";//单位
		document.getElementById("telInput").style.visibility='hidden';//手机号码
		
		
	}else {
		document.getElementById("goodsTitleSpan").innerHTML="";
		document.getElementById("PriceSpan").innerHTML="";
		document.getElementById("telSpan").innerHTML="";
		
		
	}
}

/**
 * 物品类别信息
 * @returns
 */
function classification() {
	var classification=$("#classificationId").val();
	document.getElementById("classification")[classification].selected=true;
}

/**
 * 交易方式
 * @returns
 */
function transactionMode() {
	var transactionModeId=$("#transactionModeId").val();
	document.getElementById("transactionMode")[transactionModeId].selected=true;
}

/**
 * 成色
 * @returns
 */
function transactionMode() {
	var conditionId=$("#conditionId").val();
	document.getElementById("condition")[conditionId].selected=true;
}