package com.tgb.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.tgb.mapper.BookMapper;
import com.tgb.model.Book;
import com.tgb.service.BookService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/config/spring-common.xml")
public class BookTest {
	
	@Autowired
	private BookService bookService;
	
	
	/*@Test
	public void addNewBook() {
		Book newBook = new Book();
		newBook.setBook_name("保持警惕2");
		newBook.setPrice(35);
		//bookMapper.save(newBook);		
		bookService.insert(newBook);
	}*/
	
	
	@Test
	public void updateBook() {
		Book oldBook = bookService.findById(58);
		oldBook.setBook_name("有一个AA貌似要走了");
		bookService.update(oldBook);
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
