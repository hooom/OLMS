package com.olms.model;

import java.util.Set;

public class Course implements StatusAware{
	public static final String ALL = "all";
	public static final String BEGINNER = "beginner";
	public static final String INTERMEDIATE = "intermediate";
	public static final String ADVANCED = "advanced";
	
	public static final String VIDEO_DIR = "/upload/video/";
	public static final String PICTURE_DIR = "/upload/image/";
	
	private Integer courseID;
	private User teacher;
	private String courseName;
	private String requireKnowledge;
	private String gain;
	private String introVideo;
	private String introPicture;
	private String description;
	private String level;
	private Set<TestPaper> testPapers;
	private Set<Video> videos;
	private String status;
	
	public Course()
	{
		courseName = "";
		requireKnowledge = "";
		gain = "";
		introVideo = "";
		introPicture = "";
		description = "";
		level = "";
		status = Course.NEW;
	}
	
	@Override
	public boolean equals(Object o)
	{
		if (o instanceof Course)
		{
			return ((Course)o).getCourseID().equals(courseID);
		} else
		{
			return false;
		}
	} // end equals
	
	@Override
	public int hashCode()
	{
		return courseID.hashCode();
	} // end hashCode()
	
	
	public Integer getCourseID() {
		return courseID;
	}
	public void setCourseID(Integer courseID) {
		this.courseID = courseID;
	}
	public User getTeacher() {
		return teacher;
	}
	public void setTeacher(User teacher) {
		this.teacher = teacher;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}


	public Set<TestPaper> getTestPapers() {
		return testPapers;
	}

	public void setTestPapers(Set<TestPaper> testPapers) {
		this.testPapers = testPapers;
	}

	public Set<Video> getVideos() {
		return videos;
	}

	public void setVideos(Set<Video> videos) {
		this.videos = videos;
	}

	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}

	public String getRequireKnowledge() {
		return requireKnowledge;
	}

	public void setRequireKnowledge(String requireKnowledge) {
		this.requireKnowledge = requireKnowledge;
	}

	public String getGain() {
		return gain;
	}

	public void setGain(String gain) {
		this.gain = gain;
	}

	public String getIntroVideo() {
		return introVideo;
	}

	public void setIntroVideo(String introVideo) {
		this.introVideo = introVideo;
	}

	public String getIntroPicture() {
		return introPicture;
	}

	public void setIntroPicture(String introPicture) {
		this.introPicture = introPicture;
	}

	
	


}
