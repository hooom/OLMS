package com.olms.dao;

import java.util.List;

import com.olms.model.User;

public interface UserDao {
	
	public void add(User user);
	public void delete(User user);
	public void update(User user);
	public List<User> list();
	public User getUserByID(Integer userID);

}
