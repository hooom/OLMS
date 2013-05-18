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
	
	<br /><br />
	您的session已失效。为了保障您的账号安全。<br /><br /><br />
	请点击前往<a href="../${goLoginLink}">登陆</a>页面重新登录
	
</form>
<footer id="main">
	<p>
		版权所有。
	</p>
</footer>
</body>
</html>
