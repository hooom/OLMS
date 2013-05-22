package com.olms.service;

import java.util.List;

import com.olms.model.Course;
import com.olms.model.TestPaper;
import com.olms.model.User;

public interface TestPaperService {
	
	public void add(TestPaper testPaper);
	public void delete(TestPaper testPaper);
	public void update(TestPaper testPaper);
	public List<TestPaper> list();
	public TestPaper getTestPaperByID(Integer testPaperID);
	
	public List<TestPaper> list(Course course); // list testPapers according to course

}
