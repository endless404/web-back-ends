<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>图书借阅查询</title>
<%@include file="/WEB-INF/view/quote.jsp" %> 
</head>
<body>
<%@include file="/WEB-INF/view/userNav.jsp" %>
	<div class="container">
		<div class="show_main">
			<h3 class="title">借阅查询</h3>
			<table class="table table-condensed table-hover table-bordered">
				<!-- On rows -->
				<!-- On cells (`td` or `th`) -->
				<tr>
					<th class="success">借书编号</th>
					<th class="success">借书名字</th>
					<th class="success">借书时间</th>
					<th class="success">借书费用</th>
				</tr>
				<c:forEach items="${BookReaderBorrowList}" var="BookReaderBorrow">
					<tr>
						<td>${BookReaderBorrow.bookid}</td>
						<td>${BookReaderBorrow.bookname}</td>
						<td>${BookReaderBorrow.borrowdate}</td>
						<td>￥${BookReaderBorrow.fine}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>