package com.olms.service;

import java.util.List;

import com.olms.dao.CommentItemDao;
import com.olms.model.CommentItem;

public class CommentItemServiceImpl implements CommentItemService {
	private CommentItemDao commentItemDao;

	@Override
	public void add(CommentItem item) {
		commentItemDao.add(item);
	}

	@Override
	public void delete(CommentItem item) {
		commentItemDao.delete(item);
	}

	@Override
	public void update(CommentItem item) {
		commentItemDao.update(item);
	}

	@Override
	public List<CommentItem> list() {
		return commentItemDao.list();
	}

	@Override
	public CommentItem getCommentItemByID(Integer commentItemID) {
		return commentItemDao.getCommentItemByID(commentItemID);
	}

	public CommentItemDao getCommentItemDao() {
		return commentItemDao;
	}

	public void setCommentItemDao(CommentItemDao commentItemDao) {
		this.commentItemDao = commentItemDao;
	}

	
}
