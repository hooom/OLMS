package com.olms.dao;

import java.util.List;

import com.olms.model.Course;

public interface CourseDao {
	
	public void add(Course course);
	public void delete(Course course);
	public void update(Course course);
	public List<Course> list();
	public Course getCourseByID(Integer courseID);

}
