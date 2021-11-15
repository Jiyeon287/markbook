package com.markbook.domain;

public class mk_requestBoardVO {

	private int r_num;
	private String r_name;
	private String r_writer;
	private String r_content;
	private String r_image;
	private int r_result;
	private int r_id_num;
	private String r_category;
	
	public int getR_num() {
		return r_num;
	}
	public String getR_category() {
		return r_category;
	}
	public void setR_category(String r_category) {
		this.r_category = r_category;
	}
	public void setR_num(int r_num) {
		this.r_num = r_num;
	}
	public String getR_name() {
		return r_name;
	}
	public void setR_name(String r_name) {
		this.r_name = r_name;
	}
	public String getR_writer() {
		return r_writer;
	}
	public void setR_writer(String r_writer) {
		this.r_writer = r_writer;
	}
	public String getR_content() {
		return r_content;
	}
	public void setR_content(String r_content) {
		this.r_content = r_content;
	}
	public String getR_image() {
		return r_image;
	}
	public void setR_image(String r_image) {
		this.r_image = r_image;
	}
	public int getR_result() {
		return r_result;
	}
	public void setR_result(int r_result) {
		this.r_result = r_result;
	}
	public int getR_id_num() {
		return r_id_num;
	}
	public void setR_id_num(int r_id_num) {
		this.r_id_num = r_id_num;
	}
	@Override
	public String toString() {
		return "mk_requestBoardVO [r_num=" + r_num + ", r_name=" + r_name + ", r_writer=" + r_writer + ", r_content="
				+ r_content + ", r_image=" + r_image + ", r_result=" + r_result + ", r_id_num=" + r_id_num
				+ ", r_category=" + r_category + "]";
	}

	
}
