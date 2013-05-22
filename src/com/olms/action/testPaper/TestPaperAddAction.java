package com.olms.action.testPaper;

import java.util.List;
import java.util.Map;

import com.olms.model.Course;
import com.olms.model.TestPaper;
import com.olms.model.User;
import com.olms.service.CourseService;
import com.olms.service.TestPaperService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionContext;

public class TestPaperAddAction extends ActionSupport{

		private CourseService courseService;
		private TestPaperService testPaperService;
		private TestPaper testPaper;
		private List<TestPaper> testPapers;
		private List<Course> courses;
		
		@Override
		public String execute()
		{
			ActionContext context = ActionContext.getContext();
			Map<String, Object> session = context.getSession();
			User user = (User)session.get("user");
			
			//if(user.getRole().equals(User.ADMIN))
			//{
				Course course = courseService.getCourseByID(testPaper.getCourse().getCourseID());
				testPaper.setCourse(course);
				System.out.println("testPaperName:"+testPaper.getTestPaperName());
				System.out.println("courseid:"+testPaper.getCourse());
				testPaperService.add(testPaper);
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
		
		
}
