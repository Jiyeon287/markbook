package com.markbook.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.markbook.persistence.mk_booktestDAO;

@Service
public class mk_booktestServiceImpl implements mk_booktestService {

	@Inject
	private mk_booktestDAO testdao;
	
	@Override
	public void answerOne1() throws Exception {
		System.out.println("S: answerOne1 호출");
		testdao.answerOne1();
	}

	@Override
	public void answerOne2() throws Exception {
		System.out.println("S: answerOne2 호출");
		testdao.answerOne2();		
	}
	
	@Override
	public int answerTwo() throws Exception {
		System.out.println("S: answerTwo 호출");
		int testnum = testdao.answerTwo();
		return testnum;
	}

	@Override
	public void answerTwo1(int testnum) throws Exception {
		System.out.println("S: answerTwo1 호출");
		testdao.answerTwo1(testnum);				
	}

	@Override
	public void answerTwo2(int testnum) throws Exception {
		System.out.println("S: answerTwo2 호출");
		testdao.answerTwo2(testnum);				
	}

	@Override
	public void answerTwo3(int testnum) throws Exception {
		System.out.println("S: answerTwo3 호출");
		testdao.answerTwo3(testnum);				
	}

	@Override
	public void answerTwo4(int testnum) throws Exception {
		System.out.println("S: answerTwo4 호출");
		testdao.answerTwo4(testnum);				
	}



}
