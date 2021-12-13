package com.markbook.controller;

import java.io.PrintWriter;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.markbook.domain.mk_memberVO;
import com.markbook.service.mk_memberService;

@Controller
@RequestMapping("/mk_member/*")
public class mk_memberController {
	
	@Inject private mk_memberService service;

	private static final Logger logger = LoggerFactory.getLogger(mk_memberController.class);
	
	/* NaverLoginBO */ 
	private NaverLoginBO naverLoginBO; 
	private String apiResult = null; 
	
	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO; 
	}

	
	// http://localhost:8088/markbook/mk_member/login
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public void memberLoginGET(HttpSession session, Model model) throws Exception {
		System.out.println("로그인");
		
		//지연 네이버로그인
		/* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */ 
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
		System.out.println("네이버:" + naverAuthUrl);
		
		//네이버 
		model.addAttribute("url", naverAuthUrl);
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public void memberLoginPOST(mk_memberVO mvo, HttpServletResponse response, HttpSession session) throws Exception {
		System.out.println("로그인 진행중");
		
		boolean flag = service.memberLoginChk(mvo);
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		if (flag) {
			session.setAttribute("m_id", mvo.getM_id());
			out.print("<script>location.href='/markbook/index';</script>");
			out.flush();
		}
		else {
			out.print("<script>alert('아이디 또는 비밀번호가 틀립니다.'); history.back();</script>");
			out.flush();
		}
		


	}
	
	
	@RequestMapping(value="/gg_login", method = { RequestMethod.GET, RequestMethod.POST })
	public String memberGgloginPOST(mk_memberVO mvo, HttpSession session,
			@RequestParam String code, Model model,@RequestParam String state) throws Exception {
		System.out.println("소셜 로그인 진행중" +mvo.getM_id());
		
		service.socialCheck(mvo);
		session.setAttribute("m_id", mvo.getM_id());
		
		//지연 네이버 콜백주소 gg_login
		System.out.println("여기는 callback"); 
		OAuth2AccessToken oauthToken; 
		oauthToken = naverLoginBO.getAccessToken(session, code, state);
		
		//1. 로그인 사용자 정보를 읽어온다. 
		apiResult = naverLoginBO.getUserProfile(oauthToken); 
		//String형식의 json데이터
		/** apiResult json 구조 
		 {"resultcode":"00", 
		 "message":"success", 
		 "response":{"id":"33666449","nickname":"shinn****","age":"20-29",
		 "gender":"M","email":"sh@naver.com","name":"\uc2e0\ubc94\ud638"}} **/

		//2. String형식인 apiResult를 json형태로 바꿈 
		JSONParser parser = new JSONParser(); 
		Object obj = parser.parse(apiResult); 
		JSONObject jsonObj = (JSONObject) obj;
		
		//3. 데이터 파싱 
		//Top레벨 단계 _response 파싱 
		JSONObject response_obj = (JSONObject)jsonObj.get("response"); 
		//response의 nickname값 파싱 
		String nickname = (String)response_obj.get("nickname"); 
		System.out.println(nickname);

		//4.파싱 닉네임 세션으로 저장 
		session.setAttribute("sessionId",nickname); 
		//세션 생성 
		model.addAttribute("result", apiResult);
		
		return "redirect:/index";
	}
	
	@RequestMapping(value="/naver_login", method = { RequestMethod.GET, RequestMethod.POST })
	public String memberNaverloginPOST(mk_memberVO mvo, HttpSession session, HttpServletResponse response,
									@RequestParam String code, Model model,@RequestParam String state) throws Exception {
		
		//지연 네이버 콜백주소 
		System.out.println("여기는 naver callback"); 
		OAuth2AccessToken oauthToken; 
		oauthToken = naverLoginBO.getAccessToken(session, code, state);
		
		//1. 로그인 사용자 정보를 읽어온다. 
		apiResult = naverLoginBO.getUserProfile(oauthToken); 
		//String형식의 json데이터
		/** apiResult json 구조 
		 {"resultcode":"00", 
		 "message":"success", 
		 "response":{"id":"33666449","nickname":"shinn****","age":"20-29",
		 "gender":"M","email":"sh@naver.com","name":"\uc2e0\ubc94\ud638"}} **/

		//2. String형식인 apiResult를 json형태로 바꿈 
		JSONParser parser = new JSONParser(); 
		Object obj = parser.parse(apiResult); 
		JSONObject jsonObj = (JSONObject) obj;
		
		//3. 데이터 파싱 
		//Top레벨 단계 _response 파싱 
		JSONObject response_obj = (JSONObject)jsonObj.get("response"); 
		//response의 nickname값 파싱 
		String nickname = (String)response_obj.get("nickname"); 
		System.out.println(nickname);

		//4.파싱 닉네임 세션으로 저장 
		session.setAttribute("sessionId",nickname); 
		//세션 생성 
		model.addAttribute("result", apiResult);
		
		return "redirect:/index";
		
	}
	

	
	@RequestMapping(value="/joinCheck", method=RequestMethod.GET)
	public void joinCheck() throws Exception {
		System.out.println("개인정보수집 동의");
	}
	
	// http://localhost:8088/markbook/mk_member/join
	@RequestMapping(value="/join", method=RequestMethod.GET)
	public void memberJoinGET() throws Exception {
		System.out.println("회원가입");
	}
	
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public void memberJoinPOST(mk_memberVO mvo, HttpServletResponse response) throws Exception {
		System.out.println("회원가입 진행중 "+mvo);
		
		service.memberInsert(mvo);
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.print("<script>alert('회원가입 완료'); location.href='/markbook/mk_member/login';</script>");
		out.flush();
		out.close();
	}
	
	@ResponseBody
	@RequestMapping(value="/idchk", method=RequestMethod.POST)
	   public int memberIdCheck(mk_memberVO mvo) throws Exception {
	      
	      System.out.println("아이디 중복체크");
	      
	      return service.memberIdChk(mvo.getM_id());
	   }

	@ResponseBody
	@RequestMapping(value="/idchk2", method=RequestMethod.POST, produces = "text/html; charset=UTF-8")
	   public String memberIdCheck2(mk_memberVO mvo,HttpServletResponse response) throws Exception {
	      
	      System.out.println("아이디 중복체크");
	      System.out.println(mvo.toString());
	      
	      int result = service.memberIdChk(mvo.getM_id());
	      System.out.println(result);
	      String a = "/mk_member/index";
	      if(result > 0) {
	          //아이디 존재 -> 임시비밀번호 발급
	  		service.findPw(response, mvo);
			  a = "<script>"
		    	      + "alert(\"이메일로 임시비밀번호가 발급되었습니다.\");"
		    	      + "location.href='/markbook/mk_member/login';"
		    	      + "</script>";
	      } else if(result == 0) {
	    	// 아이디 존재 x -> 비밀번호찾기창으로 되돌아감
		  a = "<script>"
		    	      + "alert(\"아이디가 존재하지 않습니다.\");"
		    	      + "history.back();"
		    	      + "</script>";
	      }
	      return a;
	   }

	
	@RequestMapping(value="/findInfo", method=RequestMethod.GET)
	public void findMemberInfo() throws Exception {
		System.out.println("회원 정보 찾기");
	}
	
	@RequestMapping(value="/findId", method=RequestMethod.GET)
	public void findID() throws Exception {
		System.out.println("아이디 찾기");
	}
	
	@RequestMapping(value="/findPw", method=RequestMethod.GET)
	public void findPW() throws Exception {
		System.out.println("비밀번호 찾기");
	}
	
	@RequestMapping(value = "/findPw", method = RequestMethod.POST)
	public String findPwPOST(mk_memberVO member,HttpServletResponse response, Model model) throws Exception{
		System.out.println("findPW 도착");

        model.addAttribute("msg","로그인 성공");
        model.addAttribute("url","/mk_member/index");
        
        return "redirect";
	}
	

}
