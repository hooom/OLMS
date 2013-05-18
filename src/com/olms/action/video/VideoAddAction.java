package com.olms.action.video;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.aspectj.util.FileUtil;

import com.olms.model.Course;
import com.olms.model.User;
import com.olms.model.Video;
import com.olms.service.CourseService;
import com.olms.service.UserService;
import com.olms.service.VideoService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class VideoAddAction extends ActionSupport{
	private VideoService videoService;
	private CourseService courseService;
	private UserService userService;
	private Video video;
	private Integer courseId;
	private List<Course> courses;
	private File videoFile;
	private String videoFileFileName;
	private String videoFileContentType;
	
	@Override
	public String execute()
	{
		Course c = courseService.getCourseByID(video.getCourse().getCourseID());
		video.setCourse(c);
		
		String fileName = System.currentTimeMillis() +
				videoFileFileName.substring(videoFileFileName.lastIndexOf('.'));
		String upload = ServletActionContext.getServletContext()
				.getRealPath(Video.VIDEO_DIR);
		
		File uploadDir = new File(upload);
		if (!uploadDir.exists())
		{
			uploadDir.mkdir();
		}
		
		File targetFile = new File(upload + "\\" + fileName);
		try {
			FileUtil.copyFile(videoFile, targetFile);
			videoFile.deleteOnExit();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		video.setPath(Video.VIDEO_DIR + fileName);
		videoService.add(video);
		
		
		
		return SUCCESS;
	}
	
	@Override
	public String input()
	{
		ActionContext context = ActionContext.getContext();
		Map<String, Object> session = context.getSession();
		User teacher = (User)session.get("user");
		teacher = userService.get(teacher.getUserID());
		session.put("user", teacher);
		courses = new ArrayList<Course>(teacher.getCourses());
		return INPUT;
	}

	
	
	public CourseService getCourseService() {
		return courseService;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public void setCourseService(CourseService courseService) {
		this.courseService = courseService;
	}



	public Integer getCourseId() {
		return courseId;
	}



	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}






	public List<Course> getCourses() {
		return courses;
	}

	public void setCourses(List<Course> courses) {
		this.courses = courses;
	}

	public VideoService getVideoService() {
		return videoService;
	}

	public void setVideoService(VideoService videoService) {
		this.videoService = videoService;
	}

	public Video getVideo() {
		return video;
	}

	public void setVideo(Video video) {
		this.video = video;
	}

	public File getVideoFile() {
		return videoFile;
	}

	public void setVideoFile(File videoFile) {
		this.videoFile = videoFile;
	}

	public String getVideoFileFileName() {
		return videoFileFileName;
	}

	public void setVideoFileFileName(String videoFileFileName) {
		this.videoFileFileName = videoFileFileName;
	}

	public String getVideoFileContentType() {
		return videoFileContentType;
	}

	public void setVideoFileContentType(String videoFileContentType) {
		this.videoFileContentType = videoFileContentType;
	}
	
	
	
	

}
