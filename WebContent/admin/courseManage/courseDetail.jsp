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
		<form method="post" action="courseAdd" id="jvForm">
		<table width="100%" class="pn-ftable" cellpadding="2" cellspacing="1" border="0">
			<tr><td width="20%" class="pn-flabel pn-flabel-h">课程名称:</td>
				<td width="80%" class="pn-fcontent"><input type="text" maxlength="100" maxlength="100" name="course.courseName"/>
				</td></tr>
			<tr><td width="20%" class="pn-flabel pn-flabel-h">课程简介:</td>
				<td width="80%" class="pn-fcontent">
					<textarea name="course.description"></textarea>
				</td></tr>
			<tr><td width="20%" class="pn-flabel pn-flabel-h">课程难度:</td>
 				<td width="80%" class="pn-fcontent">
 				<select name="course.level">
 					<option value="beginner">初级</option>
 					<option value="intermediate">中级</option>
 					<option value="advanced">高级</option>
 				</select>
 				</td></tr>
 			<tr><td colspan="2" class="pn-fbutton">
				<input type="submit" value="提交" class="submit" class="submit"/> &nbsp; <input type="reset" value="重置" class="reset" class="reset"/></td>
			</tr>
			</table>
		</form>
	   	</div>
	</div>