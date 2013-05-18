<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%String name = (String)session.getAttribute("username"); %>
<%String password = (String)session.getAttribute("password"); %>
<%int power = (Integer)session.getAttribute("power"); %>
<%String powerString = (String)session.getAttribute("powerString"); %>
<div id="midpart">
	<div class="box-positon">
		<h1>当前位置: 首页 - 欢迎页</h1>
	</div>
	<div class="body-box">
		<div class="welcom-con">
			<div class="we-txt">
				<p>
					欢迎使用在线学习管理系统！<br /> 程序版本： olms-2012-beta<br />
					您上次登录的时间是：2012-07-06<br /> 您的身份为：<%=powerString%><br />
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