package com.markbook.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class mk_memberDAOImpl implements mk_memberDAO {

	@Inject
	private SqlSession sqlSession;
	
	private static String namespace = "com.markbook.mapper.memberMapper";
	
	@Override
	public int memberIdChk(String m_id) throws Exception {

		return sqlSession.selectOne(namespace + ".idChk", m_id);
	}

}
