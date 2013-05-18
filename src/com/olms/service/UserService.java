package com.olms.service;

import java.util.List;

import com.olms.model.User;

public interface UserService {
	
	public User login(User user);
	public void add(User user);
	public void delete(User user);
	public void delete(Integer userID);
	public void update(User user);
	public List<User> list();
	public User get(String username);
	public User get(Integer userID);
	public boolean isExist(User user);

}
