package com.olms.action.testPaper;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.olms.model.Course;
import com.olms.model.SelectQuestion;
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
	private List<TestPaper> testPapersByCourse;
	private Course course;
	private Integer courseID;
	private Integer testPaperID;
	private TestPaper testPaper;
	private SelectQuestion q1;
	private SelectQuestion q2;
	private int score;
	private String[] selectAnswers = {SelectQuestion.A, SelectQuestion.B, SelectQuestion.C, SelectQuestion.D};
	// list courses according to current logined user
	@Override
	public String execute()
	{
		testPapers = testPaperService.list();
		ActionContext context = ActionContext.getContext();
		Map<String, Object> session = context.getSession();
		User user = (User)session.get("user");
		testPapers = testPaperService.list();
		System.out.println("testpaper size:"+ testPapers.size());
		return SUCCESS;
	}
	
	public String input()
	{
		course = courseService.getCourseByID(courseID);
		testPapersByCourse = testPaperService.listByCourse(course);
		System.out.println("testPapersByCourse.size:"+testPapersByCourse.size());
		return INPUT;
	}
	
	public String exam()
	{
		
		testPaper = testPaperService.getTestPaperByID(testPaperID);
		List<SelectQuestion> qs = new ArrayList<SelectQuestion>(testPaper.getItems());
		q1 = qs.get(0);
		q2 = qs.get(1);
		System.out.println("q1.rightanswer:"+q1.getRightAnswer());
		System.out.println("q2.rightanswer:"+q2.getRightAnswer());
		return "exam";
	}
	
	public String score()
	{
		
		score = 0;
		System.out.println("q1.getUserAnswer():"+q1.getUserAnswer());
		System.out.println("q2.getUserAnswer():"+q2.getUserAnswer());
		
		System.out.println("q1.getRightAnswer():"+q1.getRightAnswer());
		System.out.println("q2.getRightAnswer():"+q2.getRightAnswer());
		if(q1.getRightAnswer().equals(q1.getUserAnswer()))
		{
			score += 20;
		}
		if(q2.getRightAnswer().equals(q2.getUserAnswer()))
		{
			score += 20;
		}
		return "score";
	}
	
	// query all course. independent with current user
	public String query()
	{
		
		testPapers = testPaperService.listByCourse(course);

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

	public Integer getCourseID() {
		return courseID;
	}

	public void setCourseID(Integer courseID) {
		this.courseID = courseID;
	}

	public List<TestPaper> getTestPapersByCourse() {
		return testPapersByCourse;
	}

	public void setTestPapersByCourse(List<TestPaper> testPapersByCourse) {
		this.testPapersByCourse = testPapersByCourse;
	}

	public Integer getTestPaperID() {
		return testPaperID;
	}

	public void setTestPaperID(Integer testPaperID) {
		this.testPaperID = testPaperID;
	}

	public TestPaper getTestPaper() {
		return testPaper;
	}

	public void setTestPaper(TestPaper testPaper) {
		this.testPaper = testPaper;
	}

	public String[] getSelectAnswers() {
		return selectAnswers;
	}

	public void setSelectAnswers(String[] selectAnswers) {
		this.selectAnswers = selectAnswers;
	}

	public SelectQuestion getQ1() {
		return q1;
	}

	public void setQ1(SelectQuestion q1) {
		this.q1 = q1;
	}

	public SelectQuestion getQ2() {
		return q2;
	}

	public void setQ2(SelectQuestion q2) {
		this.q2 = q2;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}
	
}
