package com.olms.interceptor;

import java.util.Map;

import com.olms.model.User;
import com.olms.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class UserLoginInterceptor implements Interceptor
{
	private UserService userService;

	@Override
	public String intercept(ActionInvocation actionInvocation) throws Exception {
		ActionContext context = ActionContext.getContext();
		Map<String, Object> session = context.getSession();
		User user = (User)session.get("user");
		if (user == null)
		{
			return "userNotLogin";
		}
		User updateUser = userService.get(user.getUserID());
		session.put("user", updateUser);
		return actionInvocation.invoke();
	}

	
	@Override
	public void destroy() {
	}

	@Override
	public void init() {
	}


	public UserService getUserService() {
		return userService;
	}


	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	

}
