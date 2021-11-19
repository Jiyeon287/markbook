package com.markbook.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.markbook.domain.mk_memberVO;
import com.markbook.persistence.mk_memberDAO;

@Service
public class mk_memberServiceImpl implements mk_memberService {

	@Inject
	private mk_memberDAO mdao;
	
	@Override
	public int memberIdChk(String m_id) throws Exception {
		
		return mdao.memberIdChk(m_id);
	}

	@Override
	public void memberInsert(mk_memberVO mvo) throws Exception {
		
		mdao.memberInsert(mvo);
	}

	@Override
	public boolean memberLoginChk(mk_memberVO mvo) throws Exception {

		return mdao.memberLoginChk(mvo);
	}


}
