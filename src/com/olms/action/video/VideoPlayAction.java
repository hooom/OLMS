package com.olms.action.video;

import java.util.ArrayList;
import java.util.List;

import com.olms.model.Course;
import com.olms.model.Video;
import com.olms.service.CourseService;
import com.olms.service.VideoService;
import com.opensymphony.xwork2.ActionSupport;

public class VideoPlayAction extends ActionSupport{
	private VideoService videoService;
	private CourseService courseService;
	private Video video;
	private Course course;
	private List<Video> videos ;
	
	@Override
	public String input()
	{
		video = videoService.getVideoByID(video.getVideoID());
		course = courseService.getCourseByID(video.getCourse().getCourseID());
		videos = new ArrayList<Video>(course.getVideos());
		return INPUT;
	}
	
	

	public List<Video> getVideos() {
		return videos;
	}



	public void setVideos(List<Video> videos) {
		this.videos = videos;
	}



	public VideoService getVideoService() {
		return videoService;
	}

	public void setVideoService(VideoService videoService) {
		this.videoService = videoService;
	}

	public CourseService getCourseService() {
		return courseService;
	}

	public void setCourseService(CourseService courseService) {
		this.courseService = courseService;
	}

	public Video getVideo() {
		return video;
	}

	public void setVideo(Video video) {
		this.video = video;
	}

	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}
	
	

}
