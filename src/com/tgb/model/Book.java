package com.tgb.model;

public class Book {
	// 书的编号
    private int id;
    
    // 书名
    private String book_name;
    
    // 丛书名
    private String sub_book_name;
    
    // 国际标准书号（International Standard Book Number），简称ISBN
    private String ISBN;
    
    // 单价
    private float price;
    
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBook_name() {
		return book_name;
	}
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}
	public String getSub_book_name() {
		return sub_book_name;
	}
	public void setSub_book_name(String sub_book_name) {
		this.sub_book_name = sub_book_name;
	}
	public String getISBN() {
		return ISBN;
	}
	public void setISBN(String iSBN) {
		ISBN = iSBN;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
    
}

