<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%String name = (String)session.getAttribute("username"); %>
<%String password = (String)session.getAttribute("password"); %>
<%int power = (Integer)session.getAttribute("power"); %>
<%String current = (String)session.getAttribute("current"); %>
<%String powerString = (String)session.getAttribute("powerString"); %>
<div id="top">
     <div class="top">
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="215"><div class="logo"><img src="resource/img/logo.png" width="215" height="69" /></div></td>
            <td valign="top">
                <div class="topbg">
                     <div class="login-welcome">
                             <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                  <tr>
                                    <td width="320" height="38">
                                   	<img src="resource/img/admin/welconlogin-icon.png"/><span id="welcome"><s:text name="admin.header.hello"/><s:property value="#session.user.username"/><s:text name="admin.header.authority"/><s:property value="#session.user.role"/></span>
									<img src="resource/img/admin/loginout-icon.png"/><a href="logout"><s:text name="admin.header.exit" /></a>
                                    </td>
                                    <td align="right">

                                    </td>
                                    <td width="100">
                                    &nbsp;<a id="view_index" href="../front/goIndex" target="_blank"><s:text name="admin.header.viewFrontHomePage"/></a>
                                    </td>
                                  </tr>
                                </table>
                       </div>  
                     <div class="nav">
                     	  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td style="background-image:url('resource/img/admin/nav-left.png')" width="14" height="31"></td>
                                <td>
                                	<ul class="nav-menu">

										<li class="sep"></li>
                                		<s:if test="#session.current == 'index'">
                                			<li class="current">
                                		</s:if>
                                		<s:else>
                                			<li class="normal">
                                		</s:else>									
										<a href="<s:url action="../admin/goIndex"/>">首页</a></li>										
										
										<li class="sep"></li>
                                		<s:if test="#session.current == 'userManage'">
                                			<li class="current">
                                		</s:if>
                                		<s:else>
                                			<li class="normal">
                                		</s:else>									
										<a href="<s:url action="../admin/userManage"/>">用户管理</a></li>
										
										
										<li class="sep"></li>
                                		<s:if test="#session.current == 'courseManage'">
                                			<li class="current">
                                		</s:if>
                                		<s:else>
                                			<li class="normal">
                                		</s:else>
                                		<s:url action="courseManage" namespace="admin" var="courseManageLink">
                                			<s:param name="level">all</s:param>
                                		</s:url>				
										<a href="../${courseManageLink}">课程管理</a></li>
										
										
										<li class="sep"></li>
                                		<s:if test="#session.current == 'videoManage'">
                                			<li class="current">
                                		</s:if>
                                		<s:else>
                                			<li class="normal">
                                		</s:else>	
                                		<a href="<s:url action="../admin/videoManage"/>">视频管理</a></li>
										
										
										<li class="sep"></li>
                                		<s:if test="#session.current == 'testPaperManage'">
                                			<li class="current">
                                		</s:if>
                                		<s:else>
                                			<li class="normal">
                                		</s:else>
										<a href="<s:url action="../admin/testPaperManage"/>">试卷管理</a></li>

										<li class="sep"></li>
                                		<s:if test="#session.current == 'examManage'">
                                			<li class="current">
                                		</s:if>
                                		<s:else>
                                			<li class="normal">
                                		</s:else>
										<a href="<s:url action="../admin/examManage"/>">考试管理</a></li>
		
										
                                    </ul>
                                </td>
                              </tr>
                            </table>
                     </div>  
                </div>
          </tr>
        </table>
     </div>
</div>