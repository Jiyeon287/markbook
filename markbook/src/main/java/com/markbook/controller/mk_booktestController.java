package com.markbook.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	public String test1(@RequestParam("answer") String answer) throws Exception{
		logger.info("booktest1 post 접근");
		logger.info(answer);
		
		if(answer.equals("one")) {
			service.answerOne1();
		}else {
			service.answerOne2();
		}
		return "redirect:/mk_booktest/booktest2";
	}
	
	@RequestMapping(value="/booktest2", method=RequestMethod.GET)
	public void check2() throws Exception {
		logger.info("hello world");
		
	}
	
	@RequestMapping(value="/booktest2", method=RequestMethod.POST)
	public String test2(@RequestParam("answer") String answer) throws Exception{
		logger.info("booktest2 post 접근");
		logger.info(answer);
		
		int testnum = service.answerTwo();
		logger.info("testnum:"+testnum);
		
		if(answer.equals("one")) {
			service.answerTwo1(testnum);
			
		}if(answer.equals("two")) {
			service.answerTwo2(testnum);
			
		}if(answer.equals("three")) {
			service.answerTwo3(testnum);
			
		}if(answer.equals("four")) {
			service.answerTwo4(testnum);
		}
		return "redirect:/mk_booktest/booktest3";
	}
}

