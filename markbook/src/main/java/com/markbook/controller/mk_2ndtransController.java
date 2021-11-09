package com.markbook.controller;

import java.util.List;

import javax.inject.Inject;

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
	@RequestMapping(value = "/mainlist", method = RequestMethod.GET)
	public String mainGET(Model model) throws Exception {
		
		logger.info(" C: mainGET() 호출 ");
	
		int pageNum = 1;

		List<mk_2ndhand_bookVO> bookList = service.getBookList();
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("bookList", bookList);
		
		return "/mk_2ndTrans/booklist";

	}
	
	
	
}
