package com.markbook.domain;

public class pageMaker {
	// 페이징 처리에 관련된 동작 수행
	
	// 페이지에 출력되는 게시판 글의 개수 페이징처리
	// 이미 만들어진 객체 가져다쓰는!
	private Criteria cri;
	
	// 페이지 하단부에 처리되는 페이징 처리
	private int totalCount; // 전체 게시물 수
	private int startPage; // 시작페이지
	private int endPage; // 끝페이지
	private boolean prev; // true/false
	private boolean next; // true/false
	
	private int displaypageNum = 10; //페이지 블럭 (숫자가몇개까지보일것인가)

	public void setCri(Criteria cri) {
		this.cri = cri; // 초기화
	}
	
	// 총 개수 계산
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		
		// 페이징에 필요한 정보처리
		CalcData(); // 얘가 밑에 메서드를 부를 것
	}
	
	public void CalcData() {
		System.out.println(" --- 페이징 처리에 필요한 정보 계산 --- ");
		endPage = (int)Math.ceil(cri.getPageStart()/(double)displaypageNum) * displaypageNum;
		
		startPage = (endPage - displaypageNum)+1;
		
		int tmpEndPage = (int) Math.ceil(totalCount/(double)cri.getPageSize());
		
		if(endPage > tmpEndPage) {
			endPage = tmpEndPage;
		}
		
		prev = (startPage == 1? false : true);
		
		next = endPage * cri.getPageSize() >= totalCount? false : true;
		System.out.println(" --- 페이징 처리에 필요한 정보 계산 ---");
		
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
	
	public int getDisplaypageNum() {
		return displaypageNum;
	}
	
	public void setDisplaypageNum(int displaypageNum) {
		this.displaypageNum = displaypageNum;
	}
	
	public Criteria getCri() {
		return cri; 
	}
	
	public int getTotalCount() {
		return totalCount;
	}


	
	@Override
	public String toString() {
		return "pageMaker [cri=" + cri + ", totalCount=" + totalCount + ", startPage=" + startPage + ", endPage="
				+ endPage + ", prev=" + prev + ", next=" + next + ", displaypageNum=" + displaypageNum + "]";
	}
	
	
	
	
	

}
