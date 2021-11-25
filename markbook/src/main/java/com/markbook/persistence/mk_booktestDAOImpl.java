package com.markbook.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

@Repository
public class mk_booktestDAOImpl implements mk_booktestDAO {

	//디비연결 => 객체 의존주입 (root-context.xml)
	@Inject
	private SqlSession sqlSession;

	private static final Logger logger = LoggerFactory.getLogger(mk_booktestDAOImpl.class);
	
	//memberMapper.xml 파일에 접근가능한 이름(주소)
	private static final String namespace ="com.markbook.mapper.booktestMapper";
	
	@Override
	public void answerOne1() throws Exception{
		
		logger.info(" DAO : answerOne1 호출 " );
		sqlSession.insert(namespace+".answerOne1");
	}

	@Override
	public void answerOne2() throws Exception {
		logger.info(" DAO : answerOne2 호출 " );
		sqlSession.insert(namespace+".answerOne2");		
	}

	@Override
	public int answerTwo() throws Exception {
		logger.info("DAO: answerTwo 호출");
		int testnum = sqlSession.selectOne(namespace+".answerTwo");
		return testnum;
	}
	@Override
	public void answerTwo1(int testnum) throws Exception {
		logger.info(" DAO : answerTwo1 호출 " );
		sqlSession.update(namespace+".answerTwo1",testnum);				
	}

	@Override
	public void answerTwo2(int testnum) throws Exception {
		logger.info(" DAO : answerTwo2 호출 " );
		sqlSession.update(namespace+".answerTwo2",testnum);				
	}

	@Override
	public void answerTwo3(int testnum) throws Exception {
		logger.info(" DAO : answerTwo3 호출 " );
		sqlSession.update(namespace+".answerTwo3",testnum);				
	}

	@Override
	public void answerTwo4(int testnum) throws Exception {
		logger.info(" DAO : answerTwo4 호출 " );
		sqlSession.update(namespace+".answerTwo4",testnum);				
	}


	 
}
