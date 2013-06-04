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
		 <s:form action="testPaperUpdate" method="post" enctype="multipart/form-data">
		 	<s:textfield label="试卷名" key="testPaper.testPaperName"  />
		 	<s:select label="试卷所属课程" key="testPaper.course.courseID" list="courses" listKey="courseID" listValue="courseName" value="testPaper.course.courseName"/>
		 	
		 	<s:textfield label="题目1，题干" name="q1.question" />
		 	<s:textfield label="A" key="q1.itemA"/>
		 	<s:textfield label="B" key="q1.itemB"/>
		 	<s:textfield label="C" key="q1.itemC" />
		 	<s:textfield label="D" key="q1.itemD" />
		 	<s:select key="q1.rightAnswer" list="rightAnswers" />
		 	<s:textfield label="题目2，题干" name="q2.question" />
		 	<s:textfield label="A" name="q2.itemA" />
		 	<s:textfield label="B" name="q2.itemB"/>
		 	<s:textfield label="C" name="q2.itemC"/>
		 	<s:textfield label="D" name="q2.itemD"/>
		 	<s:select key="q2.rightAnswer" list="rightAnswers" />
		 	<s:submit key="submit" />
		 	
		 </s:form>
		 
	   	</div>
	</div>