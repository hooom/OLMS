package com.olms.action.testPaper;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.olms.model.Course;
import com.olms.model.TestPaper;
import com.olms.model.User;
import com.olms.service.CourseService;
import com.olms.service.SelectQuestionService;
import com.olms.service.TestPaperService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class TestPaperDeleteAction extends ActionSupport{
	private CourseService courseService;
	private TestPaperService testPaperService;
	private SelectQuestionService selectQuestionService;
	private Integer testPaperID;
	// list courses according to current logined user
	@Override
	public String execute()
	{
		TestPaper testPaper = testPaperService.getTestPaperByID(testPaperID);
		testPaperService.delete(testPaper);
		return SUCCESS;
	}
	
	// query all course. independent with current user
	public String query()
	{
		
		//testPapers = testPaperService.list(course);

		return SUCCESS;
	}

	public TestPaperService getTestPaperService() {
		return testPaperService;
	}

	public void setTestPaperService(TestPaperService testPaperService) {
		this.testPaperService = testPaperService;
	}

	
	public CourseService getCourseService() {
		return courseService;
	}

	public void setCourseService(CourseService courseService) {
		this.courseService = courseService;
	}

	public SelectQuestionService getSelectQuestionService() {
		return selectQuestionService;
	}

	public void setSelectQuestionService(SelectQuestionService selectQuestionService) {
		this.selectQuestionService = selectQuestionService;
	}

	public Integer getTestPaperID() {
		return testPaperID;
	}

	public void setTestPaperID(Integer testPaperID) {
		this.testPaperID = testPaperID;
	}
}
