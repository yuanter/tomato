<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <title></title>
    <script>
        digit =
                [
                    [
                        [0,0,1,1,1,0,0],
                        [0,1,1,0,1,1,0],
                        [1,1,0,0,0,1,1],
                        [1,1,0,0,0,1,1],
                        [1,1,0,0,0,1,1],
                        [1,1,0,0,0,1,1],
                        [1,1,0,0,0,1,1],
                        [1,1,0,0,0,1,1],
                        [0,1,1,0,1,1,0],
                        [0,0,1,1,1,0,0]
                    ],//0
                    [
                        [0,0,0,1,1,0,0],
                        [0,1,1,1,1,0,0],
                        [0,0,0,1,1,0,0],
                        [0,0,0,1,1,0,0],
                        [0,0,0,1,1,0,0],
                        [0,0,0,1,1,0,0],
                        [0,0,0,1,1,0,0],
                        [0,0,0,1,1,0,0],
                        [0,0,0,1,1,0,0],
                        [1,1,1,1,1,1,1]
                    ],//1
                    [
                        [0,1,1,1,1,1,0],
                        [1,1,0,0,0,1,1],
                        [0,0,0,0,0,1,1],
                        [0,0,0,0,1,1,0],
                        [0,0,0,1,1,0,0],
                        [0,0,1,1,0,0,0],
                        [0,1,1,0,0,0,0],
                        [1,1,0,0,0,0,0],
                        [1,1,0,0,0,1,1],
                        [1,1,1,1,1,1,1]
                    ],//2
                    [
                        [1,1,1,1,1,1,1],
                        [0,0,0,0,0,1,1],
                        [0,0,0,0,1,1,0],
                        [0,0,0,1,1,0,0],
                        [0,0,1,1,1,0,0],
                        [0,0,0,0,1,1,0],
                        [0,0,0,0,0,1,1],
                        [0,0,0,0,0,1,1],
                        [1,1,0,0,0,1,1],
                        [0,1,1,1,1,1,0]
                    ],//3
                    [
                        [0,0,0,0,1,1,0],
                        [0,0,0,1,1,1,0],
                        [0,0,1,1,1,1,0],
                        [0,1,1,0,1,1,0],
                        [1,1,0,0,1,1,0],
                        [1,1,1,1,1,1,1],
                        [0,0,0,0,1,1,0],
                        [0,0,0,0,1,1,0],
                        [0,0,0,0,1,1,0],
                        [0,0,0,1,1,1,1]
                    ],//4
                    [
                        [1,1,1,1,1,1,1],
                        [1,1,0,0,0,0,0],
                        [1,1,0,0,0,0,0],
                        [1,1,1,1,1,1,0],
                        [0,0,0,0,0,1,1],
                        [0,0,0,0,0,1,1],
                        [0,0,0,0,0,1,1],
                        [0,0,0,0,0,1,1],
                        [1,1,0,0,0,1,1],
                        [0,1,1,1,1,1,0]
                    ],//5
                    [
                        [0,0,0,0,1,1,0],
                        [0,0,1,1,0,0,0],
                        [0,1,1,0,0,0,0],
                        [1,1,0,0,0,0,0],
                        [1,1,0,1,1,1,0],
                        [1,1,0,0,0,1,1],
                        [1,1,0,0,0,1,1],
                        [1,1,0,0,0,1,1],
                        [1,1,0,0,0,1,1],
                        [0,1,1,1,1,1,0]
                    ],//6
                    [
                        [1,1,1,1,1,1,1],
                        [1,1,0,0,0,1,1],
                        [0,0,0,0,1,1,0],
                        [0,0,0,0,1,1,0],
                        [0,0,0,1,1,0,0],
                        [0,0,0,1,1,0,0],
                        [0,0,1,1,0,0,0],
                        [0,0,1,1,0,0,0],
                        [0,0,1,1,0,0,0],
                        [0,0,1,1,0,0,0]
                    ],//7
                    [
                        [0,1,1,1,1,1,0],
                        [1,1,0,0,0,1,1],
                        [1,1,0,0,0,1,1],
                        [1,1,0,0,0,1,1],
                        [0,1,1,1,1,1,0],
                        [1,1,0,0,0,1,1],
                        [1,1,0,0,0,1,1],
                        [1,1,0,0,0,1,1],
                        [1,1,0,0,0,1,1],
                        [0,1,1,1,1,1,0]
                    ],//8
                    [
                        [0,1,1,1,1,1,0],
                        [1,1,0,0,0,1,1],
                        [1,1,0,0,0,1,1],
                        [1,1,0,0,0,1,1],
                        [0,1,1,1,0,1,1],
                        [0,0,0,0,0,1,1],
                        [0,0,0,0,0,1,1],
                        [0,0,0,0,1,1,0],
                        [0,0,0,1,1,0,0],
                        [0,1,1,0,0,0,0]
                    ],//9
                    [
                        [0,0,0,0],
                        [0,0,0,0],
                        [0,1,1,0],
                        [0,1,1,0],
                        [0,0,0,0],
                        [0,0,0,0],
                        [0,1,1,0],
                        [0,1,1,0],
                        [0,0,0,0],
                        [0,0,0,0]
                    ]//:
                ];
    </script>
    <script>
        /**
         * Created by Tracy  Wu on 2015/1/5.
         */
        var WINDOW_WIDTH=1024;
        var WINDOW_HEIGHT=500;
        var RADIUS=8;
        var MARGIN_LEFT=30;
        var MARGIN_TOP=60;
        var endTime=new Date();
        endTime.setTime(endTime.getTime()+3600*1000);//æä»½ä»¥0å¼å¤´ï¼å°11ï¼
        var curShowTimeSeconds=0;

        var balls=[];
        const colors = ["#33B5E5","#0099CC","#AA66CC","#9933CC","#99CC00","#669900","#FFBB33","#FF8800","#FF4444","#CC0000"];
        window.onload=function(){
        	//WINDOW_WIDTH=document.body.clientWidth||document.documentElement.clientWidth;
            //WINDOW_HEIGHT=document.body.clientHeight||document.documentElement.clientHeight;
            MARGIN_LEFT=Math.round(WINDOW_WIDTH/10);
            MARGIN_TOP=Math.round(WINDOW_HEIGHT/5);
            RADIUS=Math.round(WINDOW_WIDTH*4/5/108)-1;

            var canvas=document.getElementById('canvas');
            canvas.width=WINDOW_WIDTH;
            canvas.height=WINDOW_HEIGHT;
            var context=canvas.getContext('2d');
            curShowTimeSeconds=getCurrentShowTimeSeconds();
            setInterval(function(){
                render(context);
                update();
            },50);
        };
        function render(ctx){
            ctx.clearRect(0,0,WINDOW_WIDTH,WINDOW_HEIGHT);
            var hours=parseInt(curShowTimeSeconds/3600);
            var minutes=parseInt((curShowTimeSeconds-hours*3600)/60);
            var seconds=curShowTimeSeconds%60;
            renderDigit(MARGIN_LEFT,MARGIN_TOP,parseInt(hours/10),ctx);
            renderDigit(MARGIN_LEFT+15*(RADIUS+1),MARGIN_TOP,parseInt(hours%10),ctx);
            renderDigit(MARGIN_LEFT+30*(RADIUS+1),MARGIN_TOP,10,ctx);
            renderDigit(MARGIN_LEFT+39*(RADIUS+1),MARGIN_TOP,parseInt(minutes/10),ctx);
            renderDigit(MARGIN_LEFT+54*(RADIUS+1),MARGIN_TOP,parseInt(minutes%10),ctx);
            renderDigit(MARGIN_LEFT+69*(RADIUS+1),MARGIN_TOP,10,ctx);
            renderDigit(MARGIN_LEFT+78*(RADIUS+1),MARGIN_TOP,parseInt(seconds/10),ctx);
            renderDigit(MARGIN_LEFT+93*(RADIUS+1),MARGIN_TOP,parseInt(seconds%10),ctx);

            for(var i=0; i<balls.length; i++){
                ctx.fillStyle=balls[i].color;
                ctx.beginPath();
                ctx.arc(balls[i].x,balls[i].y,RADIUS,0,2*Math.PI);
                ctx.closePath();
                ctx.fill();
            }
        }
        function renderDigit(x,y,num,ctx){
            ctx.fillStyle="rgb(0,102,153)";
            for(var i=0; i<digit[num].length; i++)
                for(var j=0; j<digit[num][i].length;j++){
                    if(digit[num][i][j]==1){
                        ctx.beginPath();
                        ctx.arc(x+(RADIUS+1)+j*2*(RADIUS+1),y+(RADIUS+1)+i*2*(RADIUS+1),RADIUS,0,2*Math.PI);
                        ctx.closePath();
                        ctx.fill();
                    }
                }

        }
        function getCurrentShowTimeSeconds(){//å¾å°ç°å¨çæ¶é´åæªæ­¢æ¶é´çå·®
            var curTime=new Date(); //è·åç°å¨æ¶é´
            //var ret=endTime.getTime()-curTime.getTime(); //getTime()è¡¨ç¤ºå½åæ¶é´ä¸1970å¹´0æ¶0ç§çæ¶é´å·®
            var ret=curTime.getHours()*3600+curTime.getMinutes()*60+curTime.getSeconds();
            //ret=Math.round(ret/1000);
            return ret>=0 ? ret : 0;
        }

        function update(){

            var nextShowTimeSeconds = getCurrentShowTimeSeconds();

            var nextHours = parseInt( nextShowTimeSeconds / 3600);
            var nextMinutes = parseInt( (nextShowTimeSeconds - nextHours * 3600)/60 );
            var nextSeconds = nextShowTimeSeconds % 60;

            var curHours = parseInt( curShowTimeSeconds / 3600);
            var curMinutes = parseInt( (curShowTimeSeconds - curHours * 3600)/60 );
            var curSeconds = curShowTimeSeconds % 60;

            if( nextSeconds != curSeconds ){
                if(parseInt(nextHours/10)!=parseInt(curHours/10)){
                    addBalls(MARGIN_LEFT,MARGIN_TOP,parseInt(nextHours/10));
                }
                if(parseInt(nextHours%10)!=parseInt(curHours%10)){
                    addBalls(MARGIN_LEFT+15*(RADIUS+1),MARGIN_TOP,parseInt(nextHours%10));
                }
                if(parseInt(nextMinutes/10)!=parseInt(curMinutes/10)){
                    addBalls(MARGIN_LEFT+39*(RADIUS+1),MARGIN_TOP,parseInt(nextMinutes/10));
                }
                if(parseInt(nextMinutes%10)!=parseInt(curMinutes%10)){
                    addBalls(MARGIN_LEFT+54*(RADIUS+1),MARGIN_TOP,parseInt(nextMinutes%10));
                }
                if(parseInt(nextSeconds/10)!=parseInt(curSeconds/10)){
                    addBalls(MARGIN_LEFT+78*(RADIUS+1),MARGIN_TOP,parseInt(nextSeconds/10));
                }
                if(parseInt(nextSeconds%10)!=parseInt(curSeconds%10)){
                    addBalls(MARGIN_LEFT+93*(RADIUS+1),MARGIN_TOP,parseInt(nextSeconds%10));
                }
                curShowTimeSeconds = nextShowTimeSeconds;
            }
            updateBalls();
            console.log(balls.length);
        }
        function updateBalls(){
            for(var i=0; i<balls.length; i++){
                balls[i].x+=balls[i].vx;
                balls[i].y+=balls[i].vy;
                balls[i].vy+=balls[i].g;
                if( balls[i].y >= WINDOW_HEIGHT-RADIUS ){
                    balls[i].y = WINDOW_HEIGHT-RADIUS;
                    balls[i].vy = - balls[i].vy*0.75;
                }
            }

            var cnt=0;
            for(var i=0; i<balls.length; i++){
                if(balls[i].x+RADIUS>0&&balls[i].x-RADIUS<WINDOW_WIDTH){
                    balls[cnt++]=balls[i];
                }
            }
            while(balls.length>Math.min(cnt,300)){
                balls.pop();
            }
        }
        function addBalls(x,y,num){
            for(var i=0;i<digit[num].length;i++)
                for(var j=0;j<digit[num][i].length;j++){
                    if(digit[num][i][j]==1){
                        var aBall={
                            x:x+(RADIUS+1)+2*j*(RADIUS+1),
                            y:y+(RADIUS+1)+2*i*(RADIUS+1),
                            g:1.5+Math.random(),
                            vx:Math.pow(-1,Math.ceil(Math.random()*1000))*4,
                            vy:-4,
                            color:colors[Math.floor(Math.random()*colors.length)]
                        };
                        balls.push(aBall);
                    }
                }
        }



    </script>
</head>
<body style="margin:0; padding:0; height: 100%;">
<canvas id="canvas" style="height:100% ">您的浏览器不支持，请更换浏览器</canvas>
</body>
</html>