package com.olms.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.olms.model.Course;

public class CourseDaoImpl extends HibernateDaoSupport implements CourseDao {

	@Override
	public void add(Course course) {
		getHibernateTemplate().save(course);
	}

	@Override
	public void delete(Course course) {
		getHibernateTemplate().delete(course);
	}

	@Override
	public void update(Course course) {
		getHibernateTemplate().update(course);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Course> list() {
		return (List<Course>)getHibernateTemplate().find("from Course");
	}

	@Override
	public Course getCourseByID(Integer courseID) {
		return getHibernateTemplate().get(Course.class, courseID);
	}

}
