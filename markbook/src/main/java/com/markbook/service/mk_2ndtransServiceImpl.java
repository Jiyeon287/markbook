package com.markbook.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.markbook.domain.mk_2ndhand_bookVO;
import com.markbook.persistence.mk_2ndtransDAO;

@Service
public class mk_2ndtransServiceImpl implements mk_2ndtransService {
	
	@Inject
	private mk_2ndtransDAO tdao;
	
	// 중고 책 리스트 조회
	@Override
	public List<mk_2ndhand_bookVO> getBookList() throws Exception {
		
		System.out.println(" S : getRecentOrder() 호출");
		
		List<mk_2ndhand_bookVO> bookList = tdao.getBookList();
		
		return bookList;
	}
	
	// 중고책 매물 등록
	@Override
	public void bookRegister(mk_2ndhand_bookVO bvo) throws Exception {
		
		System.out.println("S : bookRegister(bvo) 호출! ");
		
		tdao.bookRegister(bvo);
		
		System.out.println("S : bookRegister(bvo) 등록완료 ");
	}

}
