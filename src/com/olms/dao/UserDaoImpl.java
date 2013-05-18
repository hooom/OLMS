package com.olms.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.olms.model.User;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao {

	@Override
	public void add(User user) {
		this.getHibernateTemplate().save(user);
	}

	@Override
	public void delete(User user) {
		this.getHibernateTemplate().delete(user);
	}

	@Override
	public void update(User user) {
		this.getHibernateTemplate().update(user);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<User> list() {
		return (List<User>)this.getHibernateTemplate().find("from User");
	}

	@Override
	public User getUserByID(Integer userID) {
		return getHibernateTemplate().get(User.class, userID);
	}

	
	
}
