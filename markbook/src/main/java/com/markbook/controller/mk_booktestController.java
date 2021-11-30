package com.markbook.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	int novel = 0;
	int essay = 0;
	int travel = 0;
	int economy = 0;
	int it = 0;
	int history = 0;
	
	@RequestMapping(value="/booktest1", method=RequestMethod.GET)
	public void check() throws Exception {
		logger.info("hello world");
		
		novel = 0;
		essay = 0;
		travel = 0;
		economy = 0;
		it = 0;
		history = 0;
		
	}
	
	@RequestMapping(value="/booktest1", method=RequestMethod.POST)
	public String test1(@RequestParam("answer") String answer) throws Exception{
		logger.info("booktest1 post 접근");
		logger.info(answer);
		
		if(answer.equals("one")) {
			economy = economy + 1;
			it = it +1;
			history = history + 1;
			
		}else {
			novel = novel + 3;
			essay = essay + 3;
			travel = travel + 3;
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
		
		
		if(answer.equals("one")) {
			economy = economy + 15;
			
		}if(answer.equals("two")) {
			novel = novel + 1;
			
		}if(answer.equals("three")) {
			travel = travel + 5;
			essay = essay +5;
			
		}if(answer.equals("four")) {
			history = history + 30;
			it = it + 30;
		}
		return "redirect:/mk_booktest/booktest3";
	}
	
	@RequestMapping(value="/booktest3", method=RequestMethod.GET)
	public void check3() throws Exception {
		logger.info("hello world");

		
	}
	
	@RequestMapping(value="/booktest3", method=RequestMethod.POST)
	public String test3(@RequestParam("answer") String answer) throws Exception{
		logger.info("booktest3 post 접근");
		logger.info(answer);
		
		if(answer.equals("one")) {
			travel = travel + 15;
			
		}if(answer.equals("two")) {
			novel = novel + 15;
			
		}if(answer.equals("three")) {
			essay = essay + 15;
			
		}
		return "redirect:/mk_booktest/booktest4";
	
	}
	
	@RequestMapping(value="/booktest4", method=RequestMethod.GET)
	public void check4() throws Exception {
		logger.info("hello world");
		
		
	}
	
	@RequestMapping(value="/booktest4", method=RequestMethod.POST)
	public String test4(@RequestParam("answer") String answer) throws Exception{
		logger.info("booktest3 post 접근");
		logger.info(answer);

		if(answer.equals("one")) {
			novel = novel + 4;
			travel = travel + 4;
			
		}if(answer.equals("two")) {
			economy = economy + 4;
			it = it + 4;
			history = history +4;
			
		}
		return "redirect:/mk_booktest/booktest5";
	
	}
	
	@RequestMapping(value="/booktest5", method=RequestMethod.GET)
	public void check5() throws Exception {
		logger.info("hello world");

		
	}
	
	@RequestMapping(value="/booktest5", method=RequestMethod.POST)
	public String test5(@RequestParam("answer") String answer) throws Exception{
		logger.info("booktest3 post 접근");
		logger.info(answer);

		if(answer.equals("one")) {
			economy = economy + 20;
			
		}if(answer.equals("two")) {
			travel = travel + 10;
			
		}if(answer.equals("three")) {
			essay = essay +15;
			
		}
		return "redirect:/mk_booktest/testResult";
	
	}
	
	@RequestMapping(value="/testResult", method=RequestMethod.GET)
	public void testResult(Model model) throws Exception {
		logger.info("hello world");
		
		// ArrayList 준비
		ArrayList<Integer> list = new ArrayList<>(Arrays.asList(novel,economy,travel,essay,it,history));
		System.out.println(list); // [0, 3, 2, 1, 5]
		// Max
		int max = Collections.max(list);
		System.out.println(max); // 5

		//max값이 어떤 값인지 알아내서 그에 맞는 결과 출력
		
		String result = "";
		if(novel == max) {
			System.out.println("novel");
			result = "novel";
			model.addAttribute("result",result);
		}if(economy == max) {
			System.out.println("economy");
			result = "economy";
			model.addAttribute("result",result);
		}if(travel == max) {
			System.out.println("travel");
			result = "travel";
			model.addAttribute("result",result);
		}if(essay == max) {
			System.out.println("essay");
			result = "essay";
			model.addAttribute("result",result);
		}if(it == max) {
			System.out.println("it");
			result = "it";
			model.addAttribute("result",result);
		}if(history == max) {
			System.out.println("history");
			result = "history";
			model.addAttribute("result",result);
		}
	
		

		
	}
	
}

