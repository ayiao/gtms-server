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
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.linkgoo.api.constant.APPConst;
import com.linkgoo.framework.core.repository.Page;
import com.linkgoo.framework.core.repository.SearchCriteria;
import com.linkgoo.framework.exception.BusinessException;
import com.linkgoo.framework.util.StringUtils2;
import com.linkgoo.web.extensions.MediaTypes;
import com.linkgoo.web.extensions.WebUtils;

import cn.gtms.BaseResponse;
import cn.gtms.admin.CURDController;
import cn.gtms.admin.entity.AdminPaper;
import cn.gtms.admin.entity.AdminPaperExt;
import cn.gtms.admin.entity.AdminUser;
import cn.gtms.admin.entity.AdminUserPaper;
import cn.gtms.admin.service.AdminPaperExtService;
import cn.gtms.admin.service.AdminPaperService;
import cn.gtms.admin.service.AdminUserPaperService;
import cn.gtms.admin.service.AdminUserService;
import cn.gtms.constants.Constants;
import cn.gtms.util.DataUtil;

@RestController
@CrossOrigin
@RequestMapping(value = "/api/admin/adminpaperext")
public class AdminPaperExtController extends CURDController<AdminPaper, AdminPaperService> {

	@Autowired
	protected AdminPaperService adminPaperService;

	@Autowired
	protected AdminPaperExtService adminPaperExtService;

	@Autowired
	protected AdminUserService adminUserService;
	
	@SuppressWarnings("rawtypes")
	@CrossOrigin
	@RequestMapping(value = "/save_paper", method = RequestMethod.POST, produces = MediaTypes.JSON)
	public ResponseEntity<String> savePaper(@RequestBody AdminPaper adminPaper, HttpServletRequest httpServletRequest,
			HttpServletResponse response, Model model) {
		BaseResponse baseResponse = new BaseResponse<>();
		adminPaper.setUtcCreate(new Date());
		if (adminPaper.getCreateBy() != null && adminPaper.getTeacherId() == null) {
			AdminUser adminUser = adminUserService.get(adminPaper.getCreateBy());
			if (adminPaper != null && adminUser.getRole() != null
					&& Constants.ROLE.teacher.equals(adminUser.getRole().toString())) {
				adminPaper.setTeacherId(adminUser.getUserId());
			}
		}
		adminPaperService.save(adminPaper);
		baseResponse.setStatus(Constants.STATUS.SUCCESS);
		return ResponseEntity.ok(JSON.toJSONString(baseResponse, SerializerFeature.DisableCircularReferenceDetect));
	}

	@SuppressWarnings("rawtypes")
	@RequestMapping(value = "/update_paper", method = RequestMethod.POST, produces = MediaTypes.JSON)
	public ResponseEntity<String> updatePaper(@RequestBody @Valid AdminPaper adminPaper,
			HttpServletRequest httpServletRequest, HttpServletResponse response, Model model) {
		BaseResponse baseResponse = new BaseResponse<>();
		adminPaper.setUtcUpdate(new Date());
		adminPaperService.update(adminPaper);
		baseResponse.setStatus(Constants.STATUS.SUCCESS);
		return ResponseEntity.ok(JSON.toJSONString(baseResponse, SerializerFeature.DisableCircularReferenceDetect));
	}


	@RequestMapping(value = "/find_select_paper_list", method = RequestMethod.POST, produces = MediaTypes.JSON)
	public ResponseEntity<String> findPaper(@RequestBody Map<String, Object> parameter,
			HttpServletRequest httpServletRequest, HttpServletResponse response, Model model) {
		Map<String,Object> param=new HashMap<>();
		param.putAll(parameter);
		if(parameter.get("userId")!=null){
			AdminUser adminUser=adminUserService.get(parameter.get("userId").toString());
			param.put("role", adminUser.getRole());
			parameter.remove("userId");
		}
		Page<AdminPaperExt> page = adminPaperExtService
				.queryPaperList(WebUtils.<AdminPaperExt>page(parameter, response), SearchCriteria.toList(parameter),param);
		if (page.getRows() != null && !page.getRows().isEmpty()) {
			Map<String, String> paperTypeMap = new HashMap<>();
			paperTypeMap.put("1", "设计类");
			paperTypeMap.put("2", "论文类");

			Map<String, String> paperStatus = new HashMap<>();
			paperStatus.put("1", "新增");
			paperStatus.put("2", "更新");
			paperStatus.put("3", "审核中");
			paperStatus.put("4", "审核通过");
			paperStatus.put("5", "已发布");
			paperStatus.put("6", "审核不通过");

			Map<String, String> userPaperStatus = new HashMap<>();
			userPaperStatus.put("0", "未确认");
			userPaperStatus.put("1", "已通过");
			userPaperStatus.put("2", "不通过");

			for (AdminPaperExt adminPaper : page.getRows()) {
				adminPaper.setPaperType(paperTypeMap.get(adminPaper.getPaperType()));
				adminPaper.setStatus(paperStatus.get(adminPaper.getStatus()));
				adminPaper.setSelectStatus(adminPaper.getSelectStatus() == null ? "暂无人选题"
						: userPaperStatus.get(adminPaper.getSelectStatus()));
			}
		}
		JSONObject jsonObject = new JSONObject();
		BaseResponse<JSONObject> baseResponse = new BaseResponse<>();
		jsonObject.put("total", page.getTotal());
		jsonObject.put("data", page.getRows() == null ? new ArrayList<>() : page.getRows());
		jsonObject.put("totalPages", page.getTotalPages());
		baseResponse.setOutput(jsonObject);
		baseResponse.setStatus(APPConst.SUCESS_CODE);
		return ResponseEntity.ok(JSON.toJSONString(baseResponse, SerializerFeature.DisableCircularReferenceDetect));
	}

	@RequestMapping(value = "/delete_paper", method = RequestMethod.POST, produces = MediaTypes.JSON)
	public ResponseEntity<String> deletePaper(@RequestBody Map<String, Object> parameter,
			HttpServletRequest httpServletRequest, HttpServletResponse response, Model model) {
		BaseResponse<List<AdminPaper>> baseResponse = new BaseResponse<>();
		List<String> ids = StringUtils2.strToList(parameter.get("ids").toString(), ",");
		adminPaperService.removeAll(ids);
		baseResponse.setStatus(Constants.STATUS.SUCCESS);
		return ResponseEntity.ok(JSON.toJSONString(baseResponse, SerializerFeature.DisableCircularReferenceDetect));
	}

	@RequestMapping(value = "/update_paper_list", method = RequestMethod.POST, produces = MediaTypes.JSON)
	public ResponseEntity<String> updatePaperList(@RequestBody Map<String, Object> parameter,
			HttpServletRequest httpServletRequest, HttpServletResponse response, Model model) {
		BaseResponse<List<AdminPaper>> baseResponse = new BaseResponse<>();
		List<String> ids = StringUtils2.strToList(parameter.get("ids").toString(), ",");
		List<AdminPaper> updateList = new ArrayList<>();
		for (String id : ids) {
			AdminPaper adminPaper = new AdminPaper();
			adminPaper.setPaperId(Long.valueOf(id));
			adminPaper.setUtcUpdate(new Date());
			adminPaper.setStatus(parameter.get("status").toString());
			updateList.add(adminPaper);
		}
		adminPaperService.updateList(updateList);
		baseResponse.setStatus(Constants.STATUS.SUCCESS);
		return ResponseEntity.ok(JSON.toJSONString(baseResponse, SerializerFeature.DisableCircularReferenceDetect));
	}

