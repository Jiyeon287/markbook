package com.markbook.persistence;

import com.markbook.domain.mk_memberVO;

public interface mk_memberDAO {
	
	// 아이디 중복 체크
	public int memberIdChk(String m_id) throws Exception;
	
	// 회원가입
	public void memberInsert(mk_memberVO mvo) throws Exception;
	
	// 로그인 체크
	public boolean memberLoginChk(mk_memberVO mvo) throws Exception;
	
	// 소셜 가입 체크
	public void socialCheck(mk_memberVO mvo) throws Exception;
	
	//소셜 회원가입(네이버)
	public void naverJoin(mk_memberVO mvo) throws Exception;
	
	//비밀번호 찾기 중 id에 맞는 이메일 db에서 불러오기
//	public String emailChk(String m_id) throws Exception;
	
	//비밀번호 찾기 중 아이디확인
	public mk_memberVO readMember(String m_id) throws Exception;
	
	// 비밀번호 변경
	public void updatePw(mk_memberVO vo) throws Exception;

	// 아이디 찾기
	public String findId(mk_memberVO mvo) throws Exception;
}
