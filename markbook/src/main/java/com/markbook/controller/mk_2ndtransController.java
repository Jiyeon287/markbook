package com.markbook.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/mk_2ndTrans/*")
public class mk_2ndtransController {
	
	private static final Logger logger = LoggerFactory.getLogger(mk_2ndtransController.class);
	
	// 중고책 판매 리스트 페이지
	@RequestMapping(value="/booklist", method=RequestMethod.GET)
	public void check() throws Exception {
		logger.info("booklist.jsp");
	}
	
	
	
}
