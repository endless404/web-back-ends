<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>图书查询/借阅</title>
<%@include file="/WEB-INF/view/quote.jsp" %> 
</head>
<body>
<%@include file="/WEB-INF/view/userNav.jsp" %>
	<div class="container">
		<div class="show_main">
			<h3 class="title">图书查询/借阅</h3>
			<div class="sreach">
			<form action="findBorrowBook" method="post">
				<input type="text" placeholder="请输入图书名字查找对应图书" name = "bookname" >
				<input style="display:none" type="text" name="name"   value="${usersname}">
				<input type="submit" value="搜索" id="enter">
			</form>
			
			</div>
			<table class="table table-condensed table-hover table-bordered">
				<!-- On rows -->
				<!-- On cells (`td` or `th`) -->
					
				<tr>
					<th class="success">图书编号</th>
					<th class="success">图书名字</th>
					<th class="success">图书作者</th>
					<th class="success">图书单价</th>
					
					<th class="success">是否可借阅</th>
				</tr>
				<c:forEach items="${bookList}" var="book">
				<form action="borrowBook" method="post">
					<tr >
						<td ><input style="border:0px ;background-color:transparent" type="text" name="id" readonly="readonly"  value="${book.id}">  </td>
						<td ><input style="border:0px;background-color:transparent" type="text" name="bookname" readonly="readonly"  value="${book.bookname}"></td>
						<td ><input style="border:0px;background-color:transparent" type="text" name="author" readonly="readonly"  value="${book.author}"></td>
						<td >￥<input style="border:0px;background-color:transparent" type="text" name="unitprice" readonly="readonly"  value="${book.unitprice}"></td>
						<c:choose > 
							<c:when test="${book.pricture == 0}">
								<td ><input style="border:0px;background-color:transparent" type="text" name="" readonly="readonly"  value="暂时无图书"></td>
							</c:when>
							<c:otherwise>
								<td ><input style="border:0px;background-color:transparent" type="text" name="" readonly="readonly"  value="可借阅"></td>
						</c:otherwise>
				</c:choose>
						
						
					</tr>
				</form>
					
				</c:forEach>
				
						
			</table>
		</div>
	</div>
</body>
</html>