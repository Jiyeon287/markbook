package com.markbook.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.markbook.domain.mk_booktestVO;
import com.markbook.persistence.mk_booktestDAO;

@Service
public class mk_booktestServiceImpl implements mk_booktestService {

	@Inject
	private mk_booktestDAO testdao;
	
	@Override
	public void answerOne(mk_booktestVO testvo) throws Exception {
		System.out.println("S: answerOne 호출");
		testdao.answerOne(testvo);
	}

}
