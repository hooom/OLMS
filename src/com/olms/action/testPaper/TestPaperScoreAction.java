package com.olms.action.testPaper;

import java.util.ArrayList;
import java.util.List;

import com.olms.model.Course;
import com.olms.model.SelectQuestion;
import com.olms.model.TestPaper;
import com.olms.service.CourseService;
import com.olms.service.SelectQuestionService;
import com.olms.service.TestPaperService;
import com.opensymphony.xwork2.ActionSupport;

public class TestPaperScoreAction extends ActionSupport{
	private TestPaperService testPaperService;
	private CourseService courseService;
	private SelectQuestionService selectQuestionService;
	private Integer testPaperID;
	private TestPaper testPaper;
	private List<Course> courses;
	private SelectQuestion q1;
	private SelectQuestion q2;
	private List<SelectQuestion> items;
	private String[] rightAnswers = {SelectQuestion.A, SelectQuestion.B, SelectQuestion.C, SelectQuestion.D};
	private int score;
	@Override
	public String input()
	{
		
		return INPUT;
	}
	
	@Override
	public String execute()
	{
		testPaperService.update(testPaper);
		q1.setTestPaper(testPaper);
		q2.setTestPaper(testPaper);
		selectQuestionService.update(q1);
		selectQuestionService.update(q2);
		
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

	public TestPaper getTestPaper() {
		return testPaper;
	}

	public void setTestPaper(TestPaper testPaper) {
		this.testPaper = testPaper;
	}

	public List<Course> getCourses() {
		return courses;
	}

	public void setCourses(List<Course> courses) {
		this.courses = courses;
	}

	public String[] getRightAnswers() {
		return rightAnswers;
	}

	public void setRightAnswers(String[] rightAnswers) {
		this.rightAnswers = rightAnswers;
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

	public List<SelectQuestion> getItems() {
		return items;
	}

	public void setItems(List<SelectQuestion> items) {
		this.items = items;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}
	
}
