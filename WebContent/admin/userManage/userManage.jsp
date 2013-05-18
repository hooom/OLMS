<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>


    <div id="midpart">
    	<div class="box-positon"><div class="rpos">当前位置: 首页 - 用户管理</div>
    	</div>
		<div class="body-box">
			<form id="tableForm">
				<table class="pn-ltable" style="" width="100%" cellspacing="1" cellpadding="0" border="0">
					<thead class="pn-lthead"><tr>
						<th>ID</th>
						<th>用户名</th>
						<th>用户权限</th>
						<th>状态</th>
						<th>相关课程</th>
						<th>操作选项</th>
					</tr></thead>
					<tbody class="pn-ltbody">
						<s:iterator value="users" var="user">
							<tr onmouseover="this.bgColor='#eeeeee'" onmouseout="this.bgColor='#ffffff'">
								<td align="center">${user.userID}</td>
								<td align="center">${user.username}</td>
								<td align="center">${user.role}</td>
								<td align="center">${user.status}</td>
								<td>
									<s:if test="user.role == 'teacher'">ttt
										<s:iterator value="%{#user.courses}" var="c">
											<s:property value="%{#c.courseName}" />
										</s:iterator>
									</s:if>
									<s:else>
										student
									</s:else>
		 						</td>

								<td align="center"><a href="userModifyBefore.action?userID=${user.userID}" class="pn-opt">修改</a> | 
								<a href="userDelete.action?userID=${user.userID}" class="pn-opt">删除</a></td>
							</tr>
						</s:iterator>
					</tbody>
				</table>			
			</form>

   	 	</div>
	</div>
	
