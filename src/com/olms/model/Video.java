package com.olms.model;

import java.util.List;
import java.util.Set;

public class Video implements StatusAware {
	public static final String VIDEO_DIR = "/upload/video/";
	private Integer videoID;
	private String videoName;
	private String description;
	private String path;
	private Course course;
	private Set<CommentItem> comments;
	private String status;
	
	public Video()
	{
		videoName = "";
		description = "";
		path = "";
		status = StatusAware.NEW;
	}
	
	@Override
	public boolean equals(Object o)
	{
		if (o instanceof Video)
		{
			return ((Video)o).getVideoID().equals(videoID);
		} else
		{
			return false;
		}
	} // end equals()
	


	public Set<CommentItem> getComments() {
		return comments;
	}



	public void setComments(Set<CommentItem> comments) {
		this.comments = comments;
	}



	public Integer getVideoID() {
		return videoID;
	}
	public void setVideoID(Integer videoID) {
		this.videoID = videoID;
	}
	public String getVideoName() {
		return videoName;
	}
	public void setVideoName(String videoName) {
		this.videoName = videoName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public Course getCourse() {
		return course;
	}
	public void setCourse(Course course) {
		this.course = course;
	}

	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}

	
	

}
