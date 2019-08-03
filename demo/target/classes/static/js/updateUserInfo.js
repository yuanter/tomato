
/**
 * 设置性别
 * @returns
 */
function setSex1() {
	var sex=$("#Sex_hidden").val();
	//根据Value值设置Radio为选中状态
	$("input[name='sex'][value='"+sex+"']").attr("checked",true); 
}