package cn.gtms.admin.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.linkgoo.framework.exception.BusinessException;
import com.linkgoo.framework.util.StringUtils2;
import com.linkgoo.web.extensions.MediaTypes;

import cn.gtms.BaseResponse;
import cn.gtms.admin.CURDController;
import cn.gtms.admin.entity.AdminNotice;
import cn.gtms.admin.entity.AdminPaper;
import cn.gtms.admin.entity.AdminUserPaper;
import cn.gtms.admin.service.AdminPaperService;
import cn.gtms.admin.service.AdminUserPaperService;
import cn.gtms.constants.Constants;

/**
 * Title: admin_user_paper
 *
 * Company: Copyright @ 2017 Linkgoo鐗堟潈鎵�鏈�
 *
 * @author: Linkgoo
 * @date: 2018-3-1 23:04:08
 * @version 1.0
 */
 
@RestController
@RequestMapping(value = "/api/admin/adminuserpaperext")
public class AdminUserPaperExtController extends
		CURDController<AdminUserPaper,AdminUserPaperService> {

	@Autowired
	protected AdminPaperService adminPaperService;
	
	@RequestMapping(value = "/update_user_paper_list", method = RequestMethod.POST, produces = MediaTypes.JSON)
	public ResponseEntity<String> updateUserPaperList(@RequestBody Map<String,Object> parameter,
			HttpServletRequest httpServletRequest, HttpServletResponse response, Model model) {	
		BaseResponse<List<AdminUserPaper>> baseResponse=new BaseResponse<>();
		List<String> ids=StringUtils2.strToList(parameter.get("ids").toString(), ",");
		List<AdminUserPaper> updateList=new ArrayList<>();
		for(String id:ids){
			AdminUserPaper data=new AdminUserPaper();
			data.setUserPaperId(Long.valueOf(id));
			data.setUtcUpdate(new Date());
			data.setStatus(parameter.get("status").toString());
			updateList.add(data);
		}
		service.updateList(updateList);
		baseResponse.setStatus(Constants.STATUS.SUCCESS);
		return ResponseEntity.ok(JSON.toJSONString(baseResponse, SerializerFeature.DisableCircularReferenceDetect));
	}
	
	@Override
	protected void preSave(AdminUserPaper entity, HttpServletRequest request, Model model) {
		// TODO Auto-generated method stub
		if(entity.getUserId()!=null){
			List<AdminUserPaper> list =	service.findByField("user_id", entity.getUserId());
			if(!list.isEmpty()){
				throw new BusinessException("你已选择毕业设计，不可继续选择");
			}
		}
		if(entity.getPaperId()!=null){
			List<AdminUserPaper> list =	service.findByField("paper_id", entity.getPaperId());
			AdminPaper adminPaper=adminPaperService.get(entity.getPaperId());
			if(adminPaper.getLimitAccount()!=null
				&&adminPaper.getLimitAccount().intValue()==list.size()){
				throw new BusinessException("该毕业设计已满额");
			}
		}
		super.preSave(entity, request, model);
	}
	

	@SuppressWarnings("rawtypes")
	@RequestMapping(value = "/delete_user_paper", method = RequestMethod.POST, produces = MediaTypes.JSON)
	public ResponseEntity<String> deleteUserPaper(@RequestBody Map<String, Object> parameter,
			HttpServletRequest httpServletRequest, HttpServletResponse response, Model model) {
		parameter.put("user_id", parameter.get("userId"));
		parameter.remove("userId");
		parameter.put("paper_id", parameter.get("paperId"));
		parameter.remove("paperId");
		
		List<AdminUserPaper> adminUserPapers =	service.find(parameter);
		if(adminUserPapers.isEmpty()){
			throw new BusinessException("没找到该毕设");
		}else{
			service.remove(adminUserPapers.get(0).getUserPaperId());
		}
		BaseResponse baseResponse = new BaseResponse<>();
		baseResponse.setStatus(Constants.STATUS.SUCCESS);
		return ResponseEntity.ok(JSON.toJSONString(baseResponse, SerializerFeature.DisableCircularReferenceDetect));
	}
}
