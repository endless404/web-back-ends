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
			<h3 class="title">图书信息查询</h3>
			<div class="sreach">
			<form action="findBook" method="post">
				<input type="text" placeholder="请输入图书名字查找对应图书" name = "bookname" >
				<input type="submit" value="搜索" id="enter">
			</form>
			</div>
			<table class="table table-condensed table-hover table-bordered">
				<tr>
					<th class="success">图书编号</th>
					<th class="success">图书名字</th>
					<th class="success">图书作者</th>
					<th class="success">图书价格</th>
					<th class="success">图书库存</th>
					<!-- <th class="success">图书是否被借完</th> -->
				</tr>
				<c:forEach items="${bookList}" var="book">
					<tr>
						<td>${book.id}</td>
						<td>${book.bookname}</td>
						<td>${book.author}</td>
						<td>￥${book.unitprice}</td>
						<td>${book.pricture}</td>
						<%-- <c:choose > 
							<c:when test="${book.n}">
								<td>借完</td>
							</c:when>
							<c:otherwise>
								<td>库存剩余</td>
							</c:otherwise>
						</c:choose>	 --%>
					</tr>
				</c:forEach>
				<p>${alert}</p>
			</table>
		</div>
	</div>
</body>
</html>