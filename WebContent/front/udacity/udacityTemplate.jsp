<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>


<!DOCTYPE html>
<!--[if lte IE 8]><html class="ie8" data-ng-app="udacity"><![endif]-->
<!--[if IE]><![if gt IE 8]><![endif]-->
<html data-ng-app="udacity">
<!--[if IE]><![endif]><![endif]-->

<head>
	<s:head />
	<title>Advance Your Education With Free College Courses Online - Udacity</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<meta name="description" content="Discover free online classes from top instructors and industry experts. Take courses at your own pace. See what we have to offer.">
 
	<link href="../front/udacity/resource/css/video-js.css" rel="stylesheet">
	<script src="../front/udacity/resource/js/video.js"></script>
	<script>
 		 videojs.options.flash.swf = "../front/udacity/resource/swf/video-js.swf"
	</script>

	<link rel="stylesheet" href="../front/udacity/resource/css/homepage.css" type="text/css">
	<link rel="stylesheet" href="../front/udacity/resource/css/udacity.css" type="text/css"></link>
	
	<script type="text/javascript" charset="utf-8">
		if (!window.console) {
			window.console = {};
		}
		if (!window.console.log) {
			window.console.log = function () {};
		}
		if (!window.console.error) {
			window.console.error = function () {};
		}
		if (!window.console.warn) {
			window.console.warn = function () {};
		}
	</script>

	<script type="text/javascript">
		var account = {"first_name": null, "last_name": null, "_registered": false, "email": null, "key": "169468766", "_image_url": "//robohash.org/udacity-169468766.png", "nickname": "", "_enrollments": [], "site_preferences": null};

		// for Google analytics
		var _gaq = _gaq || [];
		_gaq.push(['_setAccount', 'UA-28524234-1']);
		_gaq.push(['_setCustomVar', 1, 'isUdacityRegistered', account._registered ? 'Yes' : 'No', 1]);
		_gaq.push(['_trackPageview', location.pathname + location.search + location.hash]);
		(function() {
		  var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		  ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		  var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
		})();
	</script>

	
<style type="text/css">

/* Header overwrites */
@media (min-width: 1010px) {
	.container, .navbar-fixed-top .container  {
		width: 1008px;
		min-height: 39px;
	}
	.span6 {
		width: 478px;
		margin-left: 30px;
	}
	.span2 {
		width: 127px;
		margin-left: 30px;
	}
	.row {
		margin-left: -30px;
	}
}
@media (max-width: 1009px) {
	.container, .navbar-fixed-top .container  {
		width: 750px;
		min-width: 750px;
	}
	.span6 {
		width: 352px;
		margin-left: 20px;
		float: left;
	}
	.span2 {
		width: 104px;
		margin-left: 20px;
		float: left;
	}
	.row {
		margin-left: -20px;
	}
	#footer-push, #footer {
		text-align: inherit;
	}
	.navbar-fixed-top, .navbar-fixed-bottom {
		position: fixed;
	}
	.navbar-fixed-top .navbar-inner, .navbar-fixed-bottom .navbar-inner {
		padding: 0px;
	}
	.navbar-fixed-top, .navbar-fixed-bottom, .navbar-static-top {
		margin-left: 0px;
		margin-right: 0px;
	}
	body {
		padding-left: 0px;
		padding-right: 0px;
	}
}
#page-content{
	margin-top: 50px;
}


/* to fade in logo */
#header-logo {
	display: none;
}


/* IE8 fixes */
.ie8 .homepage-header-text-container {
	width: 524px;
}
.ie8 .featured-classes li {
	display: inline-block;
}
.ie8 .course-title {
	text-align: center;
}
.ie8 .course-level-header {
	clear: both;
	height: 32px;
	margin: 0 auto;
	position: relative;
	width: 100%;
}
.ie8 .course-level-header h2 {
	background: #f5f5f5;
	font-size: 16px;
	font-weight: normal;
	left: 0px;
	padding-left: 30px;
	padding-right: 8px;
	position: absolute;
	top: 4px;
	z-index: 90;
}
.ie8 .course-level-header-link {
	background: #f5f5f5;
	display: inline-block;
	margin-top: 11px;
	padding-left: 7px;
	padding-right: 30px;
	position: absolute;
	right: 0;
	top: 0;
	z-index: 90;
}
.ie8 .course-level-header-hr {
	background-color: rgb(194, 194, 194);
	float: left;
	height: 1px;
	position: absolute;
	top: 21px;
	width: 100%;
}

