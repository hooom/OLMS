<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML>
<html>
<head>
<title>用户注册</title>
<meta charset="UTF-8" />
<link rel="stylesheet" type="text/css" href="../front/udacity/resource/css/loginreset.css">
<link rel="stylesheet" type="text/css" href="../front/udacity/resource/css/loginstructure.css">
</head>

<body>
<form class="box register" action="login" method="post">

	
	<s:url action="goLogin" namespace="admin" var="goLoginLink"/>
	
	注册成功。点击前往<a href="../${goLoginLink}">登陆</a>到页面
	
</form>
<footer id="main">
	<p>
		版权所有。
	</p>
</footer>
</body>
</html>
