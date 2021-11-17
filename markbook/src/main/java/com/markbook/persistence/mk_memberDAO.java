package com.markbook.persistence;

import com.markbook.domain.mk_memberVO;

public interface mk_memberDAO {
	
	// 아이디 중복 체크
	public int memberIdChk(String m_id) throws Exception;
	
	// 회원가입
	public void memberInsert(mk_memberVO mvo) throws Exception;
}
