package com.markbook.controller;

import java.util.List;

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
@RequestMapping("/*")
public class mk_requestBoardController {

	private static final Logger logger = LoggerFactory.getLogger(mk_requestBoardController.class);
	  
	@Inject
	   private mk_requestBoardService service;
	   
	//http://localhost:8088/markbook/mk_requestBoard/add
	@RequestMapping(value="/mk_requestBoard/add",method = RequestMethod.GET)
	public void addGET(Model model) throws Exception{
		int count=service.countBoard();
		
		if(count == 0) {
			count =1;
		}
		else {			
			count +=1;					
			
		}
		model.addAttribute("r_num",count);
		
	}
	
	@RequestMapping(value="/mk_requestBoard/add",method =RequestMethod.POST)
	public String addPOST(mk_requestBoardVO rbvo)throws Exception{
    System.out.println(rbvo);
	
		
		logger.info("확인");
		service.addBoard(rbvo);
		
		return "redirect:/mk_requestBoard/notice";
	}
	
	
	@RequestMapping(value="/mk_requestBoard/notice",method=RequestMethod.GET)
	public void noticeGET()throws Exception{	
	
		
		
	}
	
	@RequestMapping(value="/mk_requestBoard/book_popup",method=RequestMethod.GET)
	public void popupGET()throws Exception{	
	
		
		
	}
	//--------------------------------------------- < 관리자 >------------------------------------------------------------
	
	//http://localhost:8088/markbook/mk_admin/request_list
	@RequestMapping(value="/mk_admin/request_detail",method=RequestMethod.GET)
	public void adminRequestDetailGET()throws Exception{	
		
		
		
	}
	@RequestMapping(value="/mk_admin/request_list",method=RequestMethod.GET)
	public void adminRequestList(Model model)throws Exception{	
		List<mk_requestBoardVO> list= service.requestList();
		model.addAttribute("list",list);
		
		
		
		
		
		
	}
	
}
