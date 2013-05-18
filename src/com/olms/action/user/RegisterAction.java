package com.olms.action.user;

import com.olms.model.User;
import com.olms.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport{
	private UserService userService;
	private User user;
	private String rePassword;
	
	public String execute()
	{
		if (user.getPassword().equals(rePassword))
		{
			userService.add(user);
			return SUCCESS;			
		} else
		{
			return INPUT;
		}

	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getRePassword() {
		return rePassword;
	}

	public void setRePassword(String rePassword) {
		this.rePassword = rePassword;
	}

	
	
}
