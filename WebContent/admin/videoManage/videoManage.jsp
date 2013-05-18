<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<div id="midpart">
    	<div class="box-positon"><div class="rpos">当前位置: 首页 - 课程管理</div>
    		<form class="ropt">
    			<s:url action="videoAddInput" namespace="admin" var="videoAddInputLink"/>
    			<input type="button" value="添加" onclick="window.location='../${videoAddInputLink}';" class="add-user"/>
        	</form>
    	</div>
	<div class="body-box">
		<div class="welcom-con">
			<div class="we-txt">
				<p>
					欢迎使用在线学习管理系统！点击左侧选择需要管理的课程及视频<br /> 程序版本： olms-2012-beta<br />
				</p>
			</div>
			<ul class="ms">
				<li class="wxx">访问量</li>
				<li class="attribute">系统属性</li>
			</ul>
			<div class="ms-xx">
				<div class="xx-xx">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="20%" height="30" align="right"><br />
							</td>
							<td width="25%"><b>PV</b>
							</td>
							<td width="25%"><b>IP</b>
							</td>
							<td width="30%"><b>独立访客</b>
							</td>
						</tr>
						<tr>
							<td height="30" align="right">今日：</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
						</tr>
						<tr>
							<td height="30" align="right">昨日：</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
						</tr>
						<tr>
							<td height="30" align="right">本周：</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
						</tr>
						<tr>
							<td height="30" align="right">本月：</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
						</tr>
						<tr>
							<td height="30" align="right">累计：</td>
							<td>35</td>
							<td>1</td>
							<td>14</td>
						</tr>
					</table>
				</div>
				<div class="attribute-xx" style="float:left">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="30%" height="30" align="right">操作系统版本：</td>
							<td height="30"><span class="black">Windows Vista 6.1</span>
							</td>
						</tr>
						<tr>
							<td width="30%" height="30" align="right">操作系统类型：</td>
							<td height="30"><span class="black">x86 32位</span></td>
						</tr>
						<tr>
							<td width="30%" height="30" align="right">用户、目录、临时目录：</td>
							<td height="30"><span class="black">rjx, E:\Tomcat
									6.0\bin, E:\Tomcat 6.0\temp</span>
							</td>
						</tr>
						<tr>
							<td width="30%" height="30" align="right">JAVA运行环境：</td>
							<td height="30"><span>Java(TM) SE Runtime Environment
									1.6.0_13-b03</span>
							</td>
						</tr>
						<tr>
							<td width="30%" height="30" align="right">JAVA虚拟机：</td>
							<td height="30"><span>Java HotSpot(TM) Client VM
									11.3-b02</span>
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>