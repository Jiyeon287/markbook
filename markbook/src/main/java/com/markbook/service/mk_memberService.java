package com.markbook.service;

public interface mk_memberService {
	
	// 아이디 중복 체크
	public boolean memberIdChk(String m_id) throws Exception;
}
