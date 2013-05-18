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
			
		<form method="post" action="pageTemplateModify.action" id="jvForm">
			<table width="100%" class="pn-ftable" cellpadding="2" cellspacing="1" border="0">
				<tr id="tr-txt">
					<td width="10%" class="pn-flabel pn-flabel-h">所在课程:</td>
					<td width="10%" class="pn-flabel pn-flabel-h"><p>${video.course.courseName}</p></td>
		  		</tr>
				<tr id="tr-txt">
					<td width="10%" class="pn-flabel pn-flabel-h">视频名称:</td>
					<td width="10%" class="pn-flabel pn-flabel-h"><p>${video.videoName}</p></td>
		  		</tr>
				<tr id="tr-txt">
					<td width="10%" class="pn-flabel pn-flabel-h">视频简介:</td>
					<td width="10%" class="pn-flabel pn-flabel-h"><p>${video.description}</p></td>
		  		</tr>
				<tr id="tr-txt">
					<td width="10%" class="pn-flabel pn-flabel-h">视频难度:</td>
					<td width="10%" class="pn-flabel pn-flabel-h"><p>${video.course.level}</p></td>
		  		</tr>
				<tr id="tr-txt">
					<td width="10%" class="pn-flabel pn-flabel-h">视频状态:</td>
					<td width="10%" class="pn-flabel pn-flabel-h"><p>${video.status}</p></td>
		  		</tr>
			</table>
			
	   	</div>
	</div>