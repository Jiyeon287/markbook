package com.markbook.persistence;

import java.util.List;

import com.markbook.domain.Criteria;
import com.markbook.domain.mk_bookVO;

public interface mk_adminDAO {

	// 도서 등록
	public void bookRegister(mk_bookVO bvo) throws Exception;
	
	// 도서 목록
	public List<mk_bookVO> getBookList() throws Exception;
	
	// 도서 목록 페이징 처리
	//public List<BoardVO> listCri(int pageStart,int pageSize) throws Exception;
	public List<mk_bookVO> bListCri(Criteria cri) throws Exception; // 객체만들어서 객체를 통해서 정보전달
	
	// 도서 목록 전체 갯수 조회
	public int countBook(Criteria cri) throws Exception;
	
	// 도서 목록 개별 정보 조회
	public mk_bookVO getBInfo(Integer b_num) throws Exception;
	
	// 도서 수정
	public void updateBook(mk_bookVO bvo) throws Exception;
	
	// 도서 삭제
	public void deleteBook(Integer b_num) throws Exception;
	
	
	
	
	
	
	
	
}
