<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
	<title>图书管理系统</title>
	<meta charset="utf-8">
<%@include file="/WEB-INF/view/quote.jsp" %> 
</head>
<body>
<%@include file="/WEB-INF/view/nav.jsp" %>
<div class="container show">
    <div class="show_main">
      <h3 class="title">用户信息修改</h3>
      <div class="sreach">
        <form action="findidReader" method="post">
				<input type="text" placeholder="请输入用户名字" name = "name" >
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
            <th class="success">用户操作</th>
          </tr>
          <c:forEach items="${readerList}" var="reader">
          <form action="changeReader" method="post">
          	<tr>
	            <td><input style="border:0px ;background-color:transparent" type="text" name="name" readonly="readonly"  value="${reader.name}"> 
	            </td>
	            <td><input style="border:0px ;background-color:transparent" type="text" name="readerid" readonly="readonly"  value="${reader.readerid}">
	            </td>
	            <td><input style="border:0px ;background-color:transparent" type="text" name="sex" readonly="readonly"  value="${reader.sex}"> 
	            </td>
	            <td><input style="border:0px ;background-color:transparent" type="text" name="age" readonly="readonly"  value="${reader.age}"> 
	            </td>
	            <td><input type="text" name="phone" value="${reader.phone}">
	            </td>
	            <td>
		            <div>
		            <button  type="submit" class="btn btn-primary pull-right">修改</button>
		            <button  onclick="location.href='deleteReader?readerid=${reader.readerid}'" class="btn btn-primary pull-right">删除</button>
		            </div>
		            </td>
	          </tr>
          </form>
          </c:forEach>
          </table>
    </div>
    </div>
  </div>
</body>
</html>