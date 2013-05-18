package com.olms.service;

import java.util.List;

import com.olms.dao.TestPaperDao;
import com.olms.model.TestPaper;

public class TestPaperServiceImpl implements TestPaperService {
	private TestPaperDao testPaperDao;

	@Override
	public void add(TestPaper testPaper) {
		testPaperDao.add(testPaper);
	}

	@Override
	public void delete(TestPaper testPaper) {
		testPaperDao.delete(testPaper);
	}

	@Override
	public void update(TestPaper testPaper) {
		testPaperDao.update(testPaper);
	}

	@Override
	public List<TestPaper> list() {
		return testPaperDao.list();
	}

	@Override
	public TestPaper getTestPaperByID(Integer testPaperID) {
		return testPaperDao.getTestPaperByID(testPaperID);
	}

	public TestPaperDao getTestPaperDao() {
		return testPaperDao;
	}

	public void setTestPaperDao(TestPaperDao testPaperDao) {
		this.testPaperDao = testPaperDao;
	}

	
	
}
