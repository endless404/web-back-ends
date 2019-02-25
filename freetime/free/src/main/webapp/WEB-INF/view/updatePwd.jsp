<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改登录密码</title>
<script type="text/javascript"
	src="js/jquery-1.12.4.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="css/bootstrap.min.css">
<script type="text/javascript"
	src="js/bootstrap.min.js"></script>
<style type="text/css">
* {
	font-family: "微软雅黑";
	margin: 0;
	padding: 0;
}

.title {
	font-size: 20px;
	margin: 20px 10px;
}

.flag {
	color: red;
}

td>input {
	width: 50%;
	height: 40px;
	border-radius: 4px;
	border: 1px solid #ccc;
	padding: 0 6px;
}

button {
	margin-right: 10px;
}

.erro {
	color: red;
}
</style>
</head>
<body>
	<div class="container">
		<p class="title">密码修改</p>
		<form action="updatePwd" method="post">
			<table class="table">
				<tr>
					<td align="right">用户名</td>
					<td><input type="text" name="name" id="username" placeholder="登录账号"></td>
				</tr>
				<tr>
					<td align="right"><span class="flag">*</span>用户新密码:</td>
					<td><input type="text" name="password" id="checkpwd"
						placeholder="请输入用户新密码"><span class="erro"></span></td>
				</tr>
				<tr>
					<td>${word}</td>
					<td align="right"><button type="submit"
							class="btn btn-primary submit">提交</button>
						<button type="reset" class="btn btn-default reset">重置</button></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>