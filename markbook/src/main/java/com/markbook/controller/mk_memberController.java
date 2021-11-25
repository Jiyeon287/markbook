package com.markbook.controller;

import java.io.PrintWriter;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.markbook.domain.mk_memberVO;
import com.markbook.service.mk_memberService;

@Controller
@RequestMapping("/mk_member/*")
public class mk_memberController {
	
	@Inject private mk_memberService service;

	private static final Logger logger = LoggerFactory.getLogger(mk_memberController.class);
	
	// http://localhost:8088/markbook/mk_member/login
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public void memberLoginGET() throws Exception {
		System.out.println("로그인");
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public void memberLoginPOST(mk_memberVO mvo, HttpServletResponse response, HttpSession session) throws Exception {
		System.out.println("로그인 진행중");
		
		boolean flag = service.memberLoginChk(mvo);
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		if (flag) {
			session.setAttribute("m_id", mvo.getM_id());
			out.print("<script>location.href='/markbook/index';</script>");
			out.flush();
		}
		else {
			out.print("<script>alert('아이디 또는 비밀번호가 틀립니다.'); history.back();</script>");
			out.flush();
		}
	}
	
	@RequestMapping(value="/gg_login", method=RequestMethod.POST)
	public void memberGgloginPOST(mk_memberVO mvo, HttpSession session, HttpServletResponse response) throws Exception {
		System.out.println("소셜 로그인 진행중" +mvo.getM_id());
		
		service.socialCheck(mvo);
		// session.setAttribute("m_id", mvo.getM_id());
	}
	
	@RequestMapping(value="/joinCheck", method=RequestMethod.GET)
	public void joinCheck() throws Exception {
		System.out.println("개인정보수집 동의");
	}
	
	// http://localhost:8088/markbook/mk_member/join
	@RequestMapping(value="/join", method=RequestMethod.GET)
	public void memberJoinGET() throws Exception {
		System.out.println("회원가입");
	}
	
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public void memberJoinPOST(mk_memberVO mvo, HttpServletResponse response) throws Exception {
		System.out.println("회원가입 진행중 "+mvo);
		
		service.memberInsert(mvo);
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.print("<script>alert('회원가입 완료'); location.href='/markbook/mk_member/login';</script>");
		out.flush();
	}
	
	@ResponseBody
	@RequestMapping(value="/idchk", method=RequestMethod.POST)
	public int memberIdCheck(mk_memberVO mvo) throws Exception {
		
		System.out.println("아이디 중복체크");
		
		return service.memberIdChk(mvo.getM_id());
	}
	
	@RequestMapping(value="/findInfo", method=RequestMethod.GET)
	public void findMemberInfo() throws Exception {
		System.out.println("회원 정보 찾기");
	}
}
