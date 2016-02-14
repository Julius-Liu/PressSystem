package com.tgb.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tgb.model.Book;
import com.tgb.service.BookService;

@Controller
@RequestMapping("/book")
public class BookController {
	@Autowired
	private BookService bookService;	
	
	private int currentPage;
    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }
    public int getCurrentPage() {
        return currentPage;
    }
    
    private int totalPage;
    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }
    public int getTotalPage() {
        return totalPage;
    }
    
    private int recordNumber;
    public void setRecordNumber(int recordNumber) {
        this.recordNumber = recordNumber;
    }
    public int getRecordNumber() {
        return recordNumber;
    }
	
	/**
	 * 跳转到添加 书本 界面
	 * @param request
	 * @return
	 */
	@RequestMapping("/toAddBook")
	public String toAddBook(HttpServletRequest request) {			
		return "/book/book_add";
	}
	
	/**
	 * 添加 书本 并重定向
	 * @param book
	 * @param request
	 * @return
	 */
	@RequestMapping("/addBook")
	public String addBook(Book book, HttpServletRequest request) {
		bookService.save(book);
		return "redirect:queryBook?book_name=&sub_book_name=&ISBN=&currentPage=1";
	}
	
	/**
	 * 编辑  书本
	 * @param book
	 * @param request
	 * @return
	 */
	@RequestMapping("/updateBook")
	public String updateBook(Book book, HttpServletRequest request) {	
		if(bookService.update(book)) {
			return "redirect:queryBook?book_name=&sub_book_name=&ISBN=&currentPage=1";
		}else {
			return "/error";
		}
	}	
	
	/**
	 * 获取指定 图书 列表
	 * @param request
	 * @return
	 */
	@RequestMapping("/getBook")
	public String getBook(int id, HttpServletRequest request) {
		Book book = bookService.findById(id);
				
		request.setAttribute("book", book);

		return "/book/book_edit";
	}
	
	/**
	 * 查看指定 书本 详细内容
	 * @param request
	 * @return
	 */
	@RequestMapping("/checkBook")
	public String checkBook(int id, HttpServletRequest request) {
		Book book = bookService.findById(id);
				
		request.setAttribute("book", book);
		
		return "/book/book_details";
	}		
	
	/**
	 * 删除 书本
	 * @param id
	 * @param request
	 * @param response
	 */
	@RequestMapping("/delBook")
	public void delBook(int id, HttpServletRequest request, HttpServletResponse response) {
		String result = "{\"result\":\"error\"}";		
		System.out.println("id = " + id);
		if(bookService.delete(id)) {
			result = "{\"result\":\"success\"}";
		}
		
		response.setContentType("application/json");
		
		try {
			PrintWriter out = response.getWriter();
			out.write(result);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}	
	
	/**
	 * 查询 书本 列表
	 * @param request
	 * @return
	 */
	@RequestMapping("/queryBook")
	public String queryBook(
			@RequestParam(value="book_name", required=false)String book_name,
			@RequestParam(value="sub_book_name", required=false)String sub_book_name,
			@RequestParam(value="ISBN", required=false)String ISBN, 
			@RequestParam(value="currentPage", required=false)int currentPage, 
			HttpServletRequest request) {	
		System.out.println("book_name: " + book_name);
		System.out.println("sub_book_name: " + sub_book_name);
		System.out.println("ISBN: " + ISBN);
		System.out.println("currentPage: " + currentPage);
		
		List<Book> bookList = bookService.queryBookInfo(book_name, sub_book_name, ISBN, currentPage);
		
        /*计算总的页数和总的记录数*/
		bookService.calculateTotalPageAndRecordNumber(book_name, sub_book_name, ISBN);
		
        /*获取到总的页码数目*/
        totalPage = bookService.getTotalPage();
        /*当前查询条件下总记录数*/
        recordNumber = bookService.getRecordNumber();
           
        request.setAttribute("book_name", book_name);
        request.setAttribute("sub_book_name", sub_book_name);
        request.setAttribute("ISBN", ISBN);
        
		request.setAttribute("bookList", bookList);
		
		request.setAttribute("recordNumber", recordNumber);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("totalPage", totalPage);
		return "/book/book_all";
	}	
}