	@RequestMapping(value = "/find_paper_list", method = RequestMethod.POST, produces = MediaTypes.JSON)
	public ResponseEntity<String> findPaperList(@RequestBody Map<String, Object> param,
			HttpServletRequest httpServletRequest, HttpServletResponse response, Model model) {
		AdminUser user = null;
		Map<String, Object> parameter = new HashMap<>();
		if (param.get("userId") != null) {
			user = adminUserService.get(param.get("userId").toString());
			parameter.put("role", user.getRole());
			parameter.put("userId", user.getUserId());
			if(user.getRole()==2L){
				if(param.get("status")!=null&&"5".equals(param.get("status").toString()) ){
					param.remove("status");
				}
			}
			param.remove("userId");
		}
		DataUtil.doChangeParameter(param);
		Page<AdminPaperExt> page = adminPaperExtService.queryAdminPaper(WebUtils.<AdminPaperExt>page(param, response),
				SearchCriteria.toList(param), parameter);
		if (page.getRows() != null && !page.getRows().isEmpty()) {
			Map<String, String> paperTypeMap = new HashMap<>();
			paperTypeMap.put("1", "设计类");
			paperTypeMap.put("2", "论文类");
			Map<String, String> paperStatus = new HashMap<>();
			paperStatus.put("1", "新增");
			paperStatus.put("2", "更新");
			paperStatus.put("3", "审核中");
			paperStatus.put("4", "审核通过");
			paperStatus.put("5", "已发布");
			paperStatus.put("6", "审核不通过");
			List<AdminUser> adminUsers = adminUserService.findAll();
			for (AdminPaperExt adminPaper : page.getRows()) {
				adminPaper.setPaperType(paperTypeMap.get(adminPaper.getPaperType()));
				adminPaper.setStatus(paperStatus.get(adminPaper.getStatus()));
				if (adminPaper.getTeacherId() != null) {
					for (AdminUser adminUser : adminUsers) {
						if (adminPaper.getTeacherId().equals(adminUser.getUserId())) {
							adminPaper.setTeacherName(adminUser.getUserName());
							break;
						}
					}
				}
			}
		}
		JSONObject jsonObject = new JSONObject();
		BaseResponse<JSONObject> baseResponse = new BaseResponse<>();
		jsonObject.put("total", page.getTotal());
		jsonObject.put("data", page.getRows() == null ? new ArrayList<>() : page.getRows());
		jsonObject.put("totalPages", page.getTotalPages());
		baseResponse.setOutput(jsonObject);
		baseResponse.setStatus(APPConst.SUCESS_CODE);
		return ResponseEntity.ok(JSON.toJSONString(baseResponse, SerializerFeature.DisableCircularReferenceDetect));
	}
	

	@RequestMapping(value = "/query_user_paper", method = RequestMethod.POST, produces = MediaTypes.JSON)
	public ResponseEntity<String> queryUserPaper(@RequestBody Map<String, Object> param,
			HttpServletRequest httpServletRequest, HttpServletResponse response, Model model) {
		AdminUser user = null;
		Map<String, Object> parameter = new HashMap<>();
		if (param.get("userId") != null) {
			user = adminUserService.get(param.get("userId").toString());
			parameter.put("userId", user.getUserId());
			param.remove("userId");
		}
		DataUtil.doChangeParameter(param);
		Page<AdminPaperExt> page = adminPaperExtService.queryUserPaper(WebUtils.<AdminPaperExt>page(param, response),
				SearchCriteria.toList(param), parameter);
		if (page.getRows() != null && !page.getRows().isEmpty()) {
			Map<String, String> paperTypeMap = new HashMap<>();
			paperTypeMap.put("1", "设计类");
			paperTypeMap.put("2", "论文类");

			Map<String, String> paperStatus = new HashMap<>();
			paperStatus.put("1", "新增");
			paperStatus.put("2", "更新");
			paperStatus.put("3", "审核中");
			paperStatus.put("4", "审核通过");
			paperStatus.put("5", "已发布");
			paperStatus.put("6", "审核不通过");

			Map<String, String> userPaperStatus = new HashMap<>();
			userPaperStatus.put("0", "未确认");
			userPaperStatus.put("1", "已通过");
			userPaperStatus.put("2", "不通过");
			List<AdminUser> adminUsers = adminUserService.findAll();
			for (AdminPaperExt adminPaper : page.getRows()) {
				adminPaper.setPaperType(paperTypeMap.get(adminPaper.getPaperType()));
				adminPaper.setStatus(paperStatus.get(adminPaper.getStatus()));
				adminPaper.setSelectStatus(adminPaper.getSelectStatus() == null ? "暂无人选题"
						: userPaperStatus.get(adminPaper.getSelectStatus()));
				if (adminPaper.getTeacherId() != null) {
					for (AdminUser adminUser : adminUsers) {
						if (adminPaper.getTeacherId().equals(adminUser.getUserId())) {
							adminPaper.setTeacherName(adminUser.getUserName());
							break;
						}
					}
				}
			}
		}
		JSONObject jsonObject = new JSONObject();
		BaseResponse<JSONObject> baseResponse = new BaseResponse<>();
		jsonObject.put("total", page.getTotal());
		jsonObject.put("data", page.getRows() == null ? new ArrayList<>() : page.getRows());
		jsonObject.put("totalPages", page.getTotalPages());
		baseResponse.setOutput(jsonObject);
		baseResponse.setStatus(APPConst.SUCESS_CODE);
		return ResponseEntity.ok(JSON.toJSONString(baseResponse, SerializerFeature.DisableCircularReferenceDetect));
	}
}
