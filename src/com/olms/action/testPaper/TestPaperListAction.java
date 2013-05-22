package com.olms.action.testPaper;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.olms.model.Course;
import com.olms.model.TestPaper;
import com.olms.model.User;
import com.olms.service.CourseService;
import com.olms.service.TestPaperService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class TestPaperListAction extends ActionSupport{
	private CourseService courseService;
	private TestPaperService testPaperService;
	private List<TestPaper> testPapers;
	private Course course;
	// list courses according to current logined user
	@Override
	public String execute()
	{
		testPapers = testPaperService.list();
		ActionContext context = ActionContext.getContext();
		Map<String, Object> session = context.getSession();
		User user = (User)session.get("user");
		if(testPapers == null)
		{
			testPapers = new ArrayList<TestPaper>();
		}

		return SUCCESS;
	}
	
	// query all course. independent with current user
	public String query()
	{
		
		testPapers = testPaperService.list(course);

		return SUCCESS;
	}

	public TestPaperService getTestPaperService() {
		return testPaperService;
	}

	public void setTestPaperService(TestPaperService testPaperService) {
		this.testPaperService = testPaperService;
	}

	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public void setTestPapers(List<TestPaper> testPapers) {
		this.testPapers = testPapers;
	}

	public CourseService getCourseService() {
		return courseService;
	}

	public void setCourseService(CourseService courseService) {
		this.courseService = courseService;
	}

	public List<TestPaper> getTestPapers() {
		return testPapers;
	}
	
}
