package com.markbook.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.markbook.persistence.mk_mainDAO;

@Service
public class mk_mainServiceImpl implements mk_mainService {

	@Inject
	private mk_mainDAO madao;
}
