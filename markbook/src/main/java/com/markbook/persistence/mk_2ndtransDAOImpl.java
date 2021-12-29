package com.markbook.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.markbook.domain.book_orderVO;
import com.markbook.domain.mk_2ndhand_bookVO;
import com.markbook.domain.mk_memberVO;
import com.markbook.model.sjCriteria;

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
	
	// 페이징 리스트 불러오기
	@Override
	public List<mk_2ndhand_bookVO> getlistCri(sjCriteria cri) throws Exception {
		
		logger.info("getListCri(sjCriteria cri) 호출 !");

		return sqlSession.selectList(namespace + ".getListCri", cri);
	}
	
	// 중고거래 총 갯수 조회
	@Override
	public int count(sjCriteria cri) throws Exception {
		
		return sqlSession.selectOne(namespace+".count", cri);
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
	
	// 카트 리스트 조회
	@Override
	public List<mk_2ndhand_bookVO> getCart(String b2_buyer_id) throws Exception {
		
		logger.info(" DAO : getCart() 호출 ");
		
		List<mk_2ndhand_bookVO> cartList = sqlSession.selectList(namespace+".getcart", b2_buyer_id);
		
		logger.info(" DAO : getCart() 호출 완료 ");
		
		return cartList;
	}
	
	
	// 결제창 회원정보 조회
	@Override
	public mk_memberVO getMember(String m_id) throws Exception {
		
		logger.info(" DAO : getMember() 호출 " );
		
		mk_memberVO mvo = sqlSession.selectOne(namespace+".getmember",m_id);
						
		return mvo;
		
	}
	
	// 판매정보 업데이트
	@Override
	public void soldupdate(Integer b2_num) throws Exception {
		
		logger.info(" DAO : soldupdate() 호출 ");
		
		sqlSession.update(namespace + ".soldupdate", b2_num);
		
		logger.info(" DAO : 판매정보 수정 완료");
		
		
	}
	
	// 주문 정보 등록
	@Override
	public void bookchechout(book_orderVO bvo) throws Exception {
		
		logger.info(" DAO : bookchechout() 호출 ");
		
		sqlSession.insert(namespace + ".bookchechout", bvo);
		
		logger.info(" DAO : 주문 입력완료");
	}
	
	// 서치 리스트
	@Override
	public List<mk_2ndhand_bookVO> searchListAll(String searchOption, String keyword, sjCriteria cri) throws Exception {
		
		logger.info(" DAO : searchListAll() 호출 ");
		
		System.out.println("dao : cri정보"+cri);
				
		// 검색옵션과 키워드를 맵에 저장
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		map.put("skip", cri.getSkip());
		map.put("pageAmount", cri.getPageAmount());
				
		return sqlSession.selectList(namespace + ".searchlist", map);
	}
	
	// 서치 카운트
	@Override
	public int countSearch(String searchOption, String keyword) throws Exception {
		
		logger.info(" DAO : countSearch() 호출 ");
		
		// 검색옵션과 키워드를 맵에 저장
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		
		return sqlSession.selectOne(namespace + ".countsearch", map);
	}

	
	

}
