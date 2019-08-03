 function update(type){
 	$('#file').val('');
 	$('#imgType').attr({
 		imgType: type,
 	});
 	file.click();

 }
 function sc(type){
 	if(!type){return false;}
 	var animateimg = $("#file").val();
 	$('#pg').val('0');
 	var imgarr=animateimg.split('\\');
 	var myimg=imgarr[imgarr.length-1];
 	var houzui = myimg.lastIndexOf('.');
 	var ext = myimg.substring(houzui, myimg.length).toUpperCase();  
 	var file = $('#file').get(0).files[0];
 	if(!file){return false;}
 	var fileSize = file.size;

 	switch(type){
 		case 'sougou':
 		var maxSize = 2097152;
 		break;
 		case 'baidu':
 		var maxSize = 2097152;
 		break; 
 		case 'so':
 		var maxSize = 2097152; 
 		break;
 		case 'sina':
 		var maxSize = 10485760; 
 		break;
 		default:
 		var maxSize = 10485760; 
 	} 
 	if(ext !='.PNG' && ext !='.GIF' && ext !='.JPG' && ext !='.JPEG' && ext !='.BMP'){  
 		parent.alert('文件类型错误,请上传图片类型');return false;  
 	}else if(parseInt(fileSize) >= parseInt(maxSize)){  
 		parent.alert('上传的文件不能超过'+maxSize/1024/1024+'MB');return false;  
 	}else{
 		$('#imgLoading').attr('src','');
 		var data = new FormData($('#form1')[0]);  
 		var YoungxjApisToken = 'f07b711396f9a05bc7129c4507fb65c5';
 		switch(type){
 			case 'sougou':
 			var apiUrl = 'https://apis.yum6.cn/api/5bd7f16aa33d7';
 			break;
 			case 'baidu':
 			var apiUrl = 'https://apis.yum6.cn/api/5bd828881f92b'; 
 			break;
 			case 'so':
 			var apiUrl = 'https://apis.yum6.cn/api/5bd90750c3f77'; 
 			break;
 			case 'sina':
 			var apiUrl = 'https://apis.yum6.cn/api/5bd44dc94bcfc'; 
 			break;
 			default:
 			return false;
 		};
 		$('#progress').show();
 		$.ajax({
 			url: apiUrl+'?token='+YoungxjApisToken,   
 			type: 'POST',    
 			data: data,    
 			dataType: 'JSON', 
 			processData: false,    
 			contentType: false,
 			xhr: function(){
 				var xhr = $.ajaxSettings.xhr();
 				if(onprogress && xhr.upload) {
 					xhr.upload.addEventListener("progress" , onprogress, false);
 					return xhr;
 				}
 			}
 		}).done(function(ret){
 			if(ret['code']=='1'){

 				var img = '';var imgurl = '';
 				if(type!='sina'){var imgSrc = ret['data'];}else{var imgSrc = ret['data']['url'];}
 				img += '<img src="'+imgSrc+'" name="sinaimg" id="sinaimg">';
 				
 				$('#Imgs_url').val(imgSrc);
 				$('#Imgs_html').val('<img src="'+imgSrc+'" style="width: 100%;height: 100%;"/>');
 				$('#Imgs_Ubb').val('[img]'+imgSrc+'[/img]');
 				$('#Imgs_markdown').val('![]('+imgSrc+')');
 				$('#images').html(img);$('#imgLoading').attr('src','');
 				$('#imgurl').show();
 				$('#progress').hide();  
 			}else{
 				$('#progress').hide();
 				$('#imgLoading').attr('src','');
 				parent.alert(ret['msg']);
 			}  
 			
 		});
 		return false;  
 	}    
 }
 function onprogress(evt){
 	var loaded = evt.loaded;
 	var tot = evt.total;
 	var per = Math.floor(100*loaded/tot);
 	$('#pg').val(per);

 }
 function browserRedirect(){
 	var sUserAgent = navigator.userAgent.toLowerCase();
 	var bIsIpad = sUserAgent.match(/ipad/i) == 'ipad';
 	var bIsIphone = sUserAgent.match(/iphone os/i) == 'iphone os';
 	var bIsMidp = sUserAgent.match(/midp/i) == 'midp';
 	var bIsUc7 = sUserAgent.match(/rv:1.2.3.4/i) == 'rv:1.2.3.4';
 	var bIsUc = sUserAgent.match(/ucweb/i) == 'web';
 	var bIsCE = sUserAgent.match(/windows ce/i) == 'windows ce';
 	var bIsWM = sUserAgent.match(/windows mobile/i) == 'windows mobile';
 	var bIsAndroid = sUserAgent.match(/android/i) == 'android';
 	if(bIsIpad || bIsIphone || bIsMidp || bIsUc7 || bIsUc || bIsCE || bIsWM || bIsAndroid ){
 		return 1;
 	}
 };
 $(document).ready(function(){
 	$('#imgLoading').click(function() {$("#imgContent").toggle();});
 });