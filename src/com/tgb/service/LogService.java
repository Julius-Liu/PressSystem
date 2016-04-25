package com.tgb.service;

import com.tgb.model.Log;
import org.springframework.transaction.annotation.Transactional;

public interface LogService {
	
	//@Transactional
	void log(Log log);
}
