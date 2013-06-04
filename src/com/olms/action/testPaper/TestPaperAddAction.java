package com.olms.action.testPaper;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.olms.model.Course;
import com.olms.model.SelectQuestion;
import com.olms.model.TestPaper;
import com.olms.model.User;
import com.olms.service.CourseService;
import com.olms.service.SelectQuestionService;
import com.olms.service.TestPaperService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionContext;

public class TestPaperAddAction extends ActionSupport{

		private CourseService courseService;
		private TestPaperService testPaperService;
		private SelectQuestionService selectQuestionService;
		private TestPaper testPaper;
		private List<TestPaper> testPapers;
		private List<Course> courses;
		private SelectQuestion q1;
		private SelectQuestion q2;
		private String[] rightAnswers = {SelectQuestion.A, SelectQuestion.B, SelectQuestion.C, SelectQuestion.D};
		
		@Override
		public String execute()
		{
			ActionContext context = ActionContext.getContext();
			Map<String, Object> session = context.getSession();
			User user = (User)session.get("user");
			
			//if(user.getRole().equals(User.ADMIN))
			//{
				testPaperService.add(testPaper);
				q1.setTestPaper(testPaper);
				q2.setTestPaper(testPaper);
				selectQuestionService.add(q1);
				selectQuestionService.add(q2);
				
			//}
			
			return SUCCESS;
		}

		
		
		@Override
		public String input()
		{
			ActionContext context = ActionContext.getContext();
			Map<String, Object> session = context.getSession();
			User user = (User)session.get("user");
			
			//testPapers = testPaperService.list(course);
			courses = courseService.list();
			System.out.println("course size:"+courses.size());
			return INPUT;
		}

		public TestPaperService getTestPaperService() {
			return testPaperService;
		}


		public void setTestPaperService(TestPaperService testPaperService) {
			this.testPaperService = testPaperService;
		}


		public TestPaper getTestPaper() {
			return testPaper;
		}


		public void setTestPaper(TestPaper testPaper) {
			this.testPaper = testPaper;
		}



		public List<TestPaper> getTestPapers() {
			return testPapers;
		}



		public void setTestPapers(List<TestPaper> testPapers) {
			this.testPapers = testPapers;
		}


		public List<Course> getCourses() {
			return courses;
		}



		public void setCourses(List<Course> courses) {
			this.courses = courses;
		}



		public CourseService getCourseService() {
			return courseService;
		}



		public void setCourseService(CourseService courseService) {
			this.courseService = courseService;
		}



		public SelectQuestion getQ1() {
			return q1;
		}



		public void setQ1(SelectQuestion q1) {
			this.q1 = q1;
		}



		public SelectQuestionService getSelectQuestionService() {
			return selectQuestionService;
		}



		public void setSelectQuestionService(SelectQuestionService selectQuestionService) {
			this.selectQuestionService = selectQuestionService;
		}



		public SelectQuestion getQ2() {
			return q2;
		}



		public void setQ2(SelectQuestion q2) {
			this.q2 = q2;
		}



		public String[] getRightAnswers() {
			return rightAnswers;
		}



		public void setRightAnswers(String[] rightAnswers) {
			this.rightAnswers = rightAnswers;
		}
		
}
