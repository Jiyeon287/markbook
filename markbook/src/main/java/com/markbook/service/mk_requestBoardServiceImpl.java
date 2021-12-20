package com.markbook.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.markbook.domain.Criteria;
import com.markbook.domain.mk_requestBoardVO;
import com.markbook.domain.Page;
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
	public int count() throws Exception {
		
		return rbdao.count();
	}
	
	@Override
	public List<mk_requestBoardVO> requestList(int display,int postnum) {
		
		return rbdao.requestList(display, postnum);
	}
	@Override
	public mk_requestBoardVO requestDetail(int r_num) {
		mk_requestBoardVO rvo = rbdao.requestDetail(r_num);
		return rvo;
		
	}
	@Override
	public void reqeustUpdate(mk_requestBoardVO rvo) {
		rbdao.requestUpdate(rvo);
		
	}

}
