package com.markbook.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.markbook.domain.mk_bookVO;
import com.markbook.service.mk_adminService;
import com.mysql.cj.Session;

@Controller
@RequestMapping("/mk_admin/*")
public class mk_adminController {
	
	private static final Logger logger = LoggerFactory.getLogger(mk_adminController.class);
	
	@Inject 
	private mk_adminService service;
	
	
	// 관리자 메인 페이지 (GET)
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String adminMainGET(HttpSession session, Model model) throws Exception {
		
		System.out.println(" C : adminMainGET() 호출 ");
		
		String admin_id = (String) session.getAttribute("m_id");
		int pageNum = 1;
		
		return "/mk_admin/main";
	}
	
	
	// 도서 등록 (GET)
	// http://localhost:8088/markbook/mk_admin/bookRegister
	@RequestMapping(value = "/bookRegister", method = RequestMethod.GET)
	public String bookRegisterGET(HttpSession session) throws Exception {
		
		System.out.println(" bookRegisterGET() 호출 ");
		
		String admin_id = (String) session.getAttribute("m_id");
		
		return "/mk_admin/bookRegister";
	}
	
	// 도서 등록 (POST)
	@RequestMapping(value = "/bookRegister", method = RequestMethod.POST)
	public String bookRegisterPOST(mk_bookVO bvo, Model model) throws Exception {
		
		System.out.println(" bookRegisterPOST() 호출 ");
		System.out.println(bvo.toString());
		
		service.bookRegister(bvo);
		
		/* model.addAttribute("result","success"); */
		
		return "redirect:/mk_admin/bookList";
	}
	
	
	
	// 도서 목록 (GET)
	// http://localhost:8088/markbook/mk_admin/bookList
	@RequestMapping(value = "/bookList", method = RequestMethod.GET)
	public String bookListGET(Model model) throws Exception {
		
		System.out.println(" C : bookListGET() 호출 -> view 페이지 이동 ");

		
		// 서비스 동작 호출
		model.addAttribute("bookList",service.getBookList());
		
		return "/mk_admin/bookList";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
