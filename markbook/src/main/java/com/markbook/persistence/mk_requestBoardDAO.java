package com.markbook.persistence;



import java.util.List;

import com.markbook.domain.Criteria;
import com.markbook.domain.mk_requestBoardVO;
import com.markbook.domain.Page;

public interface mk_requestBoardDAO {

	//요청게시판 글 등록
	public void addBoard(mk_requestBoardVO rbvo);
	
	//요청게시판 게시글 총 갯수
	public int count() throws Exception;
	
	//요청게시판 관리자 목록
	public List<mk_requestBoardVO> requestList(int display,int postnum);
	
	//요청게시판 관리자 상세페이지
	public mk_requestBoardVO requestDetail(int r_num);
	
	//요청게시판 관리자 팝업수정창
	public void requestUpdate(mk_requestBoardVO rvo);
}
