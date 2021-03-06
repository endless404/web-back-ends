<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="navbar navbar-default">
  		<div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav nav_check">
        <li><a href="books">图书查询</a></li>
        <li><a href="user">用户查询</a></li>
        <li><a href="addBorrow">借书登记</a></li>
        <li><a href="add">增加图书</a></li>
        <li><a href="addUser">增加用户</a></li>
        <li  class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">基础信息修改<span class="caret"></span></a>
          <ul class="dropdown-menu menu_two">
            <li><a href="upbook">书籍信息修改</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="upuser">用户信息修改</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="upcost">逾期费用修改</a></li>
            
          </ul>
        </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">欢迎admin,^_^</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">修改登录信息<span class="caret"></span></a>
          <ul class="dropdown-menu exit">
            <li><a href="uppwd">修改登录密码</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="loginout">退出登录</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  	</div><!-- /.container-fluid -->
</nav>