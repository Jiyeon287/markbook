package com.markbook.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.markbook.domain.Criteria;
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

	
	// 도서 목록 페이징 처리
	@Override
	public List<mk_bookVO> bListCri(Criteria cri) throws Exception {
		
		System.out.println(" DAO : bListCri(Criteria cri) 호출 ");
		
		return sqlSession.selectList(namespace+".listCri",cri);
	}
	
	// 도서 목록 전체 갯수 조회 
	@Override
	public int countBook(Criteria cri) throws Exception {
		
		System.out.println(" DAO : countBook(Criteria cri) 호출 ");
		
		return sqlSession.selectOne(namespace+".countBook",cri);
	}
	
	// 도서 목록 개별 정보 조회 
	@Override
	public mk_bookVO getBInfo(Integer b_num) throws Exception {
		
		System.out.println(" DAO : getBInfo(Integer b_num) 호출 ");
		
		mk_bookVO bvo = sqlSession.selectOne(namespace+".bInfo", b_num);
		return null;
	}
	
	// 도서 수정
	@Override
	public void updateBook(mk_bookVO bvo) throws Exception {

		System.out.println(" DAO : updateBook(mk_bookVO bvo) 호출 ");
		
		sqlSession.update(namespace+".bookUpdate", bvo);
	}


	// 도서 삭제
	@Override
	public void deleteBook(Integer b_num) throws Exception {
		
		System.out.println(" DAO : deleteBook(Integer b_num) 호출 ");
		
		sqlSession.delete(namespace+".bookDelete",b_num);
	}










	
	
	
	
	
	
	
	
	
	
	
	
}
