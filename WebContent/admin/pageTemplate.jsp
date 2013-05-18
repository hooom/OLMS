<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="../admin/resource/css/main.css" rel="stylesheet" />
<link href="../admin/resource/css/admin.css" rel="stylesheet" />
<link href="../admin/resource/css/theme.css" rel="stylesheet" />

<tiles:insertAttribute name="headScript" ignore="true"></tiles:insertAttribute>



</head>

<body>

	<!-- 顶部菜单栏 -->
	<tiles:insertAttribute name="headerMenu" ignore="true"></tiles:insertAttribute>
	<s:debug />
	<!-- 顶部菜单与内容的分割线 -->
	<div class="top-bottom"></div>
	
	<div id="main">
		<!-- 左侧子菜单  -->
		<tiles:insertAttribute name="subMenu" ignore="true"></tiles:insertAttribute>
		<!-- 中间部分，实际操作页面  -->
		<tiles:insertAttribute name="content" ignore="true"></tiles:insertAttribute>
	</div>
	
	<tiles:insertAttribute name="footer" ignore="true"></tiles:insertAttribute>

</body>
</html>