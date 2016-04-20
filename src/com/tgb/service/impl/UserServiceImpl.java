package com.tgb.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.tgb.mapper.UserMapper;
import com.tgb.model.User;
import com.tgb.service.UserService;
import org.apache.log4j.Logger;

//@Service
@Component
//@Transactional  //此处不再进行创建SqlSession和提交事务，都已交由spring去管理了。
public class UserServiceImpl implements UserService {
	
	@Resource
	private UserMapper mapper;

	public boolean delete(int id) {
		
		return mapper.delete(id);
	}

	public List<User> findAll() {
		List<User> findAllList = mapper.findAll();
		return findAllList;
	}

	public User findById(int id) {
		User user = mapper.findById(id);		
		return user;
	}

	public void save(User user) {
		mapper.save(user);
	}

	public boolean update(User user) {

		return mapper.update(user);
	}

	public boolean validate(String name, String password) {
		if("admin".equals(name) && "admin".equals(password)) {
			return true;
		} else {
			return false;
		}
	}
}
