package action;

import model.User;
import service.UserService;

import com.opensymphony.xwork2.ActionSupport;

public class UserAddAction extends ActionSupport{
	UserService userService;
	private User user;
	
	public String execute()
	{
		userService.add(user);
		return SUCCESS;
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
