package com.olms.dao;

import java.util.List;

import com.olms.model.SelectQuestion;

public interface SelectQuestionDao {
	
	public void add(SelectQuestion selectQuestion);
	public void delete(SelectQuestion selectQuestion);
	public void update(SelectQuestion selectQuestion);
	public List<SelectQuestion> list();
	public SelectQuestion getSelectQuestionByID(Integer selectQuestionID);

}
