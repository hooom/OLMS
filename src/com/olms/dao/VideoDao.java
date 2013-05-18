package com.olms.dao;

import java.util.List;

import com.olms.model.Video;

public interface VideoDao {
	
	public void add(Video video);
	public void delete(Video video);
	public void update(Video video);
	public List<Video> list();
	public Video getVideoByID(Integer videoID);

}
