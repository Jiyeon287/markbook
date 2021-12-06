package com.markbook.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.markbook.domain.mk_bookVO;
import com.markbook.persistence.mk_adminDAO;

@Service
public class mk_adminServiceImpl implements mk_adminService {

	@Inject
	private mk_adminDAO madao;
	
	
	// 도서 등록
	@Override
	public void bookRegister(mk_bookVO bvo) throws Exception {
		
		System.out.println(" S : bookRegister(bookVO bvo) 호출 -> DAO - bookRegister(mk_bookVO bvo) 호출 ");
		
		madao.bookRegister(bvo);
		
		System.out.println(" 도서등록 완료 -> 컨트롤러 이동 ");
	}


	// 도서 목록
	@Override
	public List<mk_bookVO> getBookList(Integer b_num) throws Exception {
		
		System.out.println(" S : getBookList() 호출 ");
		
		List<mk_bookVO> bookList = madao.getBookList(b_num);
		
		return bookList;
	}


	// 도서 수정
	@Override
	public void updateBook(mk_bookVO bvo) throws Exception {
		
		System.out.println(" S : updateBook(mk_bookVO bvo) 호출 -> DAO : updateBook(mk_bookVO bvo) 호출 ");
		
		madao.updateBook(bvo);
	}


	// 도서 삭제
	@Override
	public void deleteBook(Integer b_num) throws Exception {

		System.out.println(" S : deleteBook(Integer b_num) 호출 -> DAO : deleteBook(Integer b_num) 호출 ");
		
		madao.deleteBook(b_num);
	}


	


	

	
	
	
	
	
}
