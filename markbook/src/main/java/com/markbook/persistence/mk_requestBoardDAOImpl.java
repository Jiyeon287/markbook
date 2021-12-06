package com.markbook.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.markbook.domain.mk_requestBoardVO;

@Repository
public class mk_requestBoardDAOImpl implements mk_requestBoardDAO{
	//디비연결
	@Inject
	private SqlSession sqlSession;

	private static final String namespace="com.markbook.mapper.requestBoardMapper";
	
	//요청 게시판 글 등록
	@Override
	public void addBoard(mk_requestBoardVO rbvo) {
		System.out.println("DAO:addBoard 호출@@@");
		sqlSession.insert(namespace+".addBoard",rbvo);
		
		
	}

	//게시글 총 갯수
	@Override
	public int countBoard() throws Exception {
	System.out.println("DAO:countBoard 호출 @@");
	
	return sqlSession.selectOne(namespace+".requestCount");
	}

	@Override
	public List<mk_requestBoardVO> requestList() {
		System.out.println("DAO:list 호출 @@");
		
		
		return sqlSession.selectList(namespace+".requestList");
	}
    //요청게시판 관리자 상세페이지
	@Override
	public mk_requestBoardVO requestDetail(int r_num) {
		mk_requestBoardVO rvo= sqlSession.selectOne(namespace+".requestDetail",r_num);
		
		return rvo;
		
	}

	
}
