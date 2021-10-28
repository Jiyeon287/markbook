package com.markbook.controller;

import java.sql.Connection;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
        locations ={"file:src/main/webapp/WEB-INF/spring/root-context.xml"})

public class testDataSource {
   
    @Inject
    private DataSource ds;
   
    @Test
    public void testDS() throws Exception{
       
        try {
        	Connection conn = ds.getConnection();
            System.out.println("success : "+conn);
            System.out.println("hello");
            System.out.println("¾È³ç");
            
        } catch(Exception e){
            System.out.println("fail : "+e.getMessage());
        }
    }
}