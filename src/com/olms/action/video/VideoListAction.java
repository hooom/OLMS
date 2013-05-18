package com.olms.action.video;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.olms.model.Course;
import com.olms.model.User;
import com.olms.service.CourseService;
import com.olms.service.UserService;
import com.olms.service.VideoService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class VideoListAction extends ActionSupport {
	private VideoService videoService;
	private CourseService courseService;
	private UserService userService;
	private List<Course> courses;
	private Integer courseID;
	
	@Override
	public String execute()
	{
		
		if (courseID != null && courseID != -1)
		{
			courses = new ArrayList<Course>();
			courses.add(courseService.getCourseByID(courseID));
		}
		ActionContext context = ActionContext.getContext();
		Map<String, Object> session = context.getSession();
		User user = (User)session.get("user");
		
		// if the current user is admin, return all courses 
		// if the current user is teacher, return his courses
		if (user.getRole().equals(User.ADMIN))
		{
			courses = courseService.list();
		} else
		{
			courses = new ArrayList<Course>(user.getCourses());
		}
		
		return SUCCESS;
	}
	
	

	public UserService getUserService() {
		return userService;
	}



	public void setUserService(UserService userService) {
		this.userService = userService;
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

	public List<Course> getCourses() {
		return courses;
	}

	public void setCourses(List<Course> courses) {
		this.courses = courses;
	}

	public Integer getCourseID() {
		return courseID;
	}

	public void setCourseID(Integer courseID) {
		this.courseID = courseID;
	}
	
	

}
