package com.markbook.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.markbook.domain.mk_bookVO;
import com.markbook.persistence.mk_adminDAO;

@Service
public class mk_adminServiceImpl implements mk_adminService {

	@Inject
	private mk_adminDAO madao;
	
	
	// 도서등록
	@Override
	public void bookRegister(mk_bookVO bvo) throws Exception {
		
		System.out.println(" S : bookRegister(bookVO bvo) 호출! ");
		
	
		
		
		
		
	};
	
	
	
	
	
	
	
	
	
}
