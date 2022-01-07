package com.markbook.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class mk_mainDAOImpl implements mk_mainDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	private static String namespace = "com.markbook.mapper.mainMapper";

}
