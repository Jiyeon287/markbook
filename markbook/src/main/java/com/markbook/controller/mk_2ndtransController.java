package com.markbook.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.markbook.domain.mk_2ndhand_bookVO;
import com.markbook.service.mk_2ndtransService;

@Controller
@RequestMapping("/mk_2nd/*")
public class mk_2ndtransController {
	
	private static final Logger logger = LoggerFactory.getLogger(mk_2ndtransController.class);
	
	@Inject
	private mk_2ndtransService service;
	
	// 중고책 거래 메인 페이지 호출
	// http://localhost:8088/markbook/mk_2nd/booklist
	@RequestMapping(value = "/booklist", method = RequestMethod.GET)
	public String mainGET(Model model) throws Exception {
		
		logger.info(" C: booklistGET() 호출 ");
	
		int pageNum = 1;

		List<mk_2ndhand_bookVO> bookList = service.getBookList();
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("bookList", bookList);
		
		return "/mk_2ndTrans/booklist";

	}
	
	// 중고책 거래 매물 등록 페이지 호출
	// 중고책 매물 등록(GET)
	@RequestMapping(value = "/bookregister", method = RequestMethod.GET)
	public String RegisterGET(HttpSession session, Model model) throws Exception {

		logger.info("C: RegisterGET() 호출");
		
		String m_id = (String) session.getAttribute("m_id");
		//임시 아이디 설정
		m_id = "tempId";

		/*
		 * if (m_id == null) { return "redirect:/login"; }
		 */
		
	
		
		model.addAttribute("m_id", m_id);

		return  "/mk_2ndTrans/bookregister";
	}
	
	// 중고책 거래 매물 
	
	
	
}
