package com.olms.model;

import java.util.List;
import java.util.Set;

public class TestPaper implements StatusAware{
	
	private Integer testPaperID = 0;
	private Course course;
	private Set<SelectQuestion> items;
	private String testPaperName;
	
	public String getTestPaperName() {
		return testPaperName;
	}

	public void setTestPaperName(String testPaperName) {
		this.testPaperName = testPaperName;
	}
	private String status;
	
	public TestPaper()
	{
		status = TestPaper.NEW;
	}
	
	@Override
	public boolean equals(Object o)
	{
		if (o instanceof TestPaper)
		{
			return ((TestPaper)o).getTestPaperID().equals(testPaperID);
		} else
		{
			return false;
		}
	} // end equals()
	
	@Override
	public int hashCode()
	{
		return testPaperID.hashCode();
	} // end hashCode()
	
	

	public Set<SelectQuestion> getItems() {
		return items;
	}

	public void setItems(Set<SelectQuestion> items) {
		this.items = items;
	}

	public Integer getTestPaperID() {
		return testPaperID;
	}
	public void setTestPaperID(Integer testPaperID) {
		this.testPaperID = testPaperID;
	}
	public Course getCourse() {
		return course;
	}
	public void setCourse(Course course) {
		this.course = course;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
		

}
