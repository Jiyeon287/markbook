package com.markbook.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/mk_2nd/*")
public class mk_2ndtransController {
	
	private static final Logger logger = LoggerFactory.getLogger(mk_2ndtransController.class);
	
	// 중고책 리스트 페이지 호출
	@RequestMapping(value = "/mainlist", method = RequestMethod.GET)
	public String mainGET() throws Exception {
		logger.info(" mainGET() 호출 ");
		
		return "/mk_2ndTrans/booklist";

	}
	
	
	
}
