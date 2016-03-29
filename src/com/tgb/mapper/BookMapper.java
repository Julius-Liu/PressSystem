package com.tgb.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.tgb.model.Book;

public interface BookMapper {
	void save(Book book);
	boolean update(Book book);			// 更新图书信息
	boolean delete(int id);
	Book findById(int id);
	
	List<Book> findAll();
	
	List<Book> calculateTotalPageAndRecordNumber(
			@Param("book_name")String book_name, 
			@Param("sub_book_name")String sub_book_name, 
			@Param("ISBN")String ISBN);
}
