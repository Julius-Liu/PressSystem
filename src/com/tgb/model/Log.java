package com.tgb.model;

import java.io.Serializable;
import java.util.Date;

/*
 * 系统日志
 */
public class Log implements Serializable {
	
	private static final long serialVersionUID = -7372303516713218870L; 
	
	// 日志ID
	private long id;
	
	// 用户ID
	private int userId;
	
	// 创建日期
	private Date createDate;
	
	// 日志内容
	private String content;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
}
