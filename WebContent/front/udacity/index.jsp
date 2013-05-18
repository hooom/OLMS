<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>



<div class="container">
	<div class="homepage-header-container">
		<div class="homepage-header-logo">
			<img src="../front/udacity/resource/image/logo.png" style="width:235;height:98;" alt="Udacity Logo">
		</div>
		<div class="homepage-header-text-container">
			<h1 class="header-slogan">学. 思. 行.</h1>
			<p class="header-slogan-subtitle">
				知识改变命运
			</p>
		</div>
		<div class="homepage-header-credit-banner">
			<img class="credit-banner-background" 
				 src="../front/udacity/resource/image/triangles_withLine.png">
<!-- 			<div class="credit-banner-text">
				<a href="/collegecredit">
					<h5 class="credit-header">
						马上测验
						<img class="credit-arrow" src="../front/udacity/resource/image/transparent.png">
					</h5>
				</a>
				通过测试。检验学习
			</div>	
 -->
		</div>
	</div>

	<div class="courses-container">
		<section id="beginner-courses" class="course-section">
			<div class="course-level-header">
				<h2>入门</h2>
				<div class="course-level-header-link">
					<a href="../front/courseList?level=beginner">全部课程</a>
				</div>
				<div class="course-level-header-hr"></div>
			</div>
			<ul class="featured-classes">
				<s:iterator value="beginner" var="course">
					<li class="featured-class">
						<s:url action="courseDetailInput" namespace="front" var="courseDetailInputLink">
							<s:param name="course.courseID">${course.courseID}</s:param>
						</s:url>
						<a href="../${courseDetailInputLink}">
							<img src="..${course.introPicture}" alt="Intro to Computer Science">
							<span class="course-title">${course.courseName}</span>
						</a>
					</li>
				</s:iterator>
			</ul>
		</section>

		<section id="intermediate-courses" class="course-section">
			<div class="course-level-header">
				<h2>提高</h2>
				<div class="course-level-header-link">
					<a href="../front/courseList?level=intermediate">查看全部</a>
				</div>
				<div class="course-level-header-hr"></div>
			</div>
			<ul class="featured-classes">
				<s:iterator value="intermediate" var="course">
					<li class="featured-class">
						<s:url action="courseDetailInput" namespace="front" var="courseDetailInputLink">
							<s:param name="course.courseID">${course.courseID}</s:param>
						</s:url>
						<a href="../${courseDetailInputLink}">
							<img src="..${course.introPicture}" alt="Intro to Computer Science">
							<span class="course-title">${course.courseName}</span>
						</a>
					</li>
				</s:iterator>		
			</ul>
		</section>

		<section id="advanced-courses" class="course-section">
			<div class="course-level-header">
				<h2>高级</h2>
				<div class="course-level-header-link">
					<a href="../front/courseList?level=advanced">查看全部</a>
				</div>
				<div class="course-level-header-hr"></div>
			</div>
			<ul class="featured-classes">
				<s:iterator value="advanced" var="course">
					<li class="featured-class">
						<s:url action="courseDetailInput" namespace="front" var="courseDetailInputLink">
							<s:param name="course.courseID">${course.courseID}</s:param>
						</s:url>
						<a href="../${courseDetailInputLink}">
							<img src="..${course.introPicture}" alt="Intro to Computer Science">
							<span class="course-title">${course.courseName}</span>
						</a>
					</li>
				</s:iterator>
			</ul>
		</section>
	</div>


</div>

