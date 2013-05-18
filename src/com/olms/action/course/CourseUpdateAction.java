package com.olms.action.course;

import com.olms.model.Course;
import com.olms.service.CourseService;
import com.opensymphony.xwork2.ActionSupport;

public class CourseUpdateAction extends ActionSupport{
	private CourseService courseService;
	private Course course;
	
	@Override
	public String input()
	{
		course = courseService.getCourseByID(course.getCourseID());
		return INPUT;
	}

	public CourseService getCourseService() {
		return courseService;
	}

	public void setCourseService(CourseService courseService) {
		this.courseService = courseService;
	}

	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}
	
	
}
