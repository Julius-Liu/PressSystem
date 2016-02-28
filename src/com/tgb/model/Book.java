package com.tgb.model;

public class Book {		
	
	// ä¹¦çš„ç¼–å�·
    private int id;
    
    // ä¹¦å��
    private String book_name;
    
    // ä¸›ä¹¦å��
    private String sub_book_name;
    
    // å›½é™…æ ‡å‡†ä¹¦å�·ï¼ˆInternational Standard Book Numberï¼‰ï¼Œç®€ç§°ISBN
    private String ISBN;
    
    // å�•ä»·
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
	
	/*public Book(int id, String book_name, String sub_book_name, String ISBN,
			float price) {
		super();
		this.id = id;
		this.book_name = book_name;
		this.sub_book_name = sub_book_name;
		this.ISBN = ISBN;
		this.price = price;
	}*/
	/*public Book(int id, 
			String book_name, 
			String sub_book_name, 
			String ISBN, 
			float price) {
		this.id = id;
		this.book_name = book_name;
		this.sub_book_name = sub_book_name;
		this.ISBN = ISBN;
		this.price = price;
	}*/
	
}

