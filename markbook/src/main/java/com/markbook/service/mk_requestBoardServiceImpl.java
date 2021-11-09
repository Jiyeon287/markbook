package com.markbook.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.markbook.domain.mk_requestBoardVO;
import com.markbook.persistence.mk_requestBoardDAO;

@Service
public class mk_requestBoardServiceImpl implements mk_requestBoardService{
	
	@Inject
	private mk_requestBoardDAO rbdao;
	
// 요청게시판 글 등록
	@Override
	public void addBoard(mk_requestBoardVO rbvo) {
		rbdao.addBoard(rbvo);
		
	}
// 게시글 수 
	@Override
	public Integer countBoard() throws Exception {
		
		return rbdao.countBoard();
	}

}
