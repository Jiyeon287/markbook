package com.markbook.service;

import java.util.List;

import com.markbook.domain.Criteria;
import com.markbook.domain.mk_requestBoardVO;
import com.markbook.domain.Page;

public interface mk_requestBoardService {


	//요청게시판 글 등록
	public void addBoard(mk_requestBoardVO rbvo);
	
	//요청게시판 총 게시글 수
	public int count( String searchType, String keyword) throws Exception;
	//요청게시판 게시글 수 
	public int jcount() throws Exception;
	
	//요청게시판 리스트
	public List<mk_requestBoardVO> requestList(int displayPost, int postNum, String searchType, String keyword);
	
   //요청게시판 상세페이지
	public mk_requestBoardVO requestDetail(int r_num);
	
	//요청게시판 관리자 팝업수정창
	public void reqeustUpdate(mk_requestBoardVO rvo);
}
