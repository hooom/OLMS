<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>


    <div id="midpart">
    	<div class="box-positon"><div class="rpos">当前位置: 首页 - 课程管理</div>
    		<form class="ropt">
    			<input type="button" value="添加" onclick="window.location='courseAddInput';" class="add-user"/>
        	</form>
    	</div>
		<div class="body-box">
			<form id="tableForm">
				<table class="pn-ltable" style="" width="100%" cellspacing="1" cellpadding="0" border="0">
					<thead class="pn-lthead"><tr>
						<th>ID</th>
						<th>课程名称</th>
						<th>任课老师</th>
						<th>课程难度</th>
						<th>课程简介</th>
						<th>操作选项</th>
					</tr></thead>
					<tbody class="pn-ltbody">
						<s:iterator value="courses" var="c">
							<tr onmouseover="this.bgColor='#eeeeee'" onmouseout="this.bgColor='#ffffff'">
								<td align="center">${c.courseID}</td>
								<td align="center">${c.courseName}</td>
								<td align="center">${c.teacher.username}</td>
								<td align="center">${c.level}</td>
								<td align="center">${c.description}</td>
								<td align="center"><a  class="pn-opt">修改</a> | 
								<a  class="pn-opt">删除</a></td>
							</tr>
						</s:iterator>
					</tbody>
				</table>			
			</form>

   	 	</div>
	</div>
	
