package com.olms.action.user;

import java.util.Map;

import javax.servlet.http.HttpSession;

import com.olms.model.User;
import com.olms.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserModifyBeforeAction extends ActionSupport {
	private UserService userService;
	private Integer userID;
	private User user;
	
	public String execute()
	{
		  setUser(userService.get(userID));
		 
		  ActionContext actionContext = ActionContext.getContext();
	        Map session = actionContext.getSession();
	        session.put("modifyuser", getUser());
		//  userService.update(user);
		return SUCCESS;
	}
	
	
	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public Integer getUserID() {
		return userID;
	}

	public void setUserID(Integer userID) {
		this.userID = userID;
	}


	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}
}
