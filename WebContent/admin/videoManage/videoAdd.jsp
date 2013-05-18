<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

    <div id="midpart">
    	<div class="box-positon">
			<div class="rpos">当前位置: 首页 - 课程版块</div>
			<form class="ropt">
			</form>
			<div class="clear"></div>
		</div>
		<div class="body-box">
			
			<s:form action="videoAdd" method="post" enctype="multipart/form-data">
				<s:textfield key="video.videoName" />
				<s:file key="videoFile" />
				<s:textarea key="video.description" />
				<s:select key="video.course.courseID" list="courses" listKey="courseID" listValue="courseName"/>
				<s:submit key="video.submit" />
			</s:form>
			
	   	</div>
	</div>