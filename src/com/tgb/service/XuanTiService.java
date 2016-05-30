package com.tgb.service;

import java.util.List;
import com.tgb.model.XuanTi;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import org.springframework.transaction.annotation.Transactional;

//@Service
//@Component
//@Transactional
public interface XuanTiService {

	void insert(XuanTi xuanTi);

	boolean update(XuanTi xuanTi);			// 更新选题信息	

	boolean delete(String id, String table_name);
	
	XuanTi findById(String id);
	List<XuanTi> findAll();
	
	List<XuanTi> queryXuanTiInfo(String xuan_ti_id, String year, int source,
			int status, int currentPage);
	
	void calculateTotalPageAndRecordNumber(String xuan_ti_id, String year, int source,
			int status);
	
	int getTotalPage();	
	int getRecordNumber();
}
