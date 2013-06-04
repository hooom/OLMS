package com.olms.service;

import java.util.List;

import com.olms.dao.SelectQuestionDao;
import com.olms.model.SelectQuestion;

public class SelectQuestionServiceImpl implements SelectQuestionService {
	private SelectQuestionDao selectQuestionDao;
	
	@Override
	public void add(SelectQuestion selectQuestion) {
		selectQuestionDao.add(selectQuestion);
	}

	@Override
	public void delete(SelectQuestion selectQuestion) {
		selectQuestionDao.delete(selectQuestion);
	}

	@Override
	public void update(SelectQuestion selectQuestion) {
		selectQuestionDao.update(selectQuestion);
	}

	@Override
	public List<SelectQuestion> list() 
	{
		return selectQuestionDao.list();
	}

	@Override
	public SelectQuestion getSelectQuestionByID(Integer selectQuestionID) {
		return selectQuestionDao.getSelectQuestionByID(selectQuestionID);
	}

	public SelectQuestionDao getSelectQuestionDao() {
		return selectQuestionDao;
	}

	public void setSelectQuestionDao(SelectQuestionDao selectQuestionDao) {
		this.selectQuestionDao = selectQuestionDao;
	}

	public List<SelectQuestion> listByTestPaperID(Integer testPaperID){
		return selectQuestionDao.listByTestPaperID(testPaperID);
		
	}
	
}
