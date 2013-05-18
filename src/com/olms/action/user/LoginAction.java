package com.olms.action.user;

import java.util.Map;

import com.olms.model.User;
import com.olms.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport{
	private UserService userService;
	private User user;
	
	@Override
	public String execute()
	{
		User loginer = userService.login(user);
		if (loginer != null)
		{
			ActionContext context = ActionContext.getContext();
			Map<String, Object> session = context.getSession();
			session.put("user", loginer);
			if (loginer.getRole().equals(User.STUDENT))
			{
				return User.STUDENT;
			}
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
	
	
}
