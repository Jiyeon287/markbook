package com.markbook.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/mk_booktest/*")
public class mk_booktestController {

	private static final Logger logger = LoggerFactory.getLogger(testController.class);
	
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public void check() throws Exception {
		logger.info("hello world");
		
		
	}
}
