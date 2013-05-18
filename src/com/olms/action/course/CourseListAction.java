package com.olms.action.course;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.olms.model.Course;
import com.olms.model.User;
import com.olms.service.CourseService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class CourseListAction extends ActionSupport{
	private CourseService courseService;
	private List<Course> courses;
	private String level;

	// list courses according to current logined user
	@Override
	public String execute()
	{
		List<Course> temp = courseService.list();
		ActionContext context = ActionContext.getContext();
		Map<String, Object> session = context.getSession();
		User user = (User)session.get("user");
		
		if (!user.getRole().equals(User.ADMIN))
		{
			temp = new ArrayList<Course>(user.getCourses());
		}
		
		
		if (!level.equals(Course.ALL))
		{
			courses = new ArrayList<Course>();
			for (Course c: temp)
			{
				if (c.getLevel().equals(level))
				{
					courses.add(c);
				}
			}
		} else
		{
			courses = temp;
		}

		return SUCCESS;
	}
	
	// query all course. independent with current user
	public String query()
	{
		
		List<Course> temp = courseService.list();
		
		if (!level.equals(Course.ALL))
		{
			courses = new ArrayList<Course>();
			for (Course c: temp)
			{
				if (c.getLevel().equals(level))
				{
					courses.add(c);
				}
			}
		} else
		{
			courses = temp;
		}

		return SUCCESS;
	}
	

	public String getLevel() {
		return level;
	}



	public void setLevel(String level) {
		this.level = level;
	}



	public CourseService getCourseService() {
		return courseService;
	}



	public void setCourseService(CourseService courseService) {
		this.courseService = courseService;
	}



	public List<Course> getCourses() {
		return courses;
	}

	public void setCourses(List<Course> courses) {
		this.courses = courses;
	}
	
	

}
