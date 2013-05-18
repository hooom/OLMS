package com.olms.service;

import java.util.List;

import com.olms.model.CommentItem;

public interface CommentItemService {
	
	public void add(CommentItem item);
	public void delete(CommentItem item);
	public void update(CommentItem item);
	public List<CommentItem> list();
	public CommentItem getCommentItemByID(Integer commentItemID);

}
