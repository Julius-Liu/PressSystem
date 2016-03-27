package com.tgb.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.tgb.mapper.LogMapper;
import com.tgb.model.Log;
import com.tgb.service.LogService;

@Service
@Transactional
public class LogServiceImpl implements LogService{
	
	@Resource
	private LogMapper logMapper;
	
	/*
	 * 新增日志
	 * @see com.tgb.service.LogService#save(com.tgb.model.Log)
	 */
	public void save(Log log) {
		logMapper.save(log);
	}
}
