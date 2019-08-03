

/*启动登陆模态框*/

function openModalButton(){
	document.getElementById("modalBotton").click();
}

/*调用个人信息鼠标停留方法*/
function startOnmouseOver(){
	document.getElementById("openCSS").style.visibility='visible';
}
function startOnmouseOut(){
	document.getElementById("openCSS").style.visibility='hidden';
}

//开启模态框
function GotoRegister(){
	window.location.href="jsp/register";
}
/////////////////////////////////收藏书签部分/////////////////////////
//截取当前url相对路径
var locationUrl= document.location.toString();
var nowUrl=function GetUrlRelativePath(){
		
		var arrUrl = locationUrl.split("//");
		var start = arrUrl[1].indexOf("/");
		var relUrl = arrUrl[1].substring(start);//stop省略，截取从start开始到结尾的所有字符

		if(relUrl.indexOf("?") != -1){
			relUrl = relUrl.split("?")[0];
		}
		alert(relUrl);
		return relUrl;
	}
//加入书签
function createIcon() { 
    var desktop = google.gears.factory.create("beta.desktop"); 
    var description = "Google一下，你就知道！"; 
    var name = "Google";   //name不支持中文 
    var icons = {"32x32": "images/32.gif"}; 
    desktop.createShortcut(name, "index.html", icons, description); 
}

//兼容IE和Firefox的加入收藏代码
function AddFavorite(sURL, sTitle) { 
    //var sTitle ="";                       //sTitle：添加到收藏夹中的网站页面标题名称。
    var sURL = location.href;				//sURL：添加到收藏夹的完整网站页面地址

    try { 
        //IE 
        window.external.addFavorite(sURL, sTitle); 
    } catch (e) { 
        try { 
            //Firefox 
            window.sidebar.addPanel(sTitle, sURL, ""); 
        } catch (e) { 
        	try {
        		createIcon();
			} catch (e) {
				alert("您的浏览器不支持自动加入收藏，请使用Ctrl+D进行添加！", "提示信息");   
			}
            
        } 
    } 
}

//爱心收藏书签
var a=true;
function  change(obj){	
	if(a)
		{
		obj.style.backgroundImage="url(./images/heartlogo.jpg)";
		a=false;
		//window.external.AddFavorite(document.location.href,document.title);
		AddFavorite(document.location.href,document.title);
		}
	else 
	{
		obj.style.backgroundImage="url(./images/heart_logo.jpg)";
	a=true;
    }
}

 	

/*$("#goods_logo").click(function(){
	$("#myModal").slideToggle();
	});*/
/*$('#heart_logo').toggle(function() {
    $(this).addClass('heartlogo');
  }, function() {
     $(this).removeClass('heartlogo');
  });
   */