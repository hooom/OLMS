package com.olms.service;

import java.util.List;

import com.olms.dao.UserDao;
import com.olms.model.User;

public class UserServiceImpl implements UserService {

	private UserDao userDao;

	@Override
	public boolean isExist(User user) {
		return (get(user.getUsername()) != null );
	}

	
	@Override
	public User login(User user) {
		User visitor = null;
		List<User> users = userDao.list();
		
		for (User u: users)
		{
			if (u.getUsername().equals(user.getUsername())
					&& u.getPassword().equals(user.getPassword()))
			{
				visitor = u;
				break;
			}
		}
		return visitor;
	}

	@Override
	public void add(User user) {
		userDao.add(user);
	}

	@Override
	public void delete(User user) {
		userDao.delete(user);
	}
	
	@Override
	public void delete(Integer userID)
	{
		this.delete(this.get(userID));
	}

	@Override
	public void update(User user) {
		userDao.update(user);
	}

	@Override
	public List<User> list() {
		return userDao.list();
	}

	@Override
	public User get(String username) {
		User temp = null;
		List<User> users = userDao.list();
		for (User u: users)
		{
			if (u.getUsername().equals(username))
			{
				temp = u;
				break;
			}
		}
		return temp;
	}

	@Override
	public User get(Integer userID) {
		return userDao.getUserByID(userID);
	}

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}


	

}
