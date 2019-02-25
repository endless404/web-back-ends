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
			<h3 class="title">逾期信息修改</h3>
			<div class="sreach">
			<form action="findBorrowbook" method="post">
				<input type="text" placeholder="输入图书id" name = "bookid" >
				<input type="submit" value="搜索" id="enter">
			</form>
			</div>
				<table class="table table-condensed table-hover table-bordered">
					<!-- On rows -->
					<!-- On cells (`td` or `th`) -->
					<tr>
						<th class="success">读者编号</th>
						<th class="success">图书编号</th>
						<th class="success">图书名字</th>
						<th class="success">逾期费用￥</th>
						<th class="success">操作</th>
					</tr>
					<c:forEach items="${bookReaderBorrowList}" var="bookReaderBorrow">
          			<form action="changeBookReaderBorrow" method="post">
	          			<tr>
						<td><input style="border:0px ;background-color:transparent" type="text" name="readerid" readonly="readonly"
								value="${bookReaderBorrow.readerid}"></td>
							<td><input style="border:0px ;background-color:transparent" type="text" name="bookid" readonly="readonly"
								value="${bookReaderBorrow.bookid}"></td>
							<td><input style="border:0px ;background-color:transparent" type="text" name="bookname" readonly="readonly"
								value="${bookReaderBorrow.bookname}"></td>
							<td>
							<input type="text" name="fine" value="${bookReaderBorrow.fine}">
							</td>
							<td><button type="submit" class="btn btn-primary pull-right">提交</button>
							</td>
						</tr>
          			
          			</form>
          			
					
          			</c:forEach>
				</table>
		</div>
	</div>
</body>
</html>