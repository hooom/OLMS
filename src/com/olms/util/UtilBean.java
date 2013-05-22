package com.olms.util;

import java.util.ArrayList;
import java.util.List;

import com.olms.service.CourseService;
import com.olms.model.Course;

public class UtilBean {
	private CourseService courseService;
	private List<Course> courses = new ArrayList<Course>();
	
	public List<Course> getCourses()
	{
		List<Course> courses = this.courseService.list();
		return courses;
	}
	
	public void setCourses(List<Course> courses)
	{
		this.courses = courses;
	}

}
