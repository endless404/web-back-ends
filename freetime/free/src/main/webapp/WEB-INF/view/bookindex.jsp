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
	<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/index.css">
	<script type="text/javascript" src="js/index.js"></script>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav nav_check">
				<!-- <a href="BookController?method=getBook">图书查询<span class="sr-only">(current)</span> -->
					<li class="active" ><a href="#">图书查询<span class="sr-only">(current)</span></a></li>
					<li><a href="#">用户查询</a></li>
					<li><a href="#">借书登记</a></li>
					<li><a href="#">增加图书</a></li>
        			<li><a href="#">增加用户</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">基础信息修改<span class="caret"></span></a>
						<ul class="dropdown-menu menu_two">
							<li><a href="#">书籍信息修改</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">用户信息修改</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">逾期费用修改</a></li>
						</ul></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">欢迎admin,^_^</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">修改登录信息<span class="caret"></span></a>
						<ul class="dropdown-menu exit">
							<li><a href="uppwd">修改登录密码</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="loginout">退出登录</a></li>
						</ul></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<div class="container show">
		<div class="show_main">
			<h3 class="title">图书信息查询</h3>
			<div class="sreach">
			<form action="findBook" method="post">
				<input type="text" placeholder="请输入图书名字查找对应图书" name = "bookname">
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
				</tr>
				<tr>
						<td><input type="text" name="id"></td>
						<td><input type="text" name="bookname"></td>
						<td><input type="text" name="author"></td>
						<td>￥<input type="text" name="unitprice"></td>
						<td><input type="text" name="pricture"></td>
					</tr>
			</table>
			<p>${alert}</p>
		</div>
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
				<tr>
						<td><input type="text" name="name"></td>
						<td><input type="text" name="readerid"></td>
						<td><input type="text" name="sex"></td>
						<td><input type="text" name="age"></td>
						<td><input type="text" name="phone"></td>
					</tr>
			</table>
		</div>
		<div class="show_main">
			<h3 class="title">借书登记</h3>
			<div class="sreach">
				<form action="addBorrowInfo" method="post">
				<table class="table table-condensed table-hover table-bordered">
					<!-- On rows -->
					<!-- On cells (`td` or `th`) -->
					<tr>
						<th class="success">用户账号</th>
						<th class="success">图书编号</th>
					</tr>
					<tr>
						<td><input type="text" name="readerid" placeholder="请输入用户账号"></td>
						<td><input type="text" name="bookid" placeholder="请输入图书编号"></td>
					</tr>
				</table>
				<button type="submit" class="btn btn-primary pull-right">提交</button>
			</form>
			</div>
		</div>
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
					</tr>
					<tr>
						<td><input type="text" name="id" placeholder="请输入图书编号"
							value="12"></td>
						<td><input type="text" name="bookname" placeholder="请输入图书名字"
							value="我们的明天"></td>
						<td><input type="text" name="author" placeholder="图书作者"
							value="2016软件技术"></td>
						<td>￥<input type="text" name="unitprice" placeholder="请输入图书价格"
							value="5.3">
						</td>
						<td><input type="text" name="pricture" placeholder="请输入图书库存" value="4"></td>
					</tr>
				</table>
				<button type="submit" class="btn btn-primary pull-right">提交</button>
			</form>
		</div>
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
				<button type="submit" class="btn btn-primary pull-right">提交</button>
			</form>
		</div>
		<div class="show_main">
			<h3 class="title">书籍信息修改</h3>
			<div class="sreach">
				<input type="text" placeholder="请输入图书编号">
				<div class="sou">
					<span class="glyphicon glyphicon-search"> </span>
				</div>
			</div>
			<form action="">
				<table class="table table-condensed table-hover table-bordered">
					<!-- On rows -->
					<!-- On cells (`td` or `th`) -->
					<tr>
						<th class="success">图书编号</th>
						<th class="success">图书名字</th>
						<th class="success">图书作者</th>
						<th class="success">图书价格</th>
					</tr>
					<tr>
						<td><input type="text" name="" disabled="disabled"
							value="1612205109"></td>
						<td><input type="text" name="" disabled="disabled"
							value="我们的明天"></td>
						<td><input type="text" name="" disabled="disabled"
							value="2016软件技术"></td>
						<td>￥<input type="text" name="" value="5.3">
						</td>
					</tr>					
				</table>
				<button type="submit" class="btn btn-primary pull-right">提交</button>
			</form>
		</div>
		<div class="show_main">
			<h3 class="title">用户信息修改</h3>
			<div class="sreach">
				<input type="text" placeholder="请输入图书编号">
				<div class="sou">
					<span class="glyphicon glyphicon-search"></span>
				</div>
			</div>
			<form action="">
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
					<tr>
						<td><input type="text" name="" disabled="disabled" value="张三">
						</td>
						<td><input type="text" name="" disabled="disabled"
							value="1612205109"></td>
						<td><input type="text" name="" disabled="disabled" value="男">
						</td>
						<td><input type="text" name="" disabled="disabled" value="12">
						</td>
						<td><input type="text" name="" value="138888888"></td>
					</tr>
				</table>
				<button type="submit" class="btn btn-primary pull-right">提交</button>
			</form>
		</div>
		<div class="show_main">
			<h3 class="title">逾期信息修改</h3>
			<div class="sreach">
				<input type="text" placeholder="输入图书编号">
				<div class="sou">
					<span class="glyphicon glyphicon-search"> </span>
				</div>
			</div>
			<form action="">
				<table class="table table-condensed table-hover table-bordered">
					<!-- On rows -->
					<!-- On cells (`td` or `th`) -->
					<tr>
						<th class="success">图书编号</th>
						<th class="success">图书名字</th>
						<th class="success">逾期费用</th>
					</tr>
					<tr>
						<td><input type="text" name="" disabled="disabled"
							value="1612205109"></td>
						<td><input type="text" name="" disabled="disabled"
							value="我们的明天"></td>
						<td>￥<input type="text" name="" value="3.5">
						</td>
					</tr>
				</table>
				<button type="submit" class="btn btn-primary pull-right">提交</button>
			</form>
		</div>
	</div>
</body>
</html>