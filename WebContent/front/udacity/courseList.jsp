<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>




<div class="container">
  <div class="row-fluid active-h connected course-catalog-heading">
  	<div class="span8 active-h-heading"><h1>Course Catalog</h1></div>
	</div>
	<div class="row-fluid course-catalog-content ng-scope" data-ng-controller="courseCatalog">
		<div class="course-filter">
			<span class="filter-heading">Browse Courses in</span>
			<span class="filter-category-dropdown">
				<select data-ng-model="form.categoryType" required="" data-ng-options="option.value as option.name for option in categoryTypeOptions" class="ng-pristine ng-valid ng-valid-required"><option value="0" selected="selected">All Categories</option><option value="1">Business</option><option value="2">Computer Science</option><option value="3">Mathematics</option><option value="4">Physics</option><option value="5">Psychology</option></select>
			</span>
			<span class="filter-levels-dropdown">
				<select data-ng-model="form.levelType" required="" data-ng-options="option.value as option.name for option in levelTypeOptions" class="ng-pristine ng-valid ng-valid-required"><option value="0" selected="selected">All Levels</option><option value="1">Beginner</option><option value="2">Intermediate</option><option value="3">Advanced</option></select>
			</span>
		</div>
		<div class="filter-error-message-container" data-ng-show="isNoMatch" style="display: none;"><div class="error-title">There are no matching courses</div><span>We don't have courses matching the selected category and level.<br>Try modifying the search or browse similar courses below.</span>
		</div>
		
		<div class="l-crs-li">
			<ul id="unfiltered-class-list" class="crs-li">
				
				<s:iterator value="courses" var="c">

			<li data-ng-show="isCourseShown('ma006')" style="">
					<s:url action="courseDetailInput" namespace="front" var="courseDetailInputLink">
						<s:param name="course.courseID">${c.courseID}</s:param>
					</s:url>
					<a href="../${courseDetailInputLink}">
						<div class="crs-li-info">
							<div class="crs-li-name-and-tags">
								<div class="crs-li-name">
									<div class="crs-li-title">${c.courseName}</div>
								</div>
								<div class="crs-li-tags">
									<div class="crs-li-tags-category">${c.teacher.username}</div>
									<div class="crs-li-tags-level">
										<div class="level-widget" title="Beginner">
											<div class="level-widget-beginner">
												<div class="level-widget-bar1"></div>
												<div class="level-widget-bar2"></div>
												<div class="level-widget-bar3"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="crs-li-text">
								<div class="crs-li-main-text">${c.description}
								</div>
							</div>
						</div>
					</a>
				</li>
				
				
				</s:iterator>

	


			</ul>
		</div>
	</div>
</div>



