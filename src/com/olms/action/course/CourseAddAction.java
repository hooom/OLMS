package com.olms.action.course;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.aspectj.util.FileUtil;

import com.olms.model.Course;
import com.olms.model.User;
import com.olms.model.Video;
import com.olms.service.CourseService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class CourseAddAction extends ActionSupport{
	private CourseService courseService;
	private Course course;
	private List<Course> courses;
	private String[] levels = {Course.BEGINNER, Course.INTERMEDIATE, Course.ADVANCED};
	private File introVideo;
	private String introVideoFileName;
	private File introPicture;
	private String introPictureFileName;
	
	@Override
	public String execute()
	{
		ActionContext context = ActionContext.getContext();
		Map<String, Object> session = context.getSession();
		User user = (User) session.get("user");
		course.setTeacher(user);
		
		String videoPath = saveIntroVideo();
		course.setIntroVideo(videoPath);
		
		String picturePath = saveIntroPicture();
		course.setIntroPicture(picturePath);
		System.out.println("coursename:"+course.getCourseName());
		courseService.add(course);
		courses = courseService.list(user, Course.ALL);
		return SUCCESS;
	}
	
	private String saveIntroVideo()
	{
		String generateIntroVideoFileName = System.currentTimeMillis() +
				introVideoFileName.substring(introVideoFileName.lastIndexOf('.'));
		String upload = ServletActionContext.getServletContext()
				.getRealPath(Course.VIDEO_DIR);
		
		File uploadDir = new File(upload);
		if (!uploadDir.exists())
		{
			uploadDir.mkdir();
		}
		
		File targetFile = new File(upload + "\\"+ generateIntroVideoFileName);
		try {
			FileUtil.copyFile(introVideo, targetFile);
			introVideo.deleteOnExit();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return Course.VIDEO_DIR + generateIntroVideoFileName;
	}
	
	private String saveIntroPicture()
	{
		String fileName = System.currentTimeMillis() +
				introPictureFileName.substring(introPictureFileName.lastIndexOf('.'));
		String upload = ServletActionContext.getServletContext()
				.getRealPath(Course.PICTURE_DIR);
		
		File uploadDir = new File(upload);
		if (!uploadDir.exists())
		{
			uploadDir.mkdir();
		}
		
		File targetFile = new File(upload + "\\" + fileName);
		
		try {
			FileUtil.copyFile(introPicture, targetFile);
			introPicture.deleteOnExit();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return Course.PICTURE_DIR + fileName;
		
	}
	
	@Override
	public String input()
	{
		ActionContext context = ActionContext.getContext();
		Map<String, Object> session = context.getSession();
		User user = (User)session.get("user");
		courses = courseService.list(user, Course.ALL);
		return INPUT;
	}
	
	public String[] getLevels()
	{
		return levels;
	}

	
	public List<Course> getCourses() {
		return courses;
	}

	public void setCourses(List<Course> courses) {
		this.courses = courses;
	}

	public void setLevels(String[] levels) {
		this.levels = levels;
	}

	public CourseService getCourseService() {
		return courseService;
	}

	public void setCourseService(CourseService courseService) {
		this.courseService = courseService;
	}

	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public File getIntroVideo() {
		return introVideo;
	}

	public void setIntroVideo(File introVideo) {
		this.introVideo = introVideo;
	}

	public String getIntroVideoFileName() {
		return introVideoFileName;
	}

	public void setIntroVideoFileName(String introVideoFileName) {
		this.introVideoFileName = introVideoFileName;
	}

	public File getIntroPicture() {
		return introPicture;
	}

	public void setIntroPicture(File introPicture) {
		this.introPicture = introPicture;
	}

	public String getIntroPictureFileName() {
		return introPictureFileName;
	}

	public void setIntroPictureFileName(String introPictureFileName) {
		this.introPictureFileName = introPictureFileName;
	}
	
	public void setIntroVideoContentType(String type)
	{}
	
	public void setIntroPictureContentType(String type)
	{}

}
