package com.olms.model;

import java.util.List;
import java.util.Set;

public class User implements StatusAware{
	// status 
	public static final String NORMAL = "normal";
	public static final String NEW = "new";
	public static final String REJECT = "reject";
	
	// role
	public static final String STUDENT = "student";
	public static final String TEACHER = "teacher";
	public static final String ADMIN = "admin";
	
	private Integer userID;
	private String username;
	private String password;
	private String email;
	private String role;
	private Set<Course> courses;
	private Set<CommentItem> comments;
	private String status;
	
	public User()
	{
		username = "";
		password = "";
		email = "";
		role = "";
		status = StatusAware.NEW;
	}
	
	@Override
	public boolean equals(Object o)
	{
		if (o instanceof User)
		{
			return ((User)o).getUserID().equals(userID);
		} else
		{
			return false;
		}
		
	} // end equals()
	
	@Override
	public int hashCode()
	{
		return userID.hashCode();
	}

	public Integer getUserID() {
		return userID;
	}
	public void setUserID(Integer userID) {
		this.userID = userID;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}

	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}

	public Set<Course> getCourses() {
		return courses;
	}

	public void setCourses(Set<Course> courses) {
		this.courses = courses;
	}

	public Set<CommentItem> getComments() {
		return comments;
	}

	public void setComments(Set<CommentItem> comments) {
		this.comments = comments;
	}
	
	
	
	
	

}
