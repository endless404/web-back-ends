<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>图书管理系统</title>
<%@include file="/WEB-INF/view/quote.jsp" %> 
</head>
<body>
<%@include file="/WEB-INF/view/nav.jsp" %>
	<div class="container show">
		<div class="show_main">
		
			<h3 class="title">增加用户</h3>
			<form action="addReaderer" method="post">
				<table class="table table-condensed table-hover table-bordered">
					<!-- On rows -->
					<!-- On cells (`td` or `th`) -->
					<tr>
						<th class="success">用户账号</th>
						<th class="success">用户名字</th>
						<th class="success">用户年龄</th>
						<th class="success">用户性别</th>
						<th class="success">用户电话</th>
					</tr>
					<tr>
						<td><input type="text" name="readerid" placeholder="请输入用户账号"
							></td>
						<td><input type="text" name="name" placeholder="请输入用户名字"
							></td>
						<td><input type="text" name="age" oninput="value=value.replace(/[^\d]/g,'')" placeholder="用户年龄"
							></td>
						<td>
							<input	type="radio" value="男" name="sex" checked="checked">男
							<input	type="radio" value="女" name="sex">女
						</td>
						<td><input type="text" oninput="value=value.replace(/[^\d]/g,'')" name="phone" placeholder="用户电话"
							>
						</td>
					</tr>
				</table>
				<p>${info}</p>
				<button type="submit" class="btn btn-primary pull-right">提交</button>
			</form>
		</div>
	</div>
</body>
</html>