package com.markbook.model;

public class sjPageMaker {
	
	// 현제페이지, 페이지에 출력되는 게시판 글의 개수 페이징처리
	private sjCriteria cri; 
	
	// 페이지 하단부에 처리되는 페이징 처리
	// 전체 게시물 수
	private int totalCount;
	
	// 시작 페이지
	private int startPage;
	
	// 끝페이지
	private int endPage;
	
	// 이전페이지 다음페이지 존재유무
	private boolean prev;
	private boolean next;
	
	private int displayPageNum = 10; //페이지 블럭
	
	public void setCri(sjCriteria cri) {
		  this.cri = cri;
	}
	
	// 총 개수 계산
	public void setTotalCount(int totalCount) {
		
		this.totalCount = totalCount;
		
		// 페이징에 필요한 정보처리 
		CalcData();
	}
	
	public void CalcData() {
		System.out.println(" -----  페이징 처리에 필요한 정보 계산 시작 -----");
		
		endPage = (int)Math.ceil(cri.getPageNum()/(double)displayPageNum) * displayPageNum;
		
		startPage = (endPage - displayPageNum)+1;
		
		int tmpEndPage = (int) Math.ceil(totalCount/(double)cri.getPageAmount());
		
		if(endPage > tmpEndPage) {
			endPage = tmpEndPage;
		}
		
		prev = (startPage == 1? false : true);
		
		next = endPage * cri.getPageAmount() >= totalCount? false : true;
		
		System.out.println(" -----  페이징 처리에 필요한 정보 계산 완료 -----");
	}

	// get/set
	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public int getDisplayPageNum() {
		return displayPageNum;
	}

	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}

	public sjCriteria getCri() {
		return cri;
	}

	public int getTotalCount() {
		return totalCount;
	}

		
	@Override
	public String toString() {
		return "sjPageMaker [cri=" + cri + ", totalCount=" + totalCount + ", startPage=" + startPage + ", endPage="
				+ endPage + ", prev=" + prev + ", next=" + next + ", displayPageNum=" + displayPageNum + "]";
	}
	
	
	
	
	
	
	
}
