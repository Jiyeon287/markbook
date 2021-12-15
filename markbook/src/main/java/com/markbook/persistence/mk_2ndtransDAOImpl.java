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

	// 판매 페이지 리스트 불러오기
	@Override
	public List<mk_2ndhand_bookVO> getBookList() throws Exception {
		
		logger.info(" DAO : getBookList() 호출 " );
		
		List<mk_2ndhand_bookVO> bookList = sqlSession.selectList(namespace+".getlist");
				
		return bookList;
	}
	
	// 상품 등록
	@Override
	public void bookRegister(mk_2ndhand_bookVO bvo) throws Exception {
		
		logger.info(" DAO : bookRegister() 호출 ");
				
		sqlSession.insert(namespace + ".bookregister", bvo);
		
		logger.info(" DAO : 매물 데이터 입력완료");
				
	}
	
	// 상세 페이지 조회
	@Override
	public mk_2ndhand_bookVO getInfo(Integer b2_num) throws Exception {
		
		logger.info(" DAO : getInfo() 호출 " );
		
		mk_2ndhand_bookVO bvo = sqlSession.selectOne(namespace+".getinfo",b2_num);
						
		return bvo;
	}
	
	// 상세 페이지 수정하기
	@Override
	public void bookModify(mk_2ndhand_bookVO bvo) throws Exception {
		
		logger.info(" DAO : bookModify() 호출 ");
		
		sqlSession.update(namespace + ".bookupdate", bvo);
		
		logger.info(" DAO : 수정완료");	
	}
	
	// 상세 페이지 삭제하기
	@Override
	public void bookDelete(Integer b2_num) throws Exception {
		
		logger.info(" DAO : bookDelete() 호출 ");
		
		sqlSession.delete(namespace + ".bookdelete", b2_num);
		
		logger.info(" DAO : 삭제완료");	
		
	}
	
	// 중고책 입찰하기
	@Override
	public void bookBid(mk_2ndhand_bookVO bvo) throws Exception {
		
		logger.info(" DAO : bookBid() 호출 ");
		
		sqlSession.update(namespace + ".priceupdate", bvo);
		
		logger.info(" DAO : 입찰 가격 수정 완료");	
	}
	
	

}
