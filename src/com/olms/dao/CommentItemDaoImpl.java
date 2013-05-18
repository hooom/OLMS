package com.olms.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.olms.model.CommentItem;

public class CommentItemDaoImpl extends HibernateDaoSupport implements CommentItemDao {

	@Override
	public void add(CommentItem item) {
		getHibernateTemplate().save(item);
	}

	@Override
	public void delete(CommentItem item) {
		getHibernateTemplate().delete(item);
	}

	@Override
	public void update(CommentItem item) {
		getHibernateTemplate().update(item);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<CommentItem> list() {
		return (List<CommentItem>)getHibernateTemplate().find("From CommentItem");
	}

	@Override
	public CommentItem getCommentItemByID(Integer commentItemID) {
		return getHibernateTemplate().get(CommentItem.class, commentItemID);
	}

}
