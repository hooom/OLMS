<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<div class="container">
	<div class="row">
		<div class="span12">
			<div class="player oview-player">
				<div class="player-head">
					<div class="player-head-nav ng-isolate-scope ng-scope"
						data-header-mini-nav="" data-current-location="overview"
						data-check-enrollment="" data-course-id="'cs101'"
						data-ng-show="userIsEnrolled" style="display: none;">
						<div class="player-head-buttons"
							ng-mouseleave="hovered = currentLocation">
							<a class="player-head-button-overview player-head-button-current"
								ng-mouseenter="hovered = 'overview'"
								ng-class="{ 'player-head-button-current': currentLocation == 'overview' }"
								ng-href="/course/cs101" title="Class Overview"
								href="/course/cs101"></a> <a
								class="player-head-button-classroom"
								ng-mouseenter="hovered = 'classroom'"
								ng-class="{ 'player-head-button-current': currentLocation == 'classroom' }"
								ng-href="/course/viewer#!/c-cs101" title="Classroom"
								href="/course/viewer#!/c-cs101"></a> <a
								class="player-head-button-notes"
								ng-mouseenter="hovered = 'wiki'"
								ng-class="{ 'player-head-button-current': currentLocation == 'wiki' }"
								ng-href="/wiki/cs101" title="Course Wiki" href="/wiki/cs101"></a>
							<a class="player-head-button-talk"
								ng-mouseenter="hovered = 'forum'"
								ng-class="{ 'player-head-button-current': currentLocation == 'forum' }"
								ng-href="http://forums.udacity.com/tags/cs101/#cs101"
								title="Class Discussion"
								href="http://forums.udacity.com/tags/cs101/#cs101"></a>
						</div>
						<div class="player-head-location">
							<span class="player-head-location-text ng-binding"
								ng-class="{'is-active': hovered != currentLocation }">overview</span>
						</div>
					</div>
					<h1>${course.courseName}</h1>
				</div>
				<div class="player-content">
					<div class="player-side">
						<div class="oview-side-nav">
							<div class="oview-side">
								<div class="oview-side-head"></div>
								<div class="oview-side-body">
									<div class="oview-side-body-content">
										<div class="oview-side-details">
											<div class="oview-side-detail"
												style="margin-left: auto; margin-right: auto; float: none; width: 110px;">
												<span class="oview-side-detail-head"> <i
													class="uicon-class-level is-beginner"></i>
												</span>
												<p class="caption">${course.level}</p>
											</div>
										</div>


										<div class="oview-side-instrs">
											<h4>授课教师</h4>
											<span class="oview-side-instr">${course.teacher.username}</span>
										</div>
									</div>
								</div>
								<div class="oview-side-foot">

									<button data-enroll-resume="" data-course-key="cs101"
										class="btn btn-primary ng-isolate-scope ng-scope ng-binding"
										data-ng-disabled="disabled">选课</button>

									<div data-credit-link="" data-course-key="'cs101'"
										data-accredited="false" class="ng-isolate-scope ng-scope">
										<a href="/collegecredit" data-ng-show="shouldDisplay()"
											style="display: none;"><strong>Enroll For
												College Credit</strong>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="player-main">
						<div class="scale-media">


							<video id="example_video_1" class="video-js vjs-default-skin"
								controls preload="auto" width="640" height="264"
								poster="..${course.introPicture}"
								data-setup='{"example_option":true}'>
								<source src="..${course.introVideo }" type='video/mp4' />
							</video>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row oview-meta-info">
		<div class="span9">
			<!-- SUMMARY/NEED/GAIN START -->
			<div class="row sum-need-get">
				<div class="span3">
					<div class="row-fluid active-h">
						<div class="span12 active-h-heading">
							<h2>Class Summary</h2>
						</div>
					</div>
					<p>
						<span class="pretty-format"></span>
					</p>
					<p>${course.description}</p>
					<p></p>
				</div>
				<div class="span3">
					<div class="row-fluid active-h">
						<div class="span12 active-h-heading">
							<h2>What Should I Know?</h2>
						</div>
					</div>
					<p>
						<span class="pretty-format"></span>
					</p>
					<p>${course.requireKnowledge}</p>
					<p></p>
				</div>
				<div class="span3">
					<div class="row-fluid active-h">
						<div class="span12 active-h-heading">
							<h2>What Will I Learn?</h2>
						</div>
					</div>
					<p>
						<span class="pretty-format"></span>
					</p>
					<p>${course.gain}</p>
					<p></p>
				</div>
			</div>
			<!-- SUMMARY/NEED/GAIN END -->

			<!-- SYLLABUS START-->
			<div class="row">
				<div class="span9">
					<div class="row-fluid active-h connected">
						<div class="span12 active-h-heading">
							<h2>课程设置</h2>
						</div>
					</div>
					<div class="row-fluid syllabus">
						<div class="span12">
							<span class="pretty-format"> 
								<s:iterator value="course.videos" var="video">
									<s:url action="videoPlay" namespace="front" var="videoPlayLink">
										<s:param name="video.videoID">${video.videoID}</s:param>
									</s:url>
									<h3><a href="../${videoPlayLink}">${video.videoName}</a></h3>
									<p>${video.description}</p>
								</s:iterator> 
							</span>
						</div>
					</div>
				</div>
			</div>

		</div>

	</div>
</div>