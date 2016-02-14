package com.tgb.service;

import java.util.List;
import com.tgb.model.Book;

public interface BookService {
	void save(Book book);
	boolean update(Book book);			// 更新图书信息	
	boolean delete(int id);
	Book findById(int id);
	List<Book> findAll();
	
	List<Book> queryBookInfo(String book_name, String sub_book_name, 
			String ISBN, int currentPage);
	
	void calculateTotalPageAndRecordNumber(String book_name, 
			String sub_book_name, String ISBN);
	
	int getTotalPage();
	int getRecordNumber();
}
