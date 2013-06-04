package com.olms.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.olms.model.Course;
import com.olms.model.TestPaper;

public class TestPaperDaoImpl extends HibernateDaoSupport implements TestPaperDao{

	@Override
	public void add(TestPaper testPaper) {
		getHibernateTemplate().save(testPaper);
	}

	@Override
	public void delete(TestPaper testPaper) {
		getHibernateTemplate().delete(testPaper);
	}

	@Override
	public void update(TestPaper testPaper) {
		getHibernateTemplate().update(testPaper);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<TestPaper> list() {
		return (List<TestPaper>)getHibernateTemplate().find("from TestPaper");
	}

	@Override
	public TestPaper getTestPaperByID(Integer testPaperID) {
		return getHibernateTemplate().get(TestPaper.class, testPaperID);
	}

	@Override
	public List<TestPaper> listByCourse(Course course) {
		// TODO Auto-generated method stub
		System.out.println("course id:" + course.getCourseID());
		return (List<TestPaper>)getHibernateTemplate().find("from TestPaper as tp where tp.course.courseID = ?", course.getCourseID());
	}

}
