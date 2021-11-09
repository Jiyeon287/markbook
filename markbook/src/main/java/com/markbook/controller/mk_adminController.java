package com.markbook.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.markbook.service.mk_adminService;

@Controller
@RequestMapping("/mk_admin/*")
public class mk_adminController {
	
	private static final Logger logger = LoggerFactory.getLogger(mk_adminController.class);
	
	@Inject
	private mk_adminService service;
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String adminMainGET(HttpSession session, Model model) throws Exception {
		
		logger.info(" C : adminMainGET() 호출 ");
		
		String admin_id = (String) session.getAttribute("m_id");
		
		
		
		return "/mk_admin/main";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
