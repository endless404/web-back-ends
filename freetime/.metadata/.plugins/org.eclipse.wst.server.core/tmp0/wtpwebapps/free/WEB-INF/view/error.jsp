<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>登录失败</title>
</head>
<body>
	<p>登录失败，<span id="war">3</span>秒钟之后进入登录页面。</p>
</body>

<script type="text/javascript">
//设定倒数秒数
var t = 3;
//显示倒数秒数
function showTime(){
    document.getElementById('war').innerHTML= t;
	t -= 1;
    if(t == 0){
       location.href='index.jsp';
    }
    //每秒执行一次,showTime()
    // setInterval("showTime()",1000);
    setTimeout("showTime()",1000);
	
}
showTime();
</script>
</html>