package com.tgb.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.tgb.mapper.XuanTiMapper;
import com.tgb.model.XuanTi;
import com.tgb.mapper.BookMapper;
import com.tgb.model.Book;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/config/spring-common.xml")
public class XuanTiTest {
	@Autowired
	private XuanTiMapper xuanTiMapper;
	
	@Autowired
	private BookMapper bookMapper;
	
	@Test
	public void testAddXuanTi() {
		XuanTi xuanTi = new XuanTi();
		xuanTi.setId("XT0048");
		xuanTi.setType("语言文字");
		xuanTi.setYear("2013");
		xuanTi.setSeason(2);
		xuanTi.setDepartment("图书编辑部");
		xuanTi.setOriginator("刘开");
		xuanTi.setSource(1);
		xuanTi.setFirst_comments(1);
		xuanTi.setStatus(1);
		xuanTi.setThe_book_id(2);
		xuanTiMapper.save(xuanTi);		
	}
	
	/*@Test
	public void testFindAll() {
		List<XuanTi> xuanTiList = xuanTiMapper.findAll();
		System.out.println("共有选题记录的条数是：" + xuanTiList.size());
	}*/
	
	/*@Test
	public void testFindById() {
		XuanTi xuanTi  = xuanTiMapper.findById("XT0005");
		Book book = bookMapper.findById(xuanTi.getThe_book_id());
		System.out.println("选题编号："+xuanTi.getId());
		System.out.println("图书名称："+book.getBook_name());
		System.out.println("选题状态："+xuanTi.getXuanTiStatus());		
	}*/
	
	/*
	@Test
	public void testDeleteXuanTi() {
		xuanTiMapper.delete("XT0041");
	}
	*/
}
