<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%String name = (String)session.getAttribute("username"); %>
<%String password = (String)session.getAttribute("password"); %>
<%int power = (Integer)session.getAttribute("power"); %>
<%String powerString = (String)session.getAttribute("powerString"); %>
<%String tips = (String)request.getAttribute("tips"); %>

 <div id="midpart">
    	<div class="box-positon">
			<div class="rpos">当前位置: 首页 - 修改用户</div>
			<form class="ropt">
			</form>
			<div class="clear"></div>
		</div>
		<s:if test="#request.tips != null"><div class="box-positon"><h2><%=tips%></h2></div></s:if>
		<div class="body-box">
		<form method="post" action="userModify.action" id="jvForm">
		<table width="100%" class="pn-ftable" cellpadding="2" cellspacing="1" border="0">
			<tr><td width="20%" class="pn-flabel pn-flabel-h">用户编号:</td>
				<td width="80%" class="pn-fcontent"><input type="text" maxlength="100" maxlength="100"value="${user.userID}" disabled/>
				<input type="hidden" maxlength="100" maxlength="100" name="userID" value="${user.userID}"/>
				</td></tr>
			<tr><td width="20%" class="pn-flabel pn-flabel-h">用户名:</td>
				<td width="80%" class="pn-fcontent"><input type="text" maxlength="100" maxlength="100" name="username" value="${user.userName}"  onchange="namecheck(this)"/>
				<span id="nameMsg" style="color:red"></span>
				</td></tr>
			<tr><td width="20%" class="pn-flabel pn-flabel-h">密码:</td>
				<td width="80%" class="pn-fcontent"><input type="text" maxlength="32" maxlength="32" name="password" value="${user.password}"/>
				</td></tr>
 			<tr><td width="20%" class="pn-flabel pn-flabel-h">用户身份:</td>
 				<td width="80%" class="pn-fcontent">
 				<select name="power">
 					<option value="1">全站管理员</option>
 					<option value="0">普通管理员</option>
 				</select>
 				<span class="pn-fhelp">0：普通管理员；1：全站管理员</span></td></tr>
 				
 				
 				<!-- 模块权限分配 -->
 			<tr><td width="10%" class="pn-flabel pn-flabel-h"><span class="pn-frequired">*</span>新闻发布授权:</td><td colspan="3" width="90%" class="pn-fcontent">
		<div>
		
		
		所属网站：<select id="webSelect" name="webSelect" onchange="webChange()">
			<option value="-1">--选择网站--</option>
        	 	<s:iterator value="user.webs" var="web">
        	 	<option value="${web.webID}">${web.webName}</option>
        	 	</s:iterator>
		</select>&nbsp;&nbsp;
		所属版块：<select id="moduleSelect" name="moduleSelect" onchange="moduleChange()">
  			<option value="-1">--版块列表--</option>
		</select>&nbsp;&nbsp;
		所属子版块：<select id="subModuleSelect" name="subModuleSelect" onchange="subModuleChange()">
  			<option value="-1">--子版块列表--</option>
		</select>&nbsp;&nbsp;
		   
		<input class="add" type="button" onclick="add();" value="增加"/>
		<input class="add" type="button" onclick="deleteLine()" value="删除"/>
		<!-- <input class="add" type="button" onclick="update()" value="生成"/> -->
		<input type="text" id="selectModuleMsg" name="selectModuleMsg" hidden/>
		<br/>
		您所选择的版块有：
		<table id="tab">
				<s:iterator value="user.subModules" var="subModule">
					<td><input type="text" id='line${subModule.subModuleName}(${subModule.subModuleID})' 
						value="${subModule.subModuleName}(${subModule.subModuleID})" name="attachmentNames" disabled/></td>
		</s:iterator>
    	</table>
    	
		<br/>
		<span id="moduleMsg" style="color:red" hidden></span>
		</div></td>
		</tr>
 				
 				
 			<tr><td width="20%" class="pn-flabel pn-flabel-h">管理网站:</td>
 				<td width="80%" class="pn-fcontent">
 				<s:iterator value="webs" var="web">
 					<input type="checkbox" name="webs" value="${web.webID}" checked="true" >&nbsp;${web.webName}</input>
 				</s:iterator>
 				</td>
 			</tr>
 			
 			<tr>
 				<td width="20%" class="pn-flabel pn-flabel-h">公告权限：</td>
 				<td width="80%" class="pn-fcontent">
 					<input type="checkbox" name="authorityItems" value="announcementAdd" 
 						<s:if test="user.authority.announcementAdd">checked="true"</s:if>>添加公告</input>
 					<input type="checkbox" name="authorityItems" value="announcementDelete" 
						<s:if test="user.authority.announcementDelete">checked="true"</s:if>>删除公告</input>
 					<input type="checkbox" name="authorityItems" value="announcementModify" 
 						<s:if test="user.authority.announcementModify">checked="true"</s:if>>修改公告</input>
 					<input type="checkbox" name="authorityItems" value="announcementView" 
 						<s:if test="user.authority.announcementView">checked="true"</s:if>>查看公告</input>
 					<input type="checkbox" name="authorityItems" value="announcementCheck" 
 						<s:if test="user.authority.announcementCheck">checked="true"</s:if>>审核公告</input>
 				</td>
 			</tr>

 			<tr>
 				<td width="20%" class="pn-flabel pn-flabel-h">链接权限：</td>
 				<td width="80%" class="pn-fcontent">
 					<input type="checkbox" name="authorityItems" value="linkAdd" 
 						<s:if test="user.authority.linkAdd">checked="true"</s:if>>添加链接</input>
 					<input type="checkbox" name="authorityItems" value="linkDelete" 
 						<s:if test="user.authority.linkDelete">checked="true"</s:if>>删除链接</input>
 					<input type="checkbox" name="authorityItems" value="linkModify" 
 						<s:if test="user.authority.linkModify">checked="true"</s:if>>修改链接</input>
 					<input type="checkbox" name="authorityItems" value="linkView" 
 						<s:if test="user.authority.linkView">checked="true"</s:if>>查看链接</input>
 				</td>
 			</tr> 	

 			<tr>
 				<td width="20%" class="pn-flabel pn-flabel-h">模块权限：</td>
 				<td width="80%" class="pn-fcontent">
 					<input type="checkbox" name="authorityItems" value="moduleAdd" 
 						<s:if test="user.authority.moduleAdd">checked="true"</s:if>>添加模块</input>
 					<input type="checkbox" name="authorityItems" value="moduleDelete" 
 						<s:if test="user.authority.moduleDelete">checked="true"</s:if>>删除模块</input>
 					<input type="checkbox" name="authorityItems" value="moduleModify" 
 						<s:if test="user.authority.moduleModify">checked="true"</s:if>>修改模块</input>
 					<input type="checkbox" name="authorityItems" value="moduleView" 
 						<s:if test="user.authority.moduleView">checked="true"</s:if>>查看模块</input>
 				</td>
 			</tr> 

 			<tr>
 				<td width="20%" class="pn-flabel pn-flabel-h">新闻权限：</td>
 				<td width="80%" class="pn-fcontent">
 					<input type="checkbox" name="authorityItems" value="newsAdd" 
 						<s:if test="user.authority.newsAdd">checked="true"</s:if>>添加新闻</input>
 					<input type="checkbox" name="authorityItems" value="newsDelete" 
 						<s:if test="user.authority.newsDelete">checked="true"</s:if>>删除新闻</input>
 					<input type="checkbox" name="authorityItems" value="newsModify" 
 						<s:if test="user.authority.newsModify">checked="true"</s:if>>修改新闻</input>
 					<input type="checkbox" name="authorityItems" value="newsView" 
 						<s:if test="user.authority.newsView">checked="true"</s:if>>查看新闻</input>
 					<input type="checkbox" name="authorityItems" value="newsCheck" 
 						<s:if test="user.authority.newsCheck">checked="true"</s:if>>审核新闻</input>
 				</td>
 			</tr> 

 			<tr>
 				<td width="20%" class="pn-flabel pn-flabel-h">图片权限：</td>
 				<td width="80%" class="pn-fcontent">
 					<input type="checkbox" name="authorityItems" value="pictureAdd" 
 						<s:if test="user.authority.pictureAdd">checked="true"</s:if>>添加图片</input>
 					<input type="checkbox" name="authorityItems" value="pictureDelete" 
 						<s:if test="user.authority.pictureDelete">checked="true"</s:if>>删除图片</input>
 					<input type="checkbox" name="authorityItems" value="pictureModify" 
 						<s:if test="user.authority.pictureModify">checked="true"</s:if>>修改图片</input>
 					<input type="checkbox" name="authorityItems" value="pcitureView" 
 						<s:if test="user.authority.pictureView">checked="true"</s:if>>查看图片</input>
 				</td>
 			</tr> 

 			<tr>
 				<td width="20%" class="pn-flabel pn-flabel-h">子模块权限：</td>
 				<td width="80%" class="pn-fcontent">
 					<input type="checkbox" name="authorityItems" value="subModuleAdd" 
 						<s:if test="user.authority.subModuleAdd">checked="true"</s:if>>添加子模块</input>
 					<input type="checkbox" name="authorityItems" value="subModuleDelete" 
 						<s:if test="user.authority.subModuleDelete">checked="true"</s:if>>删除子模块</input>
 					<input type="checkbox" name="authorityItems" value="subModuleModify" 
 						<s:if test="user.authority.subModuleModify">checked="true"</s:if>>修改子模块</input>
 					<input type="checkbox" name="authorityItems" value="subModuleView" 
 						<s:if test="user.authority.subModuleView">checked="true"</s:if>>查看子模块</input>
 				</td>
 			</tr> 

 			<tr>
 				<td width="20%" class="pn-flabel pn-flabel-h">用户权限：</td>
 				<td width="80%" class="pn-fcontent">
 					<input type="checkbox" name="authorityItems" value="userAdd" 
 						<s:if test="user.authority.userAdd">checked="true"</s:if>>添加用户</input>
 					<input type="checkbox" name="authorityItems" value="userDelete" 
 						<s:if test="user.authority.userDelete">checked="true"</s:if>>删除用户</input>
 					<input type="checkbox" name="authorityItems" value="userModify" 
 						<s:if test="user.authority.userModify">checked="true"</s:if>>修改用户</input>
 					<input type="checkbox" name="authorityItems" value="userView" 
 						<s:if test="user.authority.userView">checked="true"</s:if>>查看用户</input>
 				</td>
 			</tr> 

 			<tr>
 				<td width="20%" class="pn-flabel pn-flabel-h">视频权限：</td>
 				<td width="80%" class="pn-fcontent">
 					<input type="checkbox" name="authorityItems" value="videoAdd" 
 						<s:if test="user.authority.videoAdd">checked="true"</s:if>>添加视频</input>
 					<input type="checkbox" name="authorityItems" value="videoDelete" 
 						<s:if test="user.authority.videoDelete">checked="true"</s:if>>删除视频</input>
 					<input type="checkbox" name="authorityItems" value="videoModify" 
 						<s:if test="user.authority.videoModify">checked="true"</s:if>>修改视频</input>
 					<input type="checkbox" name="authorityItems" value="videoView" 
 						<s:if test="user.authority.videoView">checked="true"</s:if>>查看视频</input>
 				</td>
 			</tr> 

 			<tr>
 				<td width="20%" class="pn-flabel pn-flabel-h">网站权限：</td>
 				<td width="80%" class="pn-fcontent">
 					<input type="checkbox" name="authorityItems" value="webAdd" 
 						<s:if test="user.authority.webAdd">checked="true"</s:if>>添加网站</input>
 					<input type="checkbox" name="authorityItems" value="webDelete" 
 						<s:if test="user.authority.webDelete">checked="true"</s:if>>删除网站</input>
 					<input type="checkbox" name="authorityItems" value="webModify" 
 						<s:if test="user.authority.webModify">checked="true"</s:if>>修改网站</input>
 					<input type="checkbox" name="authorityItems" value="webView" 
 						<s:if test="user.authority.webView">checked="true"</s:if>>查看网站</input>
 				</td>
 			</tr>

 			<tr><td colspan="2" class="pn-fbutton">
				<input type="submit" value="提交" class="submit" class="submit"/> &nbsp; <input type="reset" value="重置" class="reset" class="reset"/></td>
			</tr>
			</table>
		</form>
	   	</div>
	</div>