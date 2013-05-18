package com.olms.servlet;

import java.util.Set;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.http.HttpServlet;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.olms.model.CommentItem;
import com.olms.model.Course;
import com.olms.model.User;
import com.olms.service.UserService;

public class UserInit extends HttpServlet implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
	}

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		WebApplicationContext context = 
				WebApplicationContextUtils.getWebApplicationContext(sce.getServletContext());
		UserService userService = (UserService) context.getBean("userService");
		User user = new User();
		user.setUsername("admin");
		user.setPassword("admin");
		user.setRole(User.ADMIN);
		user.setStatus(User.NORMAL);
		
		if (!userService.isExist(user))
		{
			userService.add(user);
		}
	}

	
}
