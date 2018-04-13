package cn.gtms.mingfengDemo.repository;

import java.util.Map;

import org.springframework.stereotype.Repository;

import cn.gtms.mingfengDemo.entity.Demo;

@Repository("demoRepository")
public interface DemoRepository {
	Demo queryUserInfo(Map<String,Object> parameter);
}