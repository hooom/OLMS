package com.olms.service;

import java.util.List;

import com.olms.model.SelectQuestion;

public interface SelectQuestionService {
	
	public void add(SelectQuestion selectQuestion);
	public void delete(SelectQuestion selectQuestion);
	public void update(SelectQuestion selectQuestion);
	public List<SelectQuestion> list();
	public SelectQuestion getSelectQuestionByID(Integer selectQuestionID);

}
