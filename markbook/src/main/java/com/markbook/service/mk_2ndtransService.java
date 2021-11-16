package com.markbook.service;

import java.util.List;

import com.markbook.domain.mk_2ndhand_bookVO;

public interface mk_2ndtransService {

	// 중고거래 메인 리스트 조회
	public List<mk_2ndhand_bookVO> getBookList() throws Exception;
	
	// 중고거래 매물 등록
	public void bookRegister(mk_2ndhand_bookVO bvo) throws Exception;

}
