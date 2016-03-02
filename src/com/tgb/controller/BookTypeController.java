package com.tgb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tgb.service.BookTypeService;

@Controller
@RequestMapping("/bookType")
public class BookTypeController {
	@Autowired
	private BookTypeService bookTypeService;	
}
