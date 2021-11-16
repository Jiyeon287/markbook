package com.markbook.persistence;

public interface mk_memberDAO {
	
	// 아이디 중복 체크
	public boolean memberIdChk(String m_id) throws Exception;
	
}
