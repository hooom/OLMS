package com.olms.action.user;

import com.olms.model.User;
import com.olms.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class UserApproveAction extends ActionSupport{
	private UserService userService;
	private Integer userID;
	
	@Override
	public String execute()
	{
		User user = userService.get(userID);
		user.setStatus(User.NORMAL);
		userService.update(user);
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
