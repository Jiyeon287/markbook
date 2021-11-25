package com.markbook.persistence;

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
		
	}


	// 도서 목록
	@Override
	public void bookList(mk_bookVO lvo) throws Exception {
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
