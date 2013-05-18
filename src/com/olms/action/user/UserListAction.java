package com.olms.action.user;

import java.util.List;

import com.olms.model.User;
import com.olms.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class UserListAction extends ActionSupport{
	private UserService userService;
	private List<User> users;
	
	@Override
	public String execute()
	{
		users = userService.list();
		return SUCCESS;
	}
	
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public List<User> getUsers() {
		return users;
	}
	public void setUsers(List<User> users) {
		this.users = users;
	}
	
	
	

}
