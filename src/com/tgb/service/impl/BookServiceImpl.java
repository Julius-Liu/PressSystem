package com.tgb.service.impl;

import java.util.List;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.tgb.mapper.BookMapper;
import com.tgb.model.Book;
import com.tgb.service.BookService;

//@Service
//@Component
//@Transactional  //此处不再进行创建SqlSession和提交事务，都已交由spring去管理了。
public class BookServiceImpl implements BookService{
	@Resource
	private BookMapper bookMapper;

	private int totalPage;
	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	
	private int recordNumber;
	public int getRecordNumber() {
		return recordNumber;
	}

	public void setRecordNumber(int recordNumber) {
		this.recordNumber = recordNumber;
	}
	
	private int PAGE_SIZE = 10;
	
	public void insert(Book book) {
		bookMapper.insert(book);		
	}

	public boolean update(Book book) {
		return bookMapper.update(book);
	}

	public boolean delete(int id) {
		return bookMapper.delete(id);
	}

	public Book findById(int id) {
		Book book = bookMapper.findById(id);
		return book;
	}
	
	public List<Book> findAll() {
		// 限制每页显示的个数
		PageHelper.startPage(1, 10);
		List<Book> bookList = bookMapper.findAll();
		return bookList;
	}
	
	/*
	 * 查询 书本 信息
	 */
	public List<Book> queryBookInfo(String book_name, 
			String sub_book_name, String ISBN, int currentPage) {
		if(currentPage != 0) {
			// 限制每页显示的个数
			PageHelper.startPage(currentPage, 10);
		}
		List<Book> bookList = bookMapper.calculateTotalPageAndRecordNumber(book_name, sub_book_name, ISBN);
		
    	return bookList;
	}
	
	/*
	 * 计算总页数和总记录数
	 */
	public void calculateTotalPageAndRecordNumber(String book_name, 
			String sub_book_name, String ISBN) {
        List<Book> bookList = bookMapper.calculateTotalPageAndRecordNumber(book_name, sub_book_name, ISBN);
        recordNumber = bookList.size();
        int mod = recordNumber % this.PAGE_SIZE;
        totalPage = recordNumber / this.PAGE_SIZE;
        if(mod != 0) {
        	totalPage++;
        }
	}
}
