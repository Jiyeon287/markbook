package com.markbook.domain;

public class mk_2ndhand_bookVO {

	private int b2_num;
	private int seller_m_num;
	private String b2_name;
	private String b2_price;
	private String b2_category;
	private String b2_image;

	private String b2_content;
	private String b2_writer;
	private String b2_publisher;
	private String b2_regdate;
	private String b2_sell;

	public int getB2_num() {
		return b2_num;
	}

	public void setB2_num(int b2_num) {
		this.b2_num = b2_num;
	}

	public int getSeller_m_num() {
		return seller_m_num;
	}

	public void setSeller_m_num(int seller_m_num) {
		this.seller_m_num = seller_m_num;
	}

	public String getB2_name() {
		return b2_name;
	}

	public void setB2_name(String b2_name) {
		this.b2_name = b2_name;
	}

	public String getB2_price() {
		return b2_price;
	}

	public void setB2_price(String b2_price) {
		this.b2_price = b2_price;
	}

	public String getB2_category() {
		return b2_category;
	}

	public void setB2_category(String b2_category) {
		this.b2_category = b2_category;
	}

	public String getB2_image() {
		return b2_image;
	}

	public void setB2_image(String b2_image) {
		this.b2_image = b2_image;
	}

	public String getB2_content() {
		return b2_content;
	}

	public void setB2_content(String b2_content) {
		this.b2_content = b2_content;
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

	public String getB2_regdate() {
		return b2_regdate;
	}

	public void setB2_regdate(String b2_regdate) {
		this.b2_regdate = b2_regdate;
	}

	public String getB2_sell() {
		return b2_sell;
	}

	public void setB2_sell(String b2_sell) {
		this.b2_sell = b2_sell;
	}

	@Override
	public String toString() {
		return "mk_2ndhand_bookVO [b2_num=" + b2_num + ", seller_m_num=" + seller_m_num + ", b2_name=" + b2_name
				+ ", b2_price=" + b2_price + ", b2_category=" + b2_category + ", b2_image=" + b2_image + ", b2_content="
				+ b2_content + ", b2_writer=" + b2_writer + ", b2_publisher=" + b2_publisher + ", b2_regdate="
				+ b2_regdate + ", b2_sell=" + b2_sell + "]";
	}

}
