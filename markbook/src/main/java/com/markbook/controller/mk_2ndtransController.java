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

import com.markbook.domain.Criteria;
import com.markbook.domain.mk_2ndhand_bookVO;
import com.markbook.domain.pageMaker;
import com.markbook.model.sjCriteria;
import com.markbook.model.sjPageMaker;
import com.markbook.service.mk_2ndtransService;

@Controller
@RequestMapping("/mk_2ndTrans/*")
public class mk_2ndtransController {
	
	private static final Logger logger = LoggerFactory.getLogger(mk_2ndtransController.class);
	
	@Inject
	private mk_2ndtransService service;
	
	// 중고책 거래 메인 페이징 처리 페이지 호출 (GET)
	// http://localhost:8088/markbook/mk_2ndTrans/booklist
	@RequestMapping(value = "/booklist", method = RequestMethod.GET)
	public String booklistGET(HttpSession session, Model model, sjCriteria cri) throws Exception {
		
		logger.info(" C: booklistGET() 호출 ");
				
		// 페이징 처리 정보 생성
		sjPageMaker pm = new sjPageMaker();
		pm.setCri(cri);
		pm.setTotalCount(service.count(cri));
		
		System.out.println(cri);
		
		// Criteria 객체 정보 저장(pageStart/pageSize)
		model.addAttribute("bookList", service.getlistCri(cri));
		model.addAttribute("pm", pm);
		
		return "/mk_2ndTrans/booklist";
	}
	
	// 중고책 상품 등록 페이지 호출 (GET)
	@RequestMapping(value = "/bookregister", method = RequestMethod.GET)
	public String registerGET(HttpSession session, Model model) throws Exception {

		logger.info("C: registerGET() 호출");
		
		String m_id = (String) session.getAttribute("m_id");
		//임시 아이디 설정
		m_id = "tempId";

		/*
		 * if (m_id == null) { return "redirect:/login"; }
		 */
		
		model.addAttribute("m_id", m_id);

		return "/mk_2ndTrans/bookregister";
	}
	
	// 중고책 상품 등록(POST)
	@RequestMapping(value = "/bookregister", method = RequestMethod.POST)
	public String registerPOST(mk_2ndhand_bookVO bvo) throws Exception {

		logger.info("C: registerPOST() 호출");
		
		bvo.setB2_highestprice(bvo.getB2_startprice());
		System.out.println(bvo);
		service.bookRegister(bvo);

		return "redirect:/mk_2ndTrans/booklist";
	}

	// 중고책 판매 사진업로드(POST)
	@RequestMapping(value = "/imgregister", method = RequestMethod.POST)
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
	
	// 중고책 판매 상세 페이지 호출 (GET)
	@RequestMapping(value = "/bookinfo", method = RequestMethod.GET)
	public String infoGET(HttpSession session, Model model, Integer b2_num) throws Exception {

		logger.info("C: infoGET() 호출");
		
		String m_id = (String) session.getAttribute("m_id");
		
		//임시 아이디 설정
		m_id = "tempId";
		
		model.addAttribute("bvo", service.getInfo(b2_num));
		model.addAttribute("m_id", m_id);
		
		return "/mk_2ndTrans/bookinfo";
	}
	
	// 중고책 판매 상품 수정 페이지 호출 (GET)
	@RequestMapping(value = "/bookmodify", method = RequestMethod.GET)
	public String modifyGET(HttpSession session, Model model, Integer b2_num) throws Exception {

		logger.info("C: infoGET() 호출");
		
		String m_id = (String) session.getAttribute("m_id");
		
		//임시 아이디 설정
		m_id = "tempId";
		
		model.addAttribute("bvo", service.getInfo(b2_num));
		model.addAttribute("m_id", m_id);
		
		return "/mk_2ndTrans/bookmodify";
	}
	
	// 중고책 판매 페이지 상품 수정(POST)
	@RequestMapping(value = "/bookmodify", method = RequestMethod.POST)
	public String bookModifyPOST(mk_2ndhand_bookVO bvo) throws Exception {

		logger.info("C: bookModifyPOST() 호출");
		
		service.bookModify(bvo);

		return "redirect:/mk_2ndTrans/booklist";
	}
	
	// 중고책 판매 페이지 상품 삭제(GET)
	@RequestMapping(value = "/bookdelete", method = RequestMethod.GET)
	public String deleteGET(Integer b2_num) throws Exception {

		logger.info("C: deleteGET() 호출");

		service.bookDelete(b2_num);

		return "redirect:/mk_2ndTrans/booklist";
	}
	
	// 중고책 입찰하기 페이지 호출(GET)
	@RequestMapping(value = "/bookbid", method = RequestMethod.GET)
	public String bidGET(HttpSession session, Model model, Integer b2_num) throws Exception {

		logger.info("C: bidGET() 호출");
		
		String m_id = (String) session.getAttribute("m_id");
		
		//임시 아이디 설정
		m_id = "tempId";
		
		model.addAttribute("bvo", service.getInfo(b2_num));
		model.addAttribute("m_id", m_id);
		
		return "/mk_2ndTrans/bookbid";
	}
	
	
	// 중고책 입찰하기 등록 (POST)
	@RequestMapping(value = "/bookbid", method = RequestMethod.POST)
	public String bookbidPOST(HttpSession session,mk_2ndhand_bookVO bvo, String bid_price) throws Exception {
		
		String m_id = (String) session.getAttribute("m_id");
		
		m_id = "temp_bid_id";
		
		bvo.setB2_highestprice(Integer.parseInt(bid_price));
		bvo.setB2_buyer_id(m_id);
		service.bookBid(bvo);
		
		logger.info("C: bookbidPOST() 호출");
		logger.info("입찰완료");
		
		return "redirect:/mk_2ndTrans/booklist";
	}
	
	// 중고책 판매 카트 페이지 호출 (GET)
	@RequestMapping(value = "/bookcart", method = RequestMethod.GET)
	public String cartGET(HttpSession session, Model model) throws Exception {

		logger.info("C: cartGET() 호출");
		
		String b2_buyer_id= (String) session.getAttribute("m_id");
		
		b2_buyer_id = "tempId";
		
		model.addAttribute("cartList", service.getCart(b2_buyer_id));
				
		return "/mk_2ndTrans/bookcart";
	}
	
	// 중고책 판매 결제 페이지 호출 (GET)
	@RequestMapping(value = "/bookcheckout", method = RequestMethod.GET)
	public String checkoutGET(HttpSession session, Model model) throws Exception {

		logger.info("C: checkoutGET() 호출");
		
		String b2_buyer_id = (String) session.getAttribute("m_id");
		
		b2_buyer_id = "tempId";
		
		model.addAttribute("cartList", service.getCart(b2_buyer_id));
		model.addAttribute("memberInfo", service.getMember(b2_buyer_id));
		
		return "/mk_2ndTrans/bookcheckout";
	}

	
	
	
}
