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
		
			<h3 class="title">借书登记</h3>
			<form action="addBorrowInfo" method="post">
				<table class="table table-condensed table-hover table-bordered">
					<!-- On rows -->
					<!-- On cells (`td` or `th`) -->
					<tr>
						<th class="success">用户账号</th>
						<th class="success">图书编号</th>
					</tr>
					<tr>
						<td><input type="text" name="readerid" placeholder="请输入用户账号"
							></td>
						<td><input type="text" name="bookid" placeholder="请输入图书编号"
							></td>
					</tr>
				</table>
				<p>${info}</p>
				<button type="submit" class="btn btn-primary pull-right">提交</button>
			</form>
		</div>
	</div>
</body>
</html>