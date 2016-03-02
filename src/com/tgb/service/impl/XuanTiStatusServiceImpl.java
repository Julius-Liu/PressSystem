package com.tgb.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tgb.model.XuanTiStatus;
import com.tgb.service.XuanTiStatusService;
import com.tgb.mapper.XuanTiStatusMapper;

@Service
@Transactional
public class XuanTiStatusServiceImpl implements XuanTiStatusService{
	@Resource
	private XuanTiStatusMapper xuanTiStatusMapper;

	@Override
	public void save(XuanTiStatus xuanTiStatus) {
		xuanTiStatusMapper.save(xuanTiStatus);
	}

	@Override
	public boolean update(XuanTiStatus xuanTiStatus) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public XuanTiStatus findById(int id) {
		return null;
	}

	@Override
	public List<XuanTiStatus> findAll() {
		List<XuanTiStatus> xuanTiStatusList = xuanTiStatusMapper.findAll();
		return xuanTiStatusList;
	}
}
