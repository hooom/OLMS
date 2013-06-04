package com.olms.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.olms.model.SelectQuestion;
import com.olms.model.TestPaper;

public class SelectQuestionDaoImpl extends HibernateDaoSupport implements SelectQuestionDao {

	@Override
	public void add(SelectQuestion selectQuestion) {
		getHibernateTemplate().save(selectQuestion);
	}

	@Override
	public void delete(SelectQuestion selectQuestion) {
		getHibernateTemplate().delete(selectQuestion);
	}

	@Override
	public void update(SelectQuestion selectQuestion) {
		getHibernateTemplate().update(selectQuestion);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<SelectQuestion> list() {
		return (List<SelectQuestion>)getHibernateTemplate().find("from SelectQuestion");
	}

	@Override
	public SelectQuestion getSelectQuestionByID(Integer selectQuestionID) {
		return getHibernateTemplate().get(SelectQuestion.class, selectQuestionID);
	}

	@Override
	public List<SelectQuestion> listByTestPaperID(Integer testPaperID) {
		// TODO Auto-generated method stub
		return (List<SelectQuestion>) getHibernateTemplate().get(TestPaper.class, testPaperID);
	}

}
