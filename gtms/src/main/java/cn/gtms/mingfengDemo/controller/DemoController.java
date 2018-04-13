package cn.gtms.mingfengDemo.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

import cn.gtms.BaseResponse;
import cn.gtms.mingfengDemo.entity.Demo;
import cn.gtms.mingfengDemo.service.DemoService;

import org.springframework.beans.factory.annotation.Autowired;

@RestController
@RequestMapping(value = "/cpo/api/demo")
public class DemoController {
	
	@Autowired
	protected DemoService service;

	@RequestMapping(value = "/ping", method = RequestMethod.GET)
	public ResponseEntity<String> ping() {

		JSONObject jo = new JSONObject();
		jo.put("time", new Date());
		return ResponseEntity.ok(jo.toJSONString());
	}
	
	@RequestMapping(value = "/find", method = RequestMethod.GET)
	public List<Demo> find(String id) {
		List<Demo> result=new ArrayList<>();
		return result;
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET, produces = "application/json; charset=UTF-8")
	public ResponseEntity<String> login(HttpServletRequest httpServletRequest, HttpServletResponse response,
			Model model) {
		String account=httpServletRequest.getParameter("account");
		String password=httpServletRequest.getParameter("password");
		Map<String,Object> userInfoParameter=new HashMap<>();
		userInfoParameter.put("account", account);
		Demo demo= service.queryUserInfo(userInfoParameter);
		BaseResponse responseObj=new BaseResponse();
		if(demo==null){
			responseObj.setStatus("1");
			responseObj.setMessage("Account not exist!");
		}else if(!password.equals(demo.getPassword())){
			responseObj.setStatus("1");
			responseObj.setMessage("Password not correct!");
		}else{
			responseObj.setStatus("0");
		}
		return ResponseEntity.ok(JSON.toJSONString(responseObj));
	}
}