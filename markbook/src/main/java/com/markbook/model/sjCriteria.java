package com.markbook.model;

public class sjCriteria {

	// 현재 페이지
	private int pageNum;

	// 한 페이지 당 보여질 게시물 갯수
	private int pageAmount;

	// 스킵 할 게시물 수
	private int skip;

	// 기본 생성자
	public sjCriteria() {// 기본값은 항상 1페이지, 12개씩
			this.pageNum = 1;
			this.pageAmount = 8;
			this.skip = 0;
		}

	// 원하는 값 넣는 생성자
	public sjCriteria(int pageNum, int pageAmount) {
			this.pageNum = pageNum;
			this.pageAmount = pageAmount;
			this.skip = (pageNum-1)*pageAmount;
		}

	public void setPageNum(int pageNum) {

		// 페이지 정보가 음수인경우 1페이지로 처리
		if (pageNum <= 0) {
			pageNum = 1;
			return;
		}

		this.skip = (pageNum - 1) * this.pageAmount;

		this.pageNum = pageNum;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageAmount(int pageAmount) {

		if (pageAmount <= 0 || pageAmount > 100) {
			pageAmount = 8;
			return;
		}

		this.skip = (this.pageNum - 1) * pageAmount;

		this.pageAmount = pageAmount;
	}

	public int getPageAmount() {
		return pageAmount;
	}

	public void setSkip(int skip) {
		this.skip = skip;
	}

	public int getSkip() {
		return skip;
	}

	@Override
	public String toString() {
		return "sjCriteria [pageNum=" + pageNum + ", pageAmount=" + pageAmount + ", skip=" + skip + "]";
	}

	
}
