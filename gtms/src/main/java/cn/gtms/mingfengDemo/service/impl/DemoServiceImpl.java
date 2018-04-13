package cn.gtms.mingfengDemo.service.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.gtms.mingfengDemo.entity.Demo;
import cn.gtms.mingfengDemo.repository.DemoRepository;
import cn.gtms.mingfengDemo.service.DemoService;

@Service("demoService")
@Transactional(rollbackFor = Exception.class)
public class DemoServiceImpl implements DemoService{

	@Autowired
	protected DemoRepository repository;

	@Override
	public Demo queryUserInfo(Map<String, Object> parameter) {
		return repository.queryUserInfo(parameter);
	}
}