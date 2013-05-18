<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<div id="midpart">
    	<div class="box-positon"><div class="rpos">当前位置: 首页 - 课程管理</div>
    		<form class="ropt">
    			<s:url action="videoAddInput" namespace="admin" var="videoAddInputLink"/>
    			<input type="button" value="添加" onclick="window.location='../${videoAddInputLink}';" class="add-user"/>
        	</form>
    	</div>
	<div class="body-box">
		<div class="welcom-con">
			<div >
				<p>
					欢迎使用在线学习管理系统！点击左侧选择需要管理的课程及视频<br /> 程序版本： olms-2012-beta<br />
				</p>
			</div>


		</div>
	</div>
</div>