package com.tgb.service;

import org.springframework.transaction.annotation.Transactional;

import com.tgb.model.Log;

public interface LogService {
	
	@Transactional
	void log(Log log);
}
