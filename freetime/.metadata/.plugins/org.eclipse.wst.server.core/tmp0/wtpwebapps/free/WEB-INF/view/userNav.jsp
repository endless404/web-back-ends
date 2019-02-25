<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="navbar navbar-default">
	  		<div class="container-fluid">
	    <!-- Brand and toggle get grouped for better mobile display -->

	    <!-- Collect the nav links, forms, and other content for toggling -->
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav nav_check">
	      <li><a href="userQbook">图书查询<span class="sr-only">(current)</span></a></li>
	        <li><a href="UserFbook?readerid=${sessionScope.user.name}">已借阅书籍<span class="sr-only">(current)</span></a></li>
	      </ul>
	      <ul class="nav navbar-nav navbar-right">
	        <li><a href="#">欢迎<span> ${sessionScope.read.name} </span>,^_^</a></li>
	        <li class="dropdown">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">修改登录信息<span class="caret"></span></a>
	          <ul class="dropdown-menu exit">
	            <li><a href="uppwd">修改登录密码</a></li>
	            <li role="separator" class="divider"></li>
	            <li><a href="quit">退出登录</a></li>
	          </ul>
	        </li>
	      </ul>
	    </div><!-- /.navbar-collapse -->
	  	</div><!-- /.container-fluid -->
	</nav>