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
			<h3 class="title">用户信息查询</h3>
			<div class="sreach">
			<form action="findReader" method="post">
				<input type="text" placeholder="请输入读者名字查找对应图书" name="name" >
				<input type="submit" value="搜索" id="enter">
			</form>
			</div>
			<table class="table table-condensed table-hover table-bordered">
				<!-- On rows -->
				<!-- On cells (`td` or `th`) -->
				<tr>
					<th class="success">用户姓名</th>
					<th class="success">用户编号</th>
					<th class="success">用户性别</th>
					<th class="success">用户年龄</th>
					<th class="success">用户电话</th>
				</tr>
				<c:forEach items="${readerList}" var="reader">
					<tr>
						<td>${reader.name}</td>
						<td>${reader.readerid}</td>
						<td>${reader.sex}</td>
						<td>${reader.age}</td>
						<td>${reader.phone}</td>
					</tr>
				</c:forEach>
				<p>${msg}</p>
			</table>
		</div>
	</div>
</body>
</html>