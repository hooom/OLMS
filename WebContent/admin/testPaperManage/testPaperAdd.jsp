<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

    <div id="midpart">
    	<div class="box-positon">
			<div class="rpos">当前位置: 首页 - 试卷版块</div>
			<form class="ropt">
			</form>
			<div class="clear"></div>
		</div>
		<div class="body-box">
		 <s:form action="testPaperAdd" method="post" enctype="multipart/form-data">
		 	<s:textfield label="试卷名" key="testPaper.testPaperName"  />
		 	<s:select label="选择试卷所属课程" list="courses" key="testPaper.course.courseID" listkey="courseID" listValue="courseName"  />
		 	<s:submit key="submit" />
		 	
		 </s:form>
		 
	   	</div>
	</div>