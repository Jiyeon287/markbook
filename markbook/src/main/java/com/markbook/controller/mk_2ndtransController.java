package com.markbook.controller;

import java.io.File;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.markbook.domain.mk_2ndhand_bookVO;
import com.markbook.service.mk_2ndtransService;

@Controller
@RequestMapping("/mk_2nd/*")
public class mk_2ndtransController {
	
	private static final Logger logger = LoggerFactory.getLogger(mk_2ndtransController.class);
	
	@Inject
	private mk_2ndtransService service;
	
	// 중고책 거래 메인 페이지 호출
	// http://localhost:8088/markbook/mk_2nd/booklist
	@RequestMapping(value = "/booklist", method = RequestMethod.GET)
	public String mainGET(Model model) throws Exception {
		
		logger.info(" C: booklistGET() 호출 ");
	
		int pageNum = 1;

		List<mk_2ndhand_bookVO> bookList = service.getBookList();
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("bookList", bookList);
		
		return "/mk_2ndTrans/booklist";

	}
	
	// 중고책 거래 매물 등록 페이지 호출
	// 중고책 매물 등록 페이지 (GET)
	@RequestMapping(value = "/bookregister", method = RequestMethod.GET)
	public String RegisterGET(HttpSession session, Model model) throws Exception {

		logger.info("C: RegisterGET() 호출");
		
		String m_id = (String) session.getAttribute("m_id");
		//임시 아이디 설정
		m_id = "tempId";

		/*
		 * if (m_id == null) { return "redirect:/login"; }
		 */
		
		model.addAttribute("m_id", m_id);

		return "/mk_2ndTrans/bookregister";
	}
	
	// 중고책 매물 페이지 등록(POST)
	@RequestMapping(value = "/bookregister", method = RequestMethod.POST)
	public String bookRegisterPOST(mk_2ndhand_bookVO bvo) throws Exception {

		logger.info("C: bookRegisterPOST() 호출");

		System.out.println(bvo);
		service.bookRegister(bvo);

		return "redirect:/mk_2ndTrans/booklist";
	}

	// 사진업로드 기능(POST)
	@RequestMapping(value = "/imgRegister", method = RequestMethod.POST)
	public void imgRegisterPOST(MultipartFile b2_image, HttpServletRequest request) throws Exception {

		logger.info("imgRegisterPOST() 실행");
		
		logger.info("파일 이름 : " + b2_image.getOriginalFilename());
		logger.info("파일 타입 : " + b2_image.getContentType());
		logger.info("파일 크기 : " + b2_image.getSize());
				
		
		ServletContext servletContext = request.getSession().getServletContext();
		String uploadFolder = servletContext.getRealPath("./resources/upload");
		 
		logger.info(uploadFolder);

		// 폴더생성
		File uploadPath = new File(uploadFolder);

		if (uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}

		// 파일 이름
		String uploadFileName = b2_image.getOriginalFilename();

		// 파일 위치, 파일 이름을 합친 File 객체
		File saveFile = new File(uploadPath, uploadFileName);

		// 파일 저장
		try {
			b2_image.transferTo(saveFile);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	
}
