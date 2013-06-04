<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>


    <div id="midpart">
    	<div class="box-positon"><div class="rpos">当前位置: 首页 - 试卷管理</div>
    		<form class="ropt"><input type="button" value="添加" onclick="window.location='testPaperAddInput';" class="add-user"/>
        	 &nbsp;&nbsp;</form>
    	</div>
		<div class="body-box">
			<form id="tableForm">
				<table class="pn-ltable" style="" width="100%" cellspacing="1" cellpadding="0" border="0">
					<thead class="pn-lthead"><tr>
						<th>ID</th>
						<th>试卷名称</th>
						<th>所属课程名称</th>
						<th>出题人</th>
						<th>状态</th>
						<th>操作选项</th>
					</tr></thead>
					<tbody class="pn-ltbody">
						<s:iterator value="testPapers" var="t">
							<tr onmouseover="this.bgColor='#eeeeee'" onmouseout="this.bgColor='#ffffff'">
								<td align="center">${t.testPaperID}</td>
								<td align="center">${t.testPaperName}</td>
								<td align="center">${t.course.courseName}</td>
								<td align="center">${t.course.teacher.username}</td>
								<td align="center">${t.status}</td>
								<td align="center"><a href="testPaperUpdateInput.action?testPaperID=${t.testPaperID}" class="pn-opt">修改</a> | 
								<a href="testPaperDelete.action?testPaperID=${t.testPaperID}" class="pn-opt">删除</a></td>
							</tr>
						</s:iterator>
					</tbody>
				</table>			
			</form>

   	 	</div>
	</div>
	
