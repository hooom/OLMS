package dao;

import model.User;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao{

	public void add(User user) {
		this.getHibernateTemplate().save(user);
	}

}
