package com.olms.action.user;

import java.util.Map;

import com.olms.model.User;
import com.olms.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserDeleteAction extends ActionSupport {
	private UserService userService;
	private Integer userID;
	
	
	public String execute()
	{
		// user=userService.get();
		 userService.delete(userID);
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
}
