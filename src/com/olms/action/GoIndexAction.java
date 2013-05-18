package com.olms.action;

import java.util.ArrayList;
import java.util.List;

import com.olms.model.Course;
import com.olms.service.CourseService;
import com.opensymphony.xwork2.ActionSupport;

public class GoIndexAction extends ActionSupport{
	private CourseService courseService;
	private List<Course> beginner;
	private List<Course> intermediate;
	private List<Course> advanced;
	
	@Override
	public String execute()
	{
		List<Course> temp;
		
		temp = new ArrayList<Course>(courseService.list(null, Course.BEGINNER));
		beginner = new ArrayList<Course>();
		for (int i = 0; i < 4 && i < temp.size(); ++i)
		{
			beginner.add(temp.get(i));
		}
		
		temp = new ArrayList<Course>(courseService.list(null, Course.INTERMEDIATE));
		intermediate = new ArrayList<Course>();
		for (int i = 0; i < 4 && i < temp.size(); ++i)
		{
			intermediate.add(temp.get(i));
		}

		temp = new ArrayList<Course>(courseService.list(null, Course.ADVANCED));
		advanced = new ArrayList<Course>();
		for (int i = 0; i < 4 && i < temp.size(); ++i)
		{
			advanced.add(temp.get(i));
		}
		return SUCCESS;
	}

	public CourseService getCourseService() {
		return courseService;
	}

	public void setCourseService(CourseService courseService) {
		this.courseService = courseService;
	}

	public List<Course> getBeginner() {
		return beginner;
	}

	public void setBeginner(List<Course> beginner) {
		this.beginner = beginner;
	}

	public List<Course> getIntermediate() {
		return intermediate;
	}

	public void setIntermediate(List<Course> intermediate) {
		this.intermediate = intermediate;
	}

	public List<Course> getAdvanced() {
		return advanced;
	}

	public void setAdvanced(List<Course> advanced) {
		this.advanced = advanced;
	}
	
	
	

}
