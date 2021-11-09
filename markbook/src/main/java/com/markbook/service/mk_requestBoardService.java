package com.markbook.service;

import com.markbook.domain.mk_requestBoardVO;

public interface mk_requestBoardService {

	//요청게시판 글 등록
	public void addBoard(mk_requestBoardVO rbvo);
	
	//요청게시판 총 게시글 수
	public Integer countBoard() throws Exception;
}
