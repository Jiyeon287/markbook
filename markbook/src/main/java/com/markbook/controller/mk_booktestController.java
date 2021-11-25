package com.markbook.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.markbook.domain.mk_booktestVO;
import com.markbook.service.mk_booktestService;

@Controller
@RequestMapping("/mk_booktest/*")
public class mk_booktestController {

	private static final Logger logger = LoggerFactory.getLogger(mk_booktestController.class);
	
	@Inject
	private mk_booktestService service;
	
	@RequestMapping(value="/booktest1", method=RequestMethod.GET)
	public void check() throws Exception {
		logger.info("hello world");
		
	}
	
	@RequestMapping(value="/booktest1", method=RequestMethod.POST)
	public String test1(mk_booktestVO testVO) throws Exception{
		
		service.answerOne(testVO);
		return "redirect:/mk_booktest/booktest";
	}
}

