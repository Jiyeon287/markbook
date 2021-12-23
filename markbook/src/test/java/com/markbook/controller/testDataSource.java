package com.markbook.controller;

import java.sql.Connection;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.markbook.domain.mk_2ndhand_bookVO;
import com.markbook.persistence.mk_2ndtransDAO;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
        locations ={"file:src/main/webapp/WEB-INF/spring/root-context.xml"})

public class testDataSource {
	
	 // 로그
	private static final Logger logger = LoggerFactory.getLogger(testDataSource.class);
   
    @Inject
    private DataSource ds;
    
	@Inject
	mk_2ndtransDAO mdao;
   
    //@Test
    public void testDS() throws Exception{
       
        try {
        	Connection conn = ds.getConnection();
            System.out.println("success : "+conn);
            System.out.println("hello");
            System.out.println("안녕");
            
        } catch(Exception e){
            System.out.println("fail : "+e.getMessage());
        }
    }
    
    // 중고책 데이터 삽입
	@Test
	public void book2Create() throws Exception{
		
		for (int i=100 ; i<=999 ; i++) {
			
			mk_2ndhand_bookVO vo = new mk_2ndhand_bookVO();
			vo.setB2_num(i+1);
			vo.setB2_image("image.jpg");
			vo.setB2_title("책이름"+i);
			vo.setB2_writer("작가"+i);
			
			mdao.bookRegister(vo);
		}
		
	}
    
    
}