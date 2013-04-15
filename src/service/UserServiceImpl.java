package service;

import model.User;
import dao.UserDao;

public class UserServiceImpl implements UserService {
	private UserDao userDao;

	public void add(User user) {
		userDao.add(user);
	}

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	

}
