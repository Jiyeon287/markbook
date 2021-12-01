package com.markbook.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.markbook.domain.mk_bookVO;

@Repository
public class mk_adminDAOImpl implements mk_adminDAO {

	@Inject
	private SqlSession sqlSession;
	
	private static final Logger logger = LoggerFactory.getLogger(mk_adminDAOImpl.class);
	
	private static final String namespace = "com.markbook.mapper.adminMapper";

	
	// 도서 등록
	@Override
	public void bookRegister(mk_bookVO bvo) throws Exception {
		
		System.out.println(" bookRegister(mk_bookVO bvo) 호출 ");
		
		sqlSession.insert(namespace+".bookRegister",bvo);
		
		System.out.println(" bookRegister(mk_bookVO bvo) 등록 ");
	}


	// 도서 목록
	@Override
	public List<mk_bookVO> getBookList() throws Exception {
		
		System.out.println( " DAO : getBookList() 호출 ");
		
		List<mk_bookVO> bookList = sqlSession.selectList(namespace+".bookList");
		
		return bookList;
	}


	
	
	
	
	
	
	
	
	
	
	
	
}
