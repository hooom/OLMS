package com.olms.service;

import java.util.List;

import com.olms.dao.VideoDao;
import com.olms.model.Video;

public class VideoServiceImpl implements VideoService {
	private VideoDao videoDao;

	@Override
	public void add(Video video) {
		videoDao.add(video);
	}

	@Override
	public void delete(Video video) {
		videoDao.delete(video);
	}

	@Override
	public void update(Video video) {
		videoDao.update(video);
	}

	@Override
	public List<Video> list() {
		return videoDao.list();
	}

	@Override
	public Video getVideoByID(Integer videoID) {
		return videoDao.getVideoByID(videoID);
	}

	public VideoDao getVideoDao() {
		return videoDao;
	}

	public void setVideoDao(VideoDao videoDao) {
		this.videoDao = videoDao;
	}

	
}
