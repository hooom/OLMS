<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>


    <div id="midpart">
    	<div class="box-positon"><div class="rpos">当前位置: 首页 - 课程管理</div>
    		<form class="ropt"><input type="button" value="添加" onclick="window.location='userAddBefore.action';" class="add-user"/>
        	 &nbsp;&nbsp;</form>
    	</div>
		<div class="body-box">
			<form id="tableForm">
				<table class="pn-ltable" style="" width="100%" cellspacing="1" cellpadding="0" border="0">
					<thead class="pn-lthead"><tr>
						<th>ID</th>
						<th>用户名</th>
						<th>用户密码</th>
						<th>用户权限</th>
						<th>用户负责网站</th>
						<th>操作选项</th>
					</tr></thead>
					<tbody class="pn-ltbody">
						<s:iterator value="allUsers" var="user">
							<tr onmouseover="this.bgColor='#eeeeee'" onmouseout="this.bgColor='#ffffff'">
								<td align="center">${user.userID}</td>
								<td align="center">${user.userName}</td>
								<td align="center">${user.password}</td>
								<td align="center">${user.userPower}</td>
								<td><s:iterator value="%{#user.webs}" var="web">
									<s:property value="%{#web.webName}" />
								</s:iterator></td>
								<td align="center"><a href="userModifyBefore.action?userID=${user.userID}" class="pn-opt">修改</a> | 
								<a href="userDelete.action?userID=${user.userID}" class="pn-opt">删除</a></td>
							</tr>
						</s:iterator>
					</tbody>
				</table>			
			</form>

   	 	</div>
	</div>
	
