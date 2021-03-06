package com.tgb.mapper;

import java.util.List;
import com.tgb.model.XuanTi;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

public interface XuanTiMapper {
	void insert(XuanTi xuanTi);
	boolean update(XuanTi xuanTi);			// 更新选题信息
	boolean delete(String id);
	XuanTi findById(String id);

	List<XuanTi> findAll();
	
	List<XuanTi> calculateTotalPageAndRecordNumber(
			@Param("xuan_ti_id")String xuan_ti_id, 			 
			@Param("year")String year,
			@Param("source")int source,
			@Param("status")int status);
}
