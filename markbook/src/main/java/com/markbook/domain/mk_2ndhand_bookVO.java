package com.markbook.domain;

import java.sql.Date;

public class mk_2ndhand_bookVO {

	private int b2_num;
	private int b2_seller_num;
	private int b2_startprice;
	private int b2_highestprice;
	private String b2_title;
	private String b2_category;
	private String b2_content;
	private String b2_image;
	private String b2_writer;
	private String b2_publisher;
	private String b2_bookstatus;
	private Date b2_startdate;
	private Date b2_enddate;
	private String b2_sellstatus;

	public int getB2_num() {
		return b2_num;
	}

	public void setB2_num(int b2_num) {
		this.b2_num = b2_num;
	}

	public int getB2_seller_num() {
		return b2_seller_num;
	}

	public void setB2_seller_num(int b2_seller_num) {
		this.b2_seller_num = b2_seller_num;
	}

	public int getB2_startprice() {
		return b2_startprice;
	}

	public void setB2_startprice(int b2_startprice) {
		this.b2_startprice = b2_startprice;
	}

	public int getB2_highestprice() {
		return b2_highestprice;
	}

	public void setB2_highestprice(int b2_highestprice) {
		this.b2_highestprice = b2_highestprice;
	}

	public String getB2_title() {
		return b2_title;
	}

	public void setB2_title(String b2_title) {
		this.b2_title = b2_title;
	}

	public String getB2_category() {
		return b2_category;
	}

	public void setB2_category(String b2_category) {
		this.b2_category = b2_category;
	}

	public String getB2_content() {
		return b2_content;
	}

	public void setB2_content(String b2_content) {
		this.b2_content = b2_content;
	}

	public String getB2_image() {
		return b2_image;
	}

	public void setB2_image(String b2_image) {
		this.b2_image = b2_image;
	}

	public String getB2_writer() {
		return b2_writer;
	}

	public void setB2_writer(String b2_writer) {
		this.b2_writer = b2_writer;
	}

	public String getB2_publisher() {
		return b2_publisher;
	}

	public void setB2_publisher(String b2_publisher) {
		this.b2_publisher = b2_publisher;
	}

	public String getB2_bookstatus() {
		return b2_bookstatus;
	}

	public void setB2_bookstatus(String b2_bookstatus) {
		this.b2_bookstatus = b2_bookstatus;
	}

	public Date getB2_startdate() {
		return b2_startdate;
	}

	public void setB2_startdate(Date b2_startdate) {
		this.b2_startdate = b2_startdate;
	}

	public Date getB2_enddate() {
		return b2_enddate;
	}

	public void setB2_enddate(Date b2_enddate) {
		this.b2_enddate = b2_enddate;
	}

	public String getB2_sellstatus() {
		return b2_sellstatus;
	}

	public void setB2_sellstatus(String b2_sellstatus) {
		this.b2_sellstatus = b2_sellstatus;
	}

	@Override
	public String toString() {
		return "mk_2ndhand_bookVO [b2_num=" + b2_num + ", b2_seller_num=" + b2_seller_num + ", b2_startprice="
				+ b2_startprice + ", b2_highestprice=" + b2_highestprice + ", b2_title=" + b2_title + ", b2_category="
				+ b2_category + ", b2_content=" + b2_content + ", b2_image=" + b2_image + ", b2_writer=" + b2_writer
				+ ", b2_publisher=" + b2_publisher + ", b2_bookstatus=" + b2_bookstatus + ", b2_startdate="
				+ b2_startdate + ", b2_enddate=" + b2_enddate + ", b2_sellstatus=" + b2_sellstatus + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}

}
