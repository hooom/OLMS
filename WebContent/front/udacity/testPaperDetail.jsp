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
					<s:form action="testPaperListScore" method="post"
						enctype="multipart/form-data">
						<h1>${testPaper.testPaperName}</h1>
						<p class="caption">测试</p>
						题干：${q1.question}
						<br/>
					        A:${q1.itemA}
					        <br/>
						    B:${q1.itemB}
						    <br/>
							C:${q1.itemC}
							<br/>
							D:${q1.itemD}
							<br/>
							${q1.rightAnswer}
						    <s:select label="答案"  key="q1.userAnswer" list="selectAnswers" />
							<br/>
							题干：${q2.question}
						<br/>
					        A:${q2.itemA}
					        <br/>
						    B:${q2.itemB}
						    <br/>
							C:${q2.itemC}
							<br/>
							D:${q2.itemD}
							<br/>
							<s:select label="答案" key="q2.userAnswer" list="selectAnswers" />
							<s:submit key="submit" />
					</s:form>
				</div>
			</div>
		</div>
	</div>
</div>