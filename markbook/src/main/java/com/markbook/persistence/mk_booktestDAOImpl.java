package com.markbook.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.markbook.domain.mk_booktestVO;

@Repository
public class mk_booktestDAOImpl implements mk_booktestDAO {

	//디비연결 => 객체 의존주입 (root-context.xml)
	@Inject
	private SqlSession sqlSession;

	private static final Logger logger = LoggerFactory.getLogger(mk_booktestDAOImpl.class);
	
	//memberMapper.xml 파일에 접근가능한 이름(주소)
	private static final String namespace ="com.g3.mapper.booktestMapper";
	
	@Override
	public void answerOne(mk_booktestVO testvo) throws Exception{
		
		logger.info(" DAO : answerOne 호출 " );
		sqlSession.insert(namespace+".answerOne", testvo);
	}
	 
}
