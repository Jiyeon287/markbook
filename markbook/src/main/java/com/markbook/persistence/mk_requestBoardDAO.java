package com.markbook.persistence;

import com.markbook.domain.mk_requestBoardVO;

public interface mk_requestBoardDAO {

	//요청게시판 글 등록
	public void addBoard(mk_requestBoardVO rbvo);
	
	//요청게시판 게시글 총 갯수
	public int countBoard() throws Exception;
}
