package cn.gtms.admin.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.linkgoo.framework.core.repository.Page;
import com.linkgoo.framework.util.StringUtils2;
import com.linkgoo.web.extensions.MediaTypes;

import cn.gtms.BaseResponse;
import cn.gtms.admin.CURDController;
import cn.gtms.admin.entity.AdminNotice;
import cn.gtms.admin.entity.AdminPaper;
import cn.gtms.admin.entity.AdminUser;
import cn.gtms.admin.service.AdminNoticeService;
import cn.gtms.admin.service.AdminUserService;
import cn.gtms.constants.Constants;

/**
 * Title: admin_notice表
 *
 * Company: Copyright @ 2017 Linkgoo版权所有
 *
 * @author: Linkgoo
 * @date: 2018-3-28 18:15:02
 * @version 1.0
 */
 
@RestController
@RequestMapping(value = "/api/admin/adminnoticeext")
public class AdminNoticeExtController extends
		CURDController<AdminNotice,AdminNoticeService> {
	
	@Autowired
	protected AdminUserService adminUserService;

	@Override
	protected Page<AdminNotice> doFind(Map<String, Object> param, HttpServletResponse response) {
		// TODO Auto-generated method stub
		Page<AdminNotice>  page= super.doFind(param, response);
		if(page.getRows()!=null&&!page.getRows().isEmpty()){
			
			List<AdminUser> adminUsers=adminUserService.findAll();
			Map<String,String> paperStatus=new HashMap<>();
			paperStatus.put("1", "新增");
			paperStatus.put("2", "更新");
			paperStatus.put("3", "审核中");
			paperStatus.put("4", "审核通过");
			paperStatus.put("5", "已发布");
			for(AdminNotice data:page.getRows()){
				data.setStatus(paperStatus.get(data.getStatus()));
				for(AdminUser adminUser:adminUsers){
					if(data.getCreateBy()!=null&&data.getCreateBy().equals(adminUser.getUserId())){
						data.setCreateByName(adminUser.getUserName());
					}

					if(data.getUpdateBy()!=null&&data.getUpdateBy().equals(adminUser.getUserId())){
						data.setUpdateByName(adminUser.getUserName());
					}
				}
			}
		}
		return page;
	}
	

	@SuppressWarnings("rawtypes")
	@RequestMapping(value = "/update_notice", method = RequestMethod.POST, produces = MediaTypes.JSON)
	public ResponseEntity<String> updatePaper(@RequestBody @Valid AdminNotice data,
			HttpServletRequest httpServletRequest, HttpServletResponse response, Model model) {	
		BaseResponse baseResponse=new BaseResponse<>();
		data.setUtcUpdate(new Date());
		service.update(data);
		baseResponse.setStatus(Constants.STATUS.SUCCESS);
		return ResponseEntity.ok(JSON.toJSONString(baseResponse, SerializerFeature.DisableCircularReferenceDetect));
	}
	

	
	@RequestMapping(value = "/delete_notice", method = RequestMethod.POST, produces = MediaTypes.JSON)
	public ResponseEntity<String> deletePaper(@RequestBody Map<String,Object> parameter,
			HttpServletRequest httpServletRequest, HttpServletResponse response, Model model) {	
		BaseResponse<List<AdminPaper>> baseResponse=new BaseResponse<>();
		List<String> ids=StringUtils2.strToList(parameter.get("ids").toString(), ",");
		service.removeAll(ids);
		baseResponse.setStatus(Constants.STATUS.SUCCESS);
		return ResponseEntity.ok(JSON.toJSONString(baseResponse, SerializerFeature.DisableCircularReferenceDetect));
	}
	
	@RequestMapping(value = "/update_notice_list", method = RequestMethod.POST, produces = MediaTypes.JSON)
	public ResponseEntity<String> updateNoticeList(@RequestBody Map<String,Object> parameter,
			HttpServletRequest httpServletRequest, HttpServletResponse response, Model model) {	
		BaseResponse<List<AdminNotice>> baseResponse=new BaseResponse<>();
		List<String> ids=StringUtils2.strToList(parameter.get("ids").toString(), ",");
		List<AdminNotice> updateList=new ArrayList<>();
		for(String id:ids){
			AdminNotice data=new AdminNotice();
			data.setNoticeId(Long.valueOf(id));
			data.setStatus(parameter.get("status").toString());
			updateList.add(data);
		}
		service.updateList(updateList);
		baseResponse.setStatus(Constants.STATUS.SUCCESS);
		return ResponseEntity.ok(JSON.toJSONString(baseResponse, SerializerFeature.DisableCircularReferenceDetect));
	}
	@Override
	protected void postSave(AdminNotice entity, HttpServletRequest request, Model model) {
		// TODO Auto-generated method stub
		entity.setUtcCreate(new Date());
		super.postSave(entity, request, model);
	}
}
