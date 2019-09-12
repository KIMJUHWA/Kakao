package com.java.web;

public class MainBean {
	private String no;
	private String title;
	private String text;
	
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	
	@Override
	public String toString() {
		return "MainBean [no=" + no + ", title=" + title + ", text=" + text + "]";
	}
	
}
