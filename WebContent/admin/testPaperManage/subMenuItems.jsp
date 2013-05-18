<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%String name = (String)session.getAttribute("username"); %>
<%String password = (String)session.getAttribute("password"); %>
<%int power = (Integer)session.getAttribute("power"); %>
<%String powerString = (String)session.getAttribute("powerString"); %>
	 
	 <div style="margin-left:30px">
	 <ul id="browser" class="filetree" >
	 	<li class="closed"><span class="folder">c program</span></li>
	 	<s:iterator value="user.webs" var="web">
	 		<li class="closed"><a href="moduleManager.action?webID=${web.webID}"><span class="folder">${web.webName}</span></a>
	 			<s:iterator value="%{#web.modules}" var="module">
	 				<ul><li class="closed"><a href="subModuleManager.action?moduleID=${module.moduleID}"><span class="folder">${module.moduleName}</span></a>
	 					<s:iterator value="%{#module.subModules}" var="subModule">
	 						<ul><li class="closed"><span class="file">${subModule.subModuleName}</span></li></ul>
	 					</s:iterator>
	 				</li></ul>
	 			</s:iterator>
	 		</li>
	 	</s:iterator>
	 </ul>
	 </div>  