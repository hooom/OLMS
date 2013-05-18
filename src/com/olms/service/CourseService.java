package com.olms.service;

import java.util.List;

import com.olms.model.Course;
import com.olms.model.User;

public interface CourseService {
	
	public void add(Course course);
	public void delete(Course course);
	public void update(Course course);
	public List<Course> list();
	public Course getCourseByID(Integer courseID);
	
	public List<Course> list(User user, String level); // list course according to user and level

}
