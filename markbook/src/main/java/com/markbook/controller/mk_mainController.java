package com.markbook.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.markbook.service.mk_mainService;


@Controller
@RequestMapping("/main/*")	
public class mk_mainController {
	
	private static final Logger logger = LoggerFactory.getLogger(mk_mainController.class);
	
	@Inject
	private mk_mainService service;

}
