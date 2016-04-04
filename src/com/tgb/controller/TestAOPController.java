package com.tgb.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import org.springframework.stereotype.Component;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tgb.service.impl.TestAOPControllerImpl;

@Controller
@RequestMapping("/testAOP")
public class TestAOPController {

	@RequestMapping("/testAOPMethod")
	public String testAOPMethod(HttpServletRequest request) {			
		
		BeanFactory factory = new ClassPathXmlApplicationContext("config/bean.xml");		
		TestAOPControllerImpl testAOPControllerImpl = (TestAOPControllerImpl)factory.getBean("testAOPControllerImpl");
		String result = testAOPControllerImpl.implMethod();
		request.setAttribute("result", result);
		System.out.println("Julius - Controller setAttribute done.");
		
		return "/testAOP";
	}
}
