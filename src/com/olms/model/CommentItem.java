package com.olms.model;

public class CommentItem implements StatusAware{
	private Integer commentItemID;
	private User speaker;
	private String content;
	private Video video;
	private String status;

	public CommentItem()
	{
		super();
		content = "";
		status = CommentItem.NEW;
	}

	@Override
	public int hashCode()
	{
		return commentItemID.hashCode();
	}
	
	@Override
	public boolean equals(Object o)
	{
		if (o instanceof CommentItem)
		{
			return ((CommentItem)o).getCommentItemID().equals(commentItemID);
		} else
		{
			return false;
		}
	}

	public Integer getCommentItemID() {
		return commentItemID;
	}
	public void setCommentItemID(Integer commentItemID) {
		this.commentItemID = commentItemID;
	}
	public User getSpeaker() {
		return speaker;
	}
	public void setSpeaker(User speaker) {
		this.speaker = speaker;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Video getVideo() {
		return video;
	}
	public void setVideo(Video video) {
		this.video = video;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	

}
