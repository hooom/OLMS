package com.olms.action.user;

import com.olms.model.User;
import com.olms.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class UserModifyAction extends ActionSupport {	
	private UserService userService;
	private User newuser;
	
	public User getNewuser() {
		return newuser;
	}

	public void setNewuser(User newuser) {
		this.newuser = newuser;
	}

	private String rePassword;
	
	public String execute()
	{
		if (newuser.getPassword().equals(rePassword))
		{
			userService.update(newuser);
		//	System.out.println(user.getUsername());
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



	public String getRePassword() {
		return rePassword;
	}

	public void setRePassword(String rePassword) {
		this.rePassword = rePassword;
	}

	

}
