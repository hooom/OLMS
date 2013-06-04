<%@ page language="java" import="java.util.*,com.olms.model.User" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
           
          User modifyuser=(User)session.getAttribute("modifyuser"); 

	     //   Map session = actionContext.getSession();
	     ///   User modifyuser=(User)session.get("modifyuser");
%>


<div id="midpart">
    	<div class="box-positon">
			<div class="rpos">当前位置: 首页 - 用户管理 - 修改用户</div>
			<form class="ropt">
			</form>
			<div class="clear"></div>
		</div>
		<div class="body-box">
<s:form class="box register" action="modifyUser" method="post" enctype="multipart/form-data">
	 
	  <label>用户名</label>
	  <input name="newuser.username" type="text"  value="<%out.print(modifyuser.getUsername());%>" required>
	  <label>密码</label>
	  <input name="newuser.password" type="password" value="<%out.print(modifyuser.getPassword());%>" required>
	  <label>重复密码</label>
	  <input name="rePassword" type="password" value="<%out.print(modifyuser.getPassword());%>"  required>
	  <label>E-mail</label>
	  <input name="newuser.email" type="text" value="<%out.print(modifyuser.getEmail());%> " required>
	  <label>角色</label>
	  <select name="newuser.role" >	  
	  	<option value="<%out.print(modifyuser.getRole());%>" selected><%if(modifyuser.getRole().equals("student")) 
	  	                                                      out.print("学生");
	  	                                                      else out.print("教师");                                                                                                                 
	  	                                                                 %></option>
	  	<option value="student">学生</option>
	  	<option value="teacher">老师</option>
	  </select>

	<input name="newuser.userID" type="hidden" value="<%out.print(modifyuser.getUserID());%>" required>
	<s:submit key="submit"  />
	 
</s:form>
  	</div>
	</div>