package com.tgb.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import org.springframework.stereotype.Component;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/testAOP")
public class TestAOPController {

	@RequestMapping("/testAOPMethod")
	public String testAOPMethod(HttpServletRequest request) {			
		//request.setAttribute("result", "this is another result.");
		System.out.println("Julius - setAttribute done.");
		return "/testAOP";
	}
}
