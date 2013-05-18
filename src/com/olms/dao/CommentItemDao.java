package com.olms.dao;

import java.util.List;

import com.olms.model.CommentItem;

public interface CommentItemDao {
	
	public void add(CommentItem item);
	public void delete(CommentItem item);
	public void update(CommentItem item);
	public List<CommentItem> list();
	public CommentItem getCommentItemByID(Integer commentItemID);

}
