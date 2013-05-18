<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>



<!DOCTYPE HTML>
<html>
<head>
<title>用户注册</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" type="text/css" href="../front/udacity/resource/css/loginreset.css">
<link rel="stylesheet" type="text/css" href="../front/udacity/resource/css/loginstructure.css">
</head>

<body>
<form class="box register" action="register" method="post">
	<fieldset class="boxBody">
	  <label>用户名</label>
	  <input name="user.username" type="text" tabindex="1" placeholder="admin" required>
	  <label>密码</label>
	  <input name="user.password" type="password" tabindex="2" required>
	  <label>重复密码</label>
	  <input name="rePassword" type="password" tabindex="3" required>
	  <label>E-mail</label>
	  <input name="user.email" type="text" tabindex="4" required>
	  <label>角色</label>
	  <select name="user.role">
	  	<option value="student" selected>学生</option>
	  	<option value="teacher">老师</option>
	  </select>
	</fieldset>
	<footer>
	  <input type="submit" class="btnLogin" value="注册" tabindex="4">
	</footer>
</form>
<footer id="main">
	<p>
		版权所有。
	</p>
</footer>
</body>
</html>
