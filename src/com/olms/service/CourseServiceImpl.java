package com.olms.service;

import java.util.ArrayList;
import java.util.List;

import com.olms.dao.CourseDao;
import com.olms.model.Course;
import com.olms.model.User;

public class CourseServiceImpl implements CourseService {
	private CourseDao courseDao;

	@Override
	public List<Course> list(User user, String level) {
		List<Course> result = new ArrayList<Course>();
		List<Course> temp = null;
		
		if (user == null || user.getRole().equals(User.ADMIN))
		{
			temp = courseDao.list();
		} else 
		{
			new ArrayList<Course>(user.getCourses());
		}
				
		
		if (!level.equals(Course.ALL))
		{
			for (Course c: temp)
			{
				if (c.getLevel().equals(level))
				{
					result.add(c);
				}
			}
		} else
		{
			result = temp;
		}
		
		return result;
	}

	@Override
	public void add(Course course) {
		courseDao.add(course);
	}

	@Override
	public void delete(Course course) {
		courseDao.delete(course);
	}

	@Override
	public void update(Course course) {
		courseDao.update(course);
	}

	@Override
	public List<Course> list() {
		return courseDao.list();
	}

	@Override
	public Course getCourseByID(Integer courseID) {
		return courseDao.getCourseByID(courseID);
	}

	public CourseDao getCourseDao() {
		return courseDao;
	}

	public void setCourseDao(CourseDao courseDao) {
		this.courseDao = courseDao;
	}

	
	
}
