package com.olms.model;

public class SelectQuestion implements StatusAware{
	public static final String A = "A";
	public static final String B = "B";
	public static final String C = "C";
	public static final String D = "D";
	
	private Integer selectQuestionID = 0;
	private String question;
	private String itemA;
	private String itemB;
	private String itemC;
	private String itemD;
	private String rightAnswer;
	private String userAnswer;
	private String status;
	private TestPaper testPaper;
	
	public SelectQuestion()
	{
		question = "";
		itemA = "";
		itemB = "";
		itemC = "";
		itemD = "";
		rightAnswer = "";
		userAnswer = "";
		status = SelectQuestion.NEW;
	}
	
	@Override
	public boolean equals(Object o)
	{
		if (o instanceof SelectQuestion)
		{
			return ((SelectQuestion)o).getSelectQuestionID().equals(selectQuestionID);
		} else
		{
			return false;
		}
	} // end equals()
	
	@Override
	public int hashCode()
	{
		return selectQuestionID.hashCode();
	} // end hashCode()
	
	
	public TestPaper getTestPaper() {
		return testPaper;
	}

	public void setTestPaper(TestPaper testPaper) {
		this.testPaper = testPaper;
	}

	public static String getA() {
		return A;
	}

	public static String getB() {
		return B;
	}

	public static String getC() {
		return C;
	}

	public static String getD() {
		return D;
	}


	public Integer getSelectQuestionID() {
		return selectQuestionID;
	}
	public void setSelectQuestionID(Integer selectQuestionID) {
		this.selectQuestionID = selectQuestionID;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getItemA() {
		return itemA;
	}
	public void setItemA(String itemA) {
		this.itemA = itemA;
	}
	public String getItemB() {
		return itemB;
	}
	public void setItemB(String itemB) {
		this.itemB = itemB;
	}
	public String getItemC() {
		return itemC;
	}
	public void setItemC(String itemC) {
		this.itemC = itemC;
	}
	public String getItemD() {
		return itemD;
	}
	public void setItemD(String itemD) {
		this.itemD = itemD;
	}
	public String getRightAnswer() {
		return rightAnswer;
	}
	public void setRightAnswer(String rightAnswer) {
		this.rightAnswer = rightAnswer;
	}
	public String getUserAnswer() {
		return userAnswer;
	}
	public void setUserAnswer(String userAnswer) {
		this.userAnswer = userAnswer;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}

	
	

}
