package com.markbook.service;

import java.util.List;

import com.markbook.domain.mk_bookVO;

public interface mk_adminService {
	
	
	// 도서 등록
	public void bookRegister(mk_bookVO bvo) throws Exception;
	
	// 도서 목록
	public List<mk_bookVO> getBookList(Integer b_num) throws Exception;
	
	// 도서 수정
	public void updateBook(mk_bookVO bvo) throws Exception;
	
	// 도서 삭제
	public void deleteBook(Integer b_num) throws Exception;
	
	
	
	
	
		

}
