package com.tgb.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.tgb.mapper.BookMapper;
import com.tgb.model.Book;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/config/spring-common.xml")
public class BookTest {

	@Autowired
	private BookMapper bookMapper;
	
	@Test
	public void testAdd() {
		Book book = new Book();
		book.setBook_name("测试书名");
		book.setSub_book_name("测试丛书名");
		book.setISBN("ISBN");
		bookMapper.save(book);		
	}
	
	/*@Test
	public void testFindAll(){
		List<User> findAllList = bookMapper.findAll();
		System.out.println(findAllList.size());
	}*/
	
	/*@Test
	public void testFindById(){
		User user = bookMapper.findById(2);
		System.out.println(user.getId());
		System.out.println(user.getUserName());
	}*/


	/*@Test
	public void testUpdate(){
		
		User user = new User(2, "23", "yuliang");
		bookMapper.update(user);
	}*/
	
	/*@Test
	public void testDelete(){
		bookMapper.delete(1);
	}*/
}
