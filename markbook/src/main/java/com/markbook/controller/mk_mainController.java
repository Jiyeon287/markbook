package com.markbook.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.markbook.service.mk_mainService;


@Controller
@RequestMapping("/mk_main/*")
public class mk_mainController {
	
	@Inject private mk_mainService service;
	
	@RequestMapping(value="index",method=RequestMethod.GET)
	public void mainGet() throws Exception{
		System.out.println("메인도착");
	}
	

}
