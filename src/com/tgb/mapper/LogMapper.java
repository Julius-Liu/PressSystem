package com.tgb.mapper;

import com.tgb.model.Log;

/*
 * 系统日志接口
 */
public interface LogMapper {

	/*
	 * 新增一条日志记录
	 * @param log
	 */
	public void save(Log log);
}
