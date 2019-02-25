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
		
			<h3 class="title">增加图书</h3>
			<form action="addBook" method="post">
				<table class="table table-condensed table-hover table-bordered">
					<!-- On rows -->
					<!-- On cells (`td` or `th`) -->
					<tr>
						<th class="success">图书编号</th>
						<th class="success">图书名字</th>
						<th class="success">图书作者</th>
						<th class="success">图书价格</th>
						<th class="success">图书库存</th>
					</tr>
					<tr>
						<td><input type="text" name="id" placeholder="请输入图书编号"></td>
						<td><input type="text" name="bookname" placeholder="请输入图书名字"></td>
						<td><input type="text" name="author" placeholder="图书作者"></td>
						<td>￥<input type="text" name="unitprice" placeholder="请输入图书价格"></td>
						<td><input type="text" name="pricture" oninput="value=value.replace(/[^\d]/g,'')" placeholder="请输入图书库存"></td>
					</tr>
				</table>
				<p>${msg}</p>
				<button type="submit" class="btn btn-primary pull-right">提交</button>
			</form>
		</div>
	</div>
</body>
</html>