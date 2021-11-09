package com.markbook.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.markbook.domain.mk_requestBoardVO;
import com.markbook.service.mk_requestBoardService;

@Controller
@RequestMapping("/mk_requestBoard/*")
public class mk_requestBoardController {

	private static final Logger logger = LoggerFactory.getLogger(mk_requestBoardController.class);
	  
	@Inject
	   private mk_requestBoardService service;
	   
	//http://localhost:8088/markbook/mk_requestBoard/add
	@RequestMapping(value="/add",method = RequestMethod.GET)
	public void addGET(Model model) throws Exception{
		Integer count=service.countBoard();
		if(count ==null) {
			count =1;
		}
		model.addAttribute("r_num",count);
		
		logger.info("add.jsp");
	}
	
	@RequestMapping(value="/add",method =RequestMethod.POST)
	public String addPOST(mk_requestBoardVO rbvo)throws Exception{

	
		
		logger.info("확인");
		service.addBoard(rbvo);
		return "redirect:/mk_requestBoard/list";
	}
}
