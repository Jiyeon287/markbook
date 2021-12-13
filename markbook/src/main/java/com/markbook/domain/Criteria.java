package com.markbook.domain;

public class Criteria {
	// 페이징 처리 정보 저장하는 객체
	
	private int pageStart;
	private int pageSize;
	
	public Criteria() { // 기본값
		this.pageStart = 1;
		this.pageSize = 10;
	}

	
	public void setPageStart(int pageStart) { //pageStart -> 정보 초기화
		
		if(pageStart <= 0) {
			pageStart = 1;
			return;
		}
		this.pageStart = pageStart;
	}
	
	public void setPageSize(int pageSize) {
		
		if(pageSize <=0 || pageSize > 100) {
			pageSize = 10;
			return;
		}
		this.pageSize = pageSize;
	}
	
	// mapper에서 사용함
	public int getPageStart() {
		return pageStart;
	}

	public int getPageSize() {
		return pageSize;
	}

	// 시작 데이터번호 = (페이지번호 - 1) * 페이지당 보여지는 수
	public int getPage() {
		return (this.pageStart-1) * pageSize;
	}
	
	
	@Override
	public String toString() {
		return "Criteria [pageStart=" + pageStart + ", pageSize=" + pageSize + "]";
	}
	
	
	
	
	
	

}
