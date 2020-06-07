package com.spring.freecloud.dto;

import java.sql.Date;

public class BoardDTO {
	 	
	private int BBS_IDX;
	private String USER_ID;
	private String BBS_MAIN_KETEGORY;
	private String BBS_MIDDLE_KATEGORY;
	private String BBS_SUBJECT;
	private String BBS_CONTENT;
	private String BBS_VIEW;
	private Date BBS_REG_DATE;
	private Date BBS_UPDATE_DATE;
	
	
	
	
	public int getBBS_IDX() {
		return BBS_IDX;
	}




	public void setBBS_IDX(int bBS_IDX) {
		BBS_IDX = bBS_IDX;
	}




	public String getUSER_ID() {
		return USER_ID;
	}




	public void setUSER_ID(String uSER_ID) {
		USER_ID = uSER_ID;
	}




	public String getBBS_MAIN_KETEGORY() {
		return BBS_MAIN_KETEGORY;
	}




	public void setBBS_MAIN_KETEGORY(String bBS_MAIN_KETEGORY) {
		BBS_MAIN_KETEGORY = bBS_MAIN_KETEGORY;
	}




	public String getBBS_MIDDLE_KATEGORY() {
		return BBS_MIDDLE_KATEGORY;
	}




	public void setBBS_MIDDLE_KATEGORY(String bBS_MIDDLE_KATEGORY) {
		BBS_MIDDLE_KATEGORY = bBS_MIDDLE_KATEGORY;
	}




	public String getBBS_SUBJECT() {
		return BBS_SUBJECT;
	}




	public void setBBS_SUBJECT(String bBS_SUBJECT) {
		BBS_SUBJECT = bBS_SUBJECT;
	}




	public String getBBS_CONTENT() {
		return BBS_CONTENT;
	}




	public void setBBS_CONTENT(String bBS_CONTENT) {
		BBS_CONTENT = bBS_CONTENT;
	}




	public String getBBS_VIEW() {
		return BBS_VIEW;
	}




	public void setBBS_VIEW(String bBS_VIEW) {
		BBS_VIEW = bBS_VIEW;
	}




	public Date getBBS_REG_DATE() {
		return BBS_REG_DATE;
	}




	public void setBBS_REG_DATE(Date bBS_REG_DATE) {
		BBS_REG_DATE = bBS_REG_DATE;
	}




	public Date getBBS_UPDATE_DATE() {
		return BBS_UPDATE_DATE;
	}




	public void setBBS_UPDATE_DATE(Date bBS_UPDATE_DATE) {
		BBS_UPDATE_DATE = bBS_UPDATE_DATE;
	}




	@Override
	public String toString() {
		return "BoardDTO [BBS_IDX=" + BBS_IDX + ", USER_ID=" + USER_ID + ", BBS_MAIN_KETEGORY=" + BBS_MAIN_KETEGORY
				+ ", BBS_MIDDLE_KATEGORY=" + BBS_MIDDLE_KATEGORY + ", BBS_SUBJECT=" + BBS_SUBJECT + ", BBS_CONTENT="
				+ BBS_CONTENT + ", BBS_VIEW=" + BBS_VIEW + ", BBS_REG_DATE=" + BBS_REG_DATE + ", BBS_UPDATE_DATE="
				+ BBS_UPDATE_DATE + "]";
	}
	
	
	  
	    
}
