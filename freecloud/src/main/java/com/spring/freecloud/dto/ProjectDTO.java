package com.spring.freecloud.dto;

import java.sql.Date;

public class ProjectDTO {
	 	
	private int PROJECT_IDX;
	private String USER_ID;
	private String PROJECT_MAIN_KATEGORY;
	private String PROJECT_MIDDLE_KATEGORY;
	private String PROJECT_WORKING_KIND;
	private String PROJECT_SUBJECT;
	private String PROJECT_CONTENT;
	private Date PROJECT_START_DATE;
	private Date PROJECT_END_DATE;
	private String PROJECT_ADDRESS;
	private int PROJECT_BUDGET;
	private int PROJECT_BUDGET_COORDINATION;
	private String PROJECT_IMAGE_PATH;
	private int PROJECT_STATUS;
	private int PROJECT_VIEWS;
	public int getPROJECT_IDX() {
		return PROJECT_IDX;
	}
	public void setPROJECT_IDX(int pROJECT_IDX) {
		PROJECT_IDX = pROJECT_IDX;
	}
	public String getUSER_ID() {
		return USER_ID;
	}
	public void setUSER_ID(String uSER_ID) {
		USER_ID = uSER_ID;
	}
	public String getPROJECT_MAIN_KATEGORY() {
		return PROJECT_MAIN_KATEGORY;
	}
	public void setPROJECT_MAIN_KATEGORY(String pROJECT_MAIN_KATEGORY) {
		PROJECT_MAIN_KATEGORY = pROJECT_MAIN_KATEGORY;
	}
	public String getPROJECT_MIDDLE_KATEGORY() {
		return PROJECT_MIDDLE_KATEGORY;
	}
	public void setPROJECT_MIDDLE_KATEGORY(String pROJECT_MIDDLE_KATEGORY) {
		PROJECT_MIDDLE_KATEGORY = pROJECT_MIDDLE_KATEGORY;
	}
	public String getPROJECT_WORKING_KIND() {
		return PROJECT_WORKING_KIND;
	}
	public void setPROJECT_WORKING_KIND(String pROJECT_WORKING_KIND) {
		PROJECT_WORKING_KIND = pROJECT_WORKING_KIND;
	}
	public String getPROJECT_SUBJECT() {
		return PROJECT_SUBJECT;
	}
	public void setPROJECT_SUBJECT(String pROJECT_SUBJECT) {
		PROJECT_SUBJECT = pROJECT_SUBJECT;
	}
	public String getPROJECT_CONTENT() {
		return PROJECT_CONTENT;
	}
	public void setPROJECT_CONTENT(String pROJECT_CONTENT) {
		PROJECT_CONTENT = pROJECT_CONTENT;
	}
	public Date getPROJECT_START_DATE() {
		return PROJECT_START_DATE;
	}
	public void setPROJECT_START_DATE(Date pROJECT_START_DATE) {
		PROJECT_START_DATE = pROJECT_START_DATE;
	}
	public Date getPROJECT_END_DATE() {
		return PROJECT_END_DATE;
	}
	public void setPROJECT_END_DATE(Date pROJECT_END_DATE) {
		PROJECT_END_DATE = pROJECT_END_DATE;
	}
	public String getPROJECT_ADDRESS() {
		return PROJECT_ADDRESS;
	}
	public void setPROJECT_ADDRESS(String pROJECT_ADDRESS) {
		PROJECT_ADDRESS = pROJECT_ADDRESS;
	}
	public int getPROJECT_BUDGET() {
		return PROJECT_BUDGET;
	}
	public void setPROJECT_BUDGET(int pROJECT_BUDGET) {
		PROJECT_BUDGET = pROJECT_BUDGET;
	}
	public int getPROJECT_BUDGET_COORDINATION() {
		return PROJECT_BUDGET_COORDINATION;
	}
	public void setPROJECT_BUDGET_COORDINATION(int pROJECT_BUDGET_COORDINATION) {
		PROJECT_BUDGET_COORDINATION = pROJECT_BUDGET_COORDINATION;
	}
	public String getPROJECT_IMAGE_PATH() {
		return PROJECT_IMAGE_PATH;
	}
	public void setPROJECT_IMAGE_PATH(String pROJECT_IMAGE_PATH) {
		PROJECT_IMAGE_PATH = pROJECT_IMAGE_PATH;
	}
	public int getPROJECT_STATUS() {
		return PROJECT_STATUS;
	}
	public void setPROJECT_STATUS(int pROJECT_STATUS) {
		PROJECT_STATUS = pROJECT_STATUS;
	}
	public int getPROJECT_VIEWS() {
		return PROJECT_VIEWS;
	}
	public void setPROJECT_VIEWS(int pROJECT_VIEWS) {
		PROJECT_VIEWS = pROJECT_VIEWS;
	}
	@Override
	public String toString() {
		return "ProjectDTO [PROJECT_IDX=" + PROJECT_IDX + ", USER_ID=" + USER_ID + ", PROJECT_MAIN_KATEGORY="
				+ PROJECT_MAIN_KATEGORY + ", PROJECT_MIDDLE_KATEGORY=" + PROJECT_MIDDLE_KATEGORY
				+ ", PROJECT_WORKING_KIND=" + PROJECT_WORKING_KIND + ", PROJECT_SUBJECT=" + PROJECT_SUBJECT
				+ ", PROJECT_CONTENT=" + PROJECT_CONTENT + ", PROJECT_START_DATE=" + PROJECT_START_DATE
				+ ", PROJECT_END_DATE=" + PROJECT_END_DATE + ", PROJECT_ADDRESS=" + PROJECT_ADDRESS
				+ ", PROJECT_BUDGET=" + PROJECT_BUDGET + ", PROJECT_BUDGET_COORDINATION=" + PROJECT_BUDGET_COORDINATION
				+ ", PROJECT_IMAGE_PATH=" + PROJECT_IMAGE_PATH + ", PROJECT_STATUS=" + PROJECT_STATUS
				+ ", PROJECT_VIEWS=" + PROJECT_VIEWS + "]";
	}
	
	
	
	

	    
}
