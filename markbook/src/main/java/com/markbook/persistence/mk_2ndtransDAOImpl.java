package com.markbook.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.markbook.domain.mk_2ndhand_bookVO;

@Repository
public class mk_2ndtransDAOImpl implements mk_2ndtransDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	private static final Logger logger = LoggerFactory.getLogger(mk_2ndtransDAOImpl.class);
	
	// 2ndTransMapper.xml 파일에 접근가능한 이름(주소)
	private static final String namespace = "com.markbook.mapper.2ndTransMapper";

	@Override
	public List<mk_2ndhand_bookVO> getBookList() throws Exception {
		
		logger.info(" DAO : getBookList() 호출 " );
		
		List<mk_2ndhand_bookVO> bookList = sqlSession.selectList(namespace+".getlist");
				
		return bookList;
	}

	@Override
	public void bookRegister(mk_2ndhand_bookVO bvo) throws Exception {
		
		logger.info(" DAO : bookRegister() 호출 ");
		
		sqlSession.insert(namespace + ".bookregister", bvo);
		
		logger.info(" DAO : 매물 데이터 입력완료");
				
	}
	
	

}
