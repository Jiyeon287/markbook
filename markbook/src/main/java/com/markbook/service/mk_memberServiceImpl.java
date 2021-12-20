package com.markbook.service;

import java.io.PrintWriter;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.mail.HtmlEmail;
import org.springframework.stereotype.Service;

import com.markbook.domain.mk_memberVO;
import com.markbook.persistence.mk_memberDAO;

@Service
public class mk_memberServiceImpl implements mk_memberService {

	@Inject
	private mk_memberDAO mdao;
	
	@Override
	public int memberIdChk(String m_id) throws Exception {
		
		return mdao.memberIdChk(m_id);
	}

	@Override
	public void memberInsert(mk_memberVO mvo) throws Exception {
		
		mdao.memberInsert(mvo);
	}

	@Override
	public boolean memberLoginChk(mk_memberVO mvo) throws Exception {

		return mdao.memberLoginChk(mvo);
	}

	@Override
	public void socialCheck(mk_memberVO mvo) throws Exception {
		
		mdao.socialCheck(mvo);
	}

	@Override
	public void findPw(HttpServletResponse response, mk_memberVO vo) throws Exception {
		
		response.setContentType("text/html;charset=utf-8");
		mk_memberVO ck = mdao.readMember(vo.getM_id());
		System.out.println("db:"+ck.toString());
		System.out.println("jsp:"+vo.toString());
		PrintWriter out = response.getWriter();
		
		//가입된 아이디가 없으면
		if(mdao.memberIdChk(vo.getM_id()) == 0) {
//			out.print("등록되지 않은 아이디입니다.");
			out.print("<script>alert('등록되지 않은 아이디입니다.'); history.back();</script>");
			out.close();
		}
		//가입된 아이디의 이메일과 입력한 이메일이 다르면
		else if(!vo.getM_email().equals(ck.getM_email())) {
			out.print("<script>alert('등록되지 않은 이메일입니다.'); history.back();</script>");
			out.close();
		}else {
		String pw = "";
		for (int i = 0; i < 12; i++) {
			pw += (char) ((Math.random() * 26) + 97);
		}
		vo.setM_pw(pw);
		// 비밀번호 변경
		mdao.updatePw(vo);
		// 비밀번호 변경 메일 발송
		sendEmail(vo);
		}
	}

	@Override
	public void sendEmail(mk_memberVO vo) throws Exception {
		// Mail Server 설정
		String charSet = "utf-8";
		String hostSMTP = "smtp.naver.com"; //네이버 이용시 smtp.naver.com
		String hostSMTPid = "iop0357";
		String hostSMTPpwd = "rlawldus0613!";

		// 보내는 사람 EMail, 제목, 내용
		String fromEmail = "iop0357@naver.com";
		String fromName = "markbook";
		String subject = "";
		String msg = "";


			subject = "markbook 임시 비밀번호 입니다.";
			msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
			msg += "<h3 style='color: blue;'>";
			msg += vo.getM_id() + "님의 임시 비밀번호 입니다. 비밀번호를 변경하여 사용하세요.</h3>";
			msg += "<p>임시 비밀번호 : ";
			msg += vo.getM_pw() + "</p></div>";


		// 받는 사람 E-Mail 주소
		String mail = vo.getM_email();
		try {
			HtmlEmail email = new HtmlEmail();
			email.setDebug(true);
			email.setCharset(charSet);
			email.setSSLOnConnect(true);
			email.setHostName(hostSMTP);
			email.setSmtpPort(465); //네이버 이용시 587

			email.setAuthentication(hostSMTPid, hostSMTPpwd);
			email.setStartTLSEnabled(true);
			email.addTo(mail, charSet);
			email.setFrom(fromEmail, fromName, charSet);
			email.setSubject(subject);
			email.setHtmlMsg(msg);
			email.send();
		} catch (Exception e) {
			System.out.println("메일발송 실패 : " + e);
		}
	}

	//네이버 소셜로그인 회원가입
	@Override
	public void naverJoin(mk_memberVO mvo) throws Exception {
		mdao.naverJoin(mvo);
	}

	@Override
	public String findId(mk_memberVO mvo) throws Exception {
		
		return mdao.findId(mvo);
	}

//	@Override
//	public String emailChk(String m_id) throws Exception {
//		String m_email = mdao.emailChk(m_id);
//		return m_email;
//	}


}
