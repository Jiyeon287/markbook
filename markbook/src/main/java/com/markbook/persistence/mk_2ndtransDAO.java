package com.markbook.persistence;

import java.util.List;

import com.markbook.domain.mk_2ndhand_bookVO;

public interface mk_2ndtransDAO {
	
	// 중고거래 메인 리스트 조회
	public List<mk_2ndhand_bookVO> getBookList() throws Exception;
	

}
