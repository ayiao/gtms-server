package cn.gtms.mingfengDemo.service;

import java.util.Map;

import cn.gtms.mingfengDemo.entity.Demo;

public interface DemoService {
	Demo queryUserInfo(Map<String,Object> parameter);
}