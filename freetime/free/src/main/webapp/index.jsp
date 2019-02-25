<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>Login</title>
	<style type="text/css">
		html,body{
			height: 100%;
			display: flex;
			justify-content:center;
			align-items:center;
			overflow: hidden;
			background-size: cover;
		}
		#wrap{
			width: 400px;
			height:400px;
			background-color:#eee;
			border-radius: 4px;
			position: absolute;
		}
		#wrap::after{
			content: '';
			position: absolute;
			top: 0;
			left: 0;
			height: 10px;
			width: 100%;
			background: -webkit-linear-gradient(left,#d75e0d 20%,#376e44 20%,#376e44 40%,#83a721 40%,#83a721 60%,#c64f49 60%,#c64f49 80%,#327db7 80%, #327db7);
			border-radius: 4px 4px 0 0;
		}
		h2{
			text-align: center;
			margin-top: 3rem;
		}
		.box{
			width: 100%;
		}
		.box span{
			float: right;
			width: 50%;
		}
		input{
			border-radius: 2px;
			border: 1px solid #aaa;
			font-size: 20px;
			margin:30px auto;
			height: 40px;
			padding: 2px 7px;
			display: table;
			width: 70%;
		}
		.forget{
			margin: 0 auto;
			display: table;
		}
		a{
			color: #000;
			text-decoration: none;
		}
		a:hover{
			text-decoration: underline;
		}
	</style>
</head>
<body>
	<div id="wrap">
		<form action="login" method="post">
			<h2>图书管理系统用户登录</h2>
			<div class="box">
				<input type="text" placeholder="账号" id="name" name="name" value="root">
				<input type="password" placeholder="密码" id="password" name="password" value="123456">
				<input type="submit" value="登录" id="enter">
				<div class="forget">
					<a href="forget">忘记密码？</a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>