<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<div class="container my-courses ng-scope" data-ng-controller="myCourses">
	<div data-click-fade="" class="alert alert-success new-class-message" data-ng-show="newClass" style="display: none;">                                                          
		You've added a new class!
	</div>

	<h1 class="active-h">My Courses</h1>

	<div data-ng-show="nodesLoaded" style="">
	
		<s:if test="">
		<div class="span4 no-courses" data-ng-hide="allKeys.length &gt; 0">
			<div class="error-title ng-binding">Welcome, qiu!</div>
			This is the one-stop-shop for managing courses you're taking and keeping track of your
			progress and mastery levels.  Get started now by taking a class!

			<a href="/courses" class="btn btn-primary">Browse Course Catalog</a>
		</div>		
		</s:if>
	

		
		<div class="span12" data-ng-show="allKeys.length &gt; 0" style="">
			<div class="current-courses" data-ng-show="getEnrollmentKeys(true).length &gt; 0" style="">
				<h2 class="enrollment-state">Current</h2>

				<div data-ng-repeat="courseKey in getEnrollmentKeys(true)" class="ng-scope">
					 <div data-course-summary="" data-course-key="courseKey" data-init-expand="expand == courseKey" class="ng-isolate-scope ng-scope">
						
						<s:iterator value="courses" var="course">
								<s:url action="courseDetailInput" namespace="front" var="courseDetailInputLink">
									<s:param name="course.courseID">${course.courseID}</s:param>
								</s:url>
						
							<a target="_blank" href="../${courseDetailInputLink}">
							 <div class="row course-summary clickable" data-ng-class="{clickable: !expanded &amp;&amp; isAvailable(courseKey)}">
								<h2 class="span12 course-title">
									<span class="clickable ng-binding">${course.courseName}</span>
								</h2>
							</div>
							</a>
							
						</s:iterator>

					</div>
				</div>

			</div>
		</div>


</div>