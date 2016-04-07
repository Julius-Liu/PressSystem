package com.tgb.mapper;

import com.tgb.model.Log;
import org.springframework.stereotype.Component;

/*
 * 系统日志接口
 */
//@Component
public interface LogMapper {

	/*
	 * 新增一条日志记录
	 * @param log
	 */
	public void log(Log log);
}
