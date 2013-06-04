<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

	 
	 <div style="margin-left:30px">
	 <ul id="browser" class="filetree" >
	 	<s:iterator value="courses" var="c">
	 		<li class="closed">

	 			<a ><span class="folder">${c.courseName}</span></a>
	 			<s:iterator value="%{#c.testPapers}" var="v">
	 				<ul>
	 					<li class="closed">
	 						<s:url action="videoDetail" namespace="admin" var="videoDetailLink">
	 							<s:param name="video.videoID">${v.videoID}</s:param>
	 						</s:url>
	 						<a href="../${videoDetailLink}"><span class="file">${v.videoName}</span></a>
	 					</li>
	 				</ul>
	 			</s:iterator>
	 		</li>
	 	</s:iterator>
	 </ul>
	 </div>  