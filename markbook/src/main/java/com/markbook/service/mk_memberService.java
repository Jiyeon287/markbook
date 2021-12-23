package com.markbook.service;

import javax.servlet.http.HttpServletResponse;

import com.markbook.domain.mk_memberVO;

public interface mk_memberService {
	
	// 아이디 중복 체크
	public int memberIdChk(String m_id) throws Exception;
	
	// 회원가입
	public void memberInsert(mk_memberVO mvo) throws Exception;
	
	// 로그인 체크
	public boolean memberLoginChk(mk_memberVO mvo) throws Exception;
	
	// 소셜 가입 체크(구글)
	public void socialCheck(mk_memberVO mvo) throws Exception;
	
	//소셜 가입 체크(네이버-아이디) -> 아이디 중복체크 메소드 활용
	
	//소셜 회원가입(네이버)
	public void naverJoin(mk_memberVO mvo) throws Exception;
	
	//임시비밀번호 네이버로 전송
	public void sendEmail(mk_memberVO vo) throws Exception;
	
	//임시비밀번호 생성
	public void findPw(HttpServletResponse resp, mk_memberVO vo) throws Exception;
	
	// 아이디 찾기
	public String findId(mk_memberVO mvo) throws Exception;
	
}
