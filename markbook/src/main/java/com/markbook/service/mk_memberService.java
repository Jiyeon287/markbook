package com.markbook.service;

import com.markbook.domain.mk_memberVO;

public interface mk_memberService {
	
	// 아이디 중복 체크
	public int memberIdChk(String m_id) throws Exception;
	
	// 회원가입
	public void memberInsert(mk_memberVO mvo) throws Exception;
	
	// 로그인 체크
	public boolean memberLoginChk(mk_memberVO mvo) throws Exception;
	
	// 소셜 가입 체크
	public void socialCheck(mk_memberVO mvo) throws Exception;
}
