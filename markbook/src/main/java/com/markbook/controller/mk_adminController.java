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

import com.markbook.domain.Criteria;
import com.markbook.domain.mk_bookVO;
import com.markbook.domain.pageMaker;
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
		
		int pageNum = 1;
		
		model.addAttribute("pageNum", pageNum);
		
		return "/mk_admin/main";
	}
	
	
	// 도서 등록 (GET)
	// http://localhost:8088/markbook/mk_admin/bookRegister
	@RequestMapping(value = "/bookRegister", method = RequestMethod.GET)
	public String bookRegisterGET(HttpSession session) throws Exception {
		
		System.out.println(" bookRegisterGET() 호출 ");
		
		return "/mk_admin/bookRegister";
	}
	
	// 도서 등록 (POST)
	@RequestMapping(value = "/bookRegister", method = RequestMethod.POST)
	public String bookRegisterPOST(mk_bookVO bvo) throws Exception {
		
		System.out.println(" bookRegisterPOST() 호출 ");
		
		service.bookRegister(bvo);
		
		return "redirect:/mk_admin/bookList";
	}
	
	
	// 도서 목록 (GET) (페이징 처리)
	// http://localhost:8088/markbook/mk_admin/bookList
	@RequestMapping(value = "/bookList", method = RequestMethod.GET)
	public String bookListGET(Criteria cri, Model model) throws Exception {
		
		System.out.println(" C : bookListGET() 호출 -> view 페이지 이동 ");

		// 페이징처리 정보생성
		pageMaker pm = new pageMaker();
		pm.setCri(cri);
		pm.setTotalCount(service.countBook(cri));
		
		// 서비스 동작 호출
		model.addAttribute("bookList",service.getBookList());
		// Criteria 객체 정보 저장 (pageStart/pageSize)
		model.addAttribute("pm",pm);
		
		return "/mk_admin/bookList";
	}
	
	// 도서 수정 (GET)
	// http://localhost:8088/markbook/mk_admin/bookUpdate
	@RequestMapping(value = "", method = {RequestMethod.GET})
	public void bookUpdateGET(Integer b_num, Integer pageNum, Model model) throws Exception {
		
		System.out.println(" C : bookUpdateGET() 호출 ");
		
		// 글번호에 해당하는 글 정보 가져와서
		mk_bookVO bvo = service.getBInfo(b_num);
		// model 객체에 저장
		model.addAttribute("bvo", bvo);
		
		//return "/mk_admin/bookUpdate";
	}
	
	// 도서 수정 (POST)
	@RequestMapping(value = "/bookUpdate", method = RequestMethod.POST)
	public String bookUpdatePOST(mk_bookVO bvo) throws Exception {
		
		System.out.println(" C : bookUpdatePOST() 호출 ");
		
		service.updateBook(bvo);
		
		System.out.println(" 도서 정보 수정 완료 ");
	
		return "redirect:/mk_admin/bookList";
	}
	
	
	// 도서 삭제 (GET)
	@RequestMapping(value = "bookDelete", method = RequestMethod.GET)
	public String bookDeleteGET(Integer b_num, HttpSession session) throws Exception {
		
		System.out.println(" C : bookDeleteGET() 호출 ");
		
		service.deleteBook(b_num);
		
		System.out.println(" 삭제 완료 ");
		
		return "redirect:/mk_admin/bookList";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
