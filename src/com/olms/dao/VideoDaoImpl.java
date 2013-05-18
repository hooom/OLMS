package com.olms.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.olms.model.Video;

public class VideoDaoImpl extends HibernateDaoSupport implements VideoDao {

	@Override
	public void add(Video video) {
		getHibernateTemplate().save(video);
	}

	@Override
	public void delete(Video video) {
		getHibernateTemplate().delete(video);
	}

	@Override
	public void update(Video video) {
		getHibernateTemplate().update(video);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Video> list() {
		return (List<Video>)getHibernateTemplate().find("from Video");
	}

	@Override
	public Video getVideoByID(Integer videoID) {
		return getHibernateTemplate().get(Video.class, videoID);
	}

}