</style>

</head>

<body>
	
	<div id="page-content">
	
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner" >
			<div style="float:right;margin-right:30px;">
				<s:if test="#session.user == null">
				
					<s:url action="goLogin" namespace="admin" var="goLoginLink" />
					<a href="../${goLoginLink}"style="color:#fff;padding:10;">登陆</a> 
				
					<s:url action="goRegister" namespace="front" var="goRegisterLink" />
					| <a href="../${goRegisterLink}" style="color:#fff;">注册</a>
				
				</s:if>
				<s:else>
				
					<s:url action="studentCourseList" namespace="front" var="studentCourseListLink">
						<s:param name="level">all</s:param>
					</s:url>
					<a href="../${studentCourseListLink}"style="color:#fff;padding:10;">我的课程</a> 
				
					<s:url action="userUpdateInput" namespace="front" var="userUpdateInputLink">
						<s:param name="user.userID"><s:property value="#session.user.userID"/></s:param>
					</s:url>
					| <a href="../${userUpdateInputLink}" style="color:#fff;"><s:property value="#session.user.username"/></a>
					
					<s:url action="logout" namespace="front" var="logoutLink" />
					| <a href="../${logoutLink}" style="color:#fff;">注销</a>
				</s:else>
				
			</div>
			
		</div>
	</div>
	
	<s:debug />

	
	<tiles:insertAttribute name="container" ignore="true" />
	
	

	<div id="footer-push"></div>
</div>

<div id="footer" class="container u_footer">
	<div class="row">
		<div class="span6">
			联系我们
			<a href="http://www.bupt.edu.cn">北邮</a><br>
			&copy; 2013 北京邮电大学软件学院.
		</div>
		<div class="span2">
			<h6 class="footer-h">帮助信息</h6>
			<a href="/how-it-works" id="how-it-works-footer-link">How It Works</a>
			<br/>
			<a href="/faq">Help and FAQ</a>
			<br/>
			<a href="/feedback/signup">Feedback Program</a>
		</div>
		<div class="span2">
			<h6 class="footer-h">社区</h6>
			<a href="http://blog.udacity.com">博客</a>
			<br/>
			<a href="http://www.meetup.com/Udacity/">Meetups</a>
			<br/>
			<a href="/press">新闻</a>
		</div>
		<div class="span2">
			<h6 class="footer-h">在线学习网</h6>
			<a href="/us">关于我们</a>
			<br/>
			<a href="/jobs">招聘</a>
			<br/>
			<a href="/contact">联系我们</a>
			<br/>
			<a href="/legal/tos">法律声明</a>
		</div>
	</div>
</div>


	
	<script src="../front/udacity/resource/js/homepage_libs.min.js?631ab8473a403dfef363b9b6f7c9e853" type="text/javascript" charset="utf-8"></script>
	<script src="../front/udacity/resource/js/homepage_libs.min.js?631ab8473a403dfef363b9b6f7c9e853" type="text/javascript" charset="utf-8"></script>

	
