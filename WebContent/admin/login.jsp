<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>管理员登陆</title>
<meta charset="UTF-8" />

<link rel="stylesheet" type="text/css" href="../admin/resource/css/loginreset.css">
<link rel="stylesheet" type="text/css" href="../admin/resource/css/loginstructure.css">
</head>

<body>
<form class="box login" action="../admin/login" method="post">
	<fieldset class="boxBody">
	  <label>用户名</label>
	  <input name="user.username" type="text" tabindex="1" placeholder="admin" required>
	  <label><a href="#" class="rLink" tabindex="5">忘记密码?</a>密码</label>
	  <input name="user.password" type="password" tabindex="2" required>
	</fieldset>
	<footer>
	  <input type="submit" class="btnLogin" value="Login" tabindex="4">
	</footer>
</form>
<footer id="main">
	<p>
		版权所有。
	</p>
</footer>
</body>
</html>
