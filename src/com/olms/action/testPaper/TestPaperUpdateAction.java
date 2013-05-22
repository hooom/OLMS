package com.olms.action.testPaper;

import com.olms.service.CourseService;
import com.olms.service.TestPaperService;
import com.opensymphony.xwork2.ActionSupport;

public class TestPaperUpdateAction extends ActionSupport{
	private TestPaperService testPaperService;
	private CourseService courseService;
	
	@Override
	public String execute()
	{
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
	

}