<script type="text/javascript">
	// blend in udacity navbar logo when scrolling down
	$(document).scroll(function(e) {
		var SCROLL_START = 189,
			SCROLL_END = 258,
			scrollTop = $(this).scrollTop();
	    if (scrollTop > SCROLL_END) {
	    	$("#header-logo").show();
	    	$("#header-logo").css('opacity', 1);
	    } else if (scrollTop > SCROLL_START) {
	    	$("#header-logo").show();
	    	$("#header-logo").css('opacity', (scrollTop - SCROLL_START)/(SCROLL_END-SCROLL_START));
	    } else {
	    	$("#header-logo").hide();
	    }
	});

	// fetch 5 latest blog posts and load into page
	angular.module('udacity').controller('BlogPosts', ['$scope', 'blogFeed', 
			function ($scope, blogFeed) {
		$scope.blogPosts = blogFeed.posts;
	}]);

	// Rotating Testimonials
	(function () {
		var testimonials = [
			{
				text: 'Udacity has completely changed my life ... Without the knowledge (and passion!!) I gained from Udacity ... there is absolutely no chance that I would be where I am today [as student and founder of a new company]',
				name: 'Hayden L.'
			},
			{
				text: 'I love that it\'s very engaging. The videos are very short and there\'s a lot of interaction ... constant quizzes and feedback.',
				name: 'Marina S.'
			},
			{
				text: 'Truly one of the best educational experiences of my life. If the teaching style, thoroughness, and general support of this course are any indication of the experiences in courses to come, I think you\'re onto something world-changing.',
				name: 'Travis L.'
			},
			{
				text: 'Recently I got a job in a web-development company and it was all because of Udacity\'s CS253.',
				name: 'Tejas B.'
			},
			{
				text: 'What I really liked was the pacing. You\'re not watching a lecture where you have to follow along at the professor\'s pace. You\'re free to rewatch, rewind ... and narrowly spaced exercises keep you engaged.',
				name: 'Tamir D.'
			},
			{
				text: 'You do an amazing job of combining world class content with helpful pedagogy.',
				name: 'Roland G.'
			},
			{
				text: 'I love that I can sit down in front of my computer and learn about the world in context',
				name: 'Greg C.'
			},
			{
				text: 'This is like a dream come true!!! I feel like when I first learned that 2 + 2 = 4 and a whole new world of math, learning, and possibilities beyond my imagination opened up.',
				name: 'Johanna G.'
			},
			{
				text: 'I really like the approach of Udacity where you are shown a concept then asked to implement it. This helps to solidify things for me.',
				name: 'Stacy O.'
			},
			{
				text: 'There is strong community in the forums so you\'re not embarrassed to ask questions; as opposed to in class when professors are not responsive, you don\'t get a chance to ask.',
				name: 'Moon L.'
			}
		];

		var index = 0,
			number = testimonials.length,
			$container = $("#testimonial-text-container"),
			$text = $("#testimonial-text"),
			$name = $("#testimonial-name");

		var rotateTestimonial = function () {
			var newTestimonial = testimonials[index];
			$container.fadeOut(function () {
				$text.text(newTestimonial.text);
				$name.text(newTestimonial.name);
				$container.fadeIn();
			});
			index = (index + 1) % number;
		};
		rotateTestimonial();

		// Replace testimonials every 8secs
		setInterval(rotateTestimonial, 8000);
	})();

	// Lazy load
	$(window).load(function (){
		setTimeout(function (){
			$('<iframe />', {
				style: 'positon: absolute; left: 0; bottom: 0; width: 1px; height: 1px; display: hidden;',
				src: '/home_page_prefetch_frame'
			}).appendTo('body');
		}, 1000);
	});
</script>

	<script type="text/javascript">
		angular.module('meta.configuration').constant('cacheVersion', '631ab8473a403dfef363b9b6f7c9e853');
		angular.module('meta.configuration').constant('canEatDogFood',
			false);
		angular.module('services.user').constant('basicUser', {"first_name": null, "last_name": null, "_registered": false, "email": null, "key": "169468766", "_image_url": "//robohash.org/udacity-169468766.png", "nickname": "", "_enrollments": [], "site_preferences": null});
		angular.module('udacity.core').run(function(){
			// TODO (Jacques): Replace with directive on bootstrap elements
			setTimeout(function(){
				if ($("[rel=tooltip]").length) {$("[rel=tooltip]").tooltip();}
			}, 1000);
		});
	</script>
<div class="wtf-is-wrong-with-google-remarketing">
	<script type="text/javascript">
	/* <![CDATA[ */
	var google_conversion_id = 967079204;
	var google_conversion_label = "JSWsCKSChgUQpOqRzQM";
	var google_custom_params = window.google_tag_params;
	var google_remarketing_only = true;
	/* ]]> */
	</script>
	<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
	</script>
	<noscript>
	<div style="display:inline;">
	<img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/967079204/?value=0&amp;label=JSWsCKSChgUQpOqRzQM&amp;guid=ON&amp;script=0"/>
	</div>
	</noscript>
</div>
</body>
</html>
