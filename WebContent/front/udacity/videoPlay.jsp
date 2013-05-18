<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>


<div class="container ng-scope" data-ng-controller="viewer" data-document-title-updater="">
	<div class="viewer-error-message" data-viewer-error-message="" ng-show="errorMessageText" style="display: none;"><span data-ng-bind-html-unsafe="errorMessageText" class="ng-binding"></span><div class="dismiss"><a ng-click="errorMessageText = null" href="">x</a></div></div>
	<div class="row">
		<div class="span12">
			<div class="player">
				<div class="player-head">

					<h1 class="ng-binding">${video.videoName}</h1>
				</div>
				<div class="player-body">

					<div class="player-content ng-scope" data-ng-controller="classroomPlayer">
						<div class="player-side" data-ng-include="getSidePanelPartialForCurrentMorsel()"><div class="player-side-nav ng-scope">
	<div class="player-side-nav-head">
		<div class="player-side-nav-title ng-binding">
			Introduction<br /> <br />
			${video.description}
		</div>
	</div>
	<div class="player-side-nav-body">

	</div>
	<div class="player-side-nav-foot">
		<div class="player-bottom-buttons">
			<div>
				<!-- Forward and back buttons for standalone videos -->
				<div class="two button-row">
					<button class="btn" ng-hide="morsel.containingExercise" ng-click="goToPreviousMorsel()" style="">Previous</button>
					<button class="btn" ng-hide="morsel.containingExercise" ng-click="goToNextMorsel()" style="">Next</button>
				</div>
				<!-- If this video is part of an exercise, let them skip to to the quiz if they so desire -->
				<button class="btn" ng-show="morsel.key == morsel.containingExercise.lecture_ref.key" ng-click="goToMorsel(morsel.containingExercise.quiz_ref)" style="display: none;">Skip to Quiz</button>
				<button class="btn" ng-show="morsel.key == morsel.containingExercise.answer_ref.key" ng-click="goToMorsel(morsel.containingExercise.quiz_ref)" style="display: none;">Back to Quiz</button>
				<button class="btn btn-primary" ng-show="morsel.key == morsel.containingExercise.answer_ref.key" ng-click="goToNextMorsel()" style="display: none;">Continue</button>
			</div>
		</div>
	</div>
</div>
</div>
						<div class="player-main">
							
							<video id="example_video_1" class="video-js vjs-default-skin"
								controls preload="auto" width="640" height="264""
								data-setup='{"example_option":true}'>
								<source src="..${video.path}" type='video/mp4' />
							</video>
							
							
							
						</div>
					</div>
				</div>
				<!-- Programming Quiz Controls and Output -->
				<div class="programming-quiz-content ng-scope" data-ng-controller="programmingQuizOutputPanel" data-iframe-commander="" data-uy-animated-show="morsel.model == 'ProgrammingQuiz' &amp;&amp; ready &amp;&amp; !congratulatoryMessage" data-slide-down="400" style="display: none;">
					<div class="programming-quiz-side">
						<div class="player-side-nav">
							<!-- <div class="player-side-nav-head"></div> -->
							<div class="player-side-nav-body">
								<div class="player-side-nav-top-link">
								</div>
							</div>
						</div>
					</div>

				</div>
				<!-- End Programming Quiz Controls and Output -->
			</div>
		</div>
	</div>
	

	
	
</div>