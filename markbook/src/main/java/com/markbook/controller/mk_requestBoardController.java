package com.markbook.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.markbook.domain.Criteria;
import com.markbook.domain.mk_requestBoardVO;
import com.markbook.domain.Page;
import com.markbook.domain.pageMaker;
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
		int count=service.jcount();
		
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
	
	//http://localhost:8088/markbook/mk_admin/request_list?pgnum=1
	@RequestMapping(value="/mk_admin/request_detail",method=RequestMethod.GET)
	public void adminRequestDetailGET(@RequestParam("r_num") int r_num,Model  model,@RequestParam("pgnum") int pgnum,
			@RequestParam("result") int result
			)throws Exception{
		
		mk_requestBoardVO detailp= service.requestDetail(r_num);
		
		model.addAttribute("page",detailp);
		model.addAttribute("pgnum",pgnum);
		model.addAttribute("result",result);
		
	}
	
	@RequestMapping(value="/mk_admin/request_list",method=RequestMethod.GET)
	public void adminRequestList(Model model,@RequestParam("pgnum") int pgnum,
			@RequestParam(value = "searchType",required = false, defaultValue = "r_title") String searchType,
			   @RequestParam(value = "keyword",required = false, defaultValue = "") String keyword,
			   @RequestParam(value = "result",required = false, defaultValue = "4") int result)throws Exception{	
		logger.info("@@@요청게시판 목록@@@");
        
	
		Page page=new Page();
		
	    page.setNum(pgnum);
	    int count;
	    if(result ==4) {
	    	
	    count=service.count(searchType,keyword);
	    }else {
	    count=service.count2(result);
	    logger.info("result값의 count는 ");
	    }
	    
	    
		page.setCount(count);
		// 검색 타입과 검색어
//		page.setSearchTypeKeyword(searchType, keyword);
		
		page.setSearchType(searchType);
		page.setKeyword(keyword);
		
		List<mk_requestBoardVO> list = service.requestList(page.getDisplayPost(), page.getPostNum(), searchType, keyword,result);

		model.addAttribute("list", list);   
	    model.addAttribute("page",page);
		model.addAttribute("select", pgnum);
		model.addAttribute("result",result);
	     

		
	}
	
	@RequestMapping(value="/mk_admin/request_adminpopup",method=RequestMethod.GET)
	public void adminRequestPopupGET(Model model,@RequestParam("r_num") int r_num)throws Exception{
		
		mk_requestBoardVO detailp= service.requestDetail(r_num);
		model.addAttribute("page",detailp);
		model.addAttribute("r_num",r_num);
         
		 	
	}
	
	@RequestMapping(value="/mk_admin/request_adminpopup",method=RequestMethod.POST)
	public String adminRequestPopupPOST(Model model,mk_requestBoardVO rvo)throws Exception{
		
		service.reqeustUpdate(rvo);
		logger.info("수정완료!");
		
  return "/mk_admin/request_nothing";
	}
	

	
	
}
