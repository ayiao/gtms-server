package cn.gtms.admin;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.linkgoo.api.common.Response;
import com.linkgoo.api.constant.APPConst;
import com.linkgoo.common.util.CacheUtils;
import com.linkgoo.framework.authc.UserInfo;
import com.linkgoo.framework.core.annotation.Translate;
import com.linkgoo.framework.core.repository.Page;
import com.linkgoo.framework.core.repository.SearchCriteria;
import com.linkgoo.framework.core.service.BaseService;
import com.linkgoo.framework.util.StringUtils2;
import com.linkgoo.web.extensions.MediaTypes;
import com.linkgoo.web.extensions.WebUtils;

import cn.gtms.BaseResponse;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;

public abstract class BaseController<T, R extends BaseService<T>> {
	@Autowired
	protected R service;

	protected final Logger log = LoggerFactory.getLogger(getClass());

	@ResponseBody
	@Translate(key = "*", field = "*")
	@ApiOperation(value = "查看", notes = "")
	@ApiImplicitParam(name = "id", value = "查看单个对象", required = true, dataType = "String")
	@RequestMapping(value = "/view", method = RequestMethod.GET, produces = MediaTypes.JSON)
	public Response<T> view(@RequestParam String id, HttpServletRequest request, Model model) {
		T entity = doView(id, request);

		postView(request, entity);
		return Response.ok(entity);
	}

	protected void postView(HttpServletRequest request, T entity) {

	}

	protected T doView(String id, HttpServletRequest request) {
		return service.get(id);
	}

	@ResponseBody
	@Translate(key = "*", field = "*")
	@ApiOperation(value = "查询参数", notes = "")
	@ApiImplicitParam(name = "param", value = "获取查询的传参", required = true, dataType = "Map")
	@RequestMapping(value = "/find", method = RequestMethod.POST, produces = MediaTypes.JSON)
	public ResponseEntity<String> find(@RequestBody Map<String, Object> param, HttpServletRequest request,
			HttpServletResponse response, Model model) {
		JSONObject jsonObject = new JSONObject();
		BaseResponse<JSONObject> baseResponse=new BaseResponse<>();
		preFind(param, request, model);
		Page<T> page = doFind(param, response);
		jsonObject.put("total", page.getTotal());
		jsonObject.put("data", page.getRows());
		jsonObject.put("totalPages", page.getTotalPages());
		postFind(request, page, model,jsonObject,response);
		baseResponse.setOutput(jsonObject);
		baseResponse.setStatus(APPConst.SUCESS_CODE);
		return ResponseEntity.ok(JSON.toJSONString(baseResponse));
	}

	protected Page<T> doFind(Map<String, Object> param, HttpServletResponse response) {
		Page<T> page = WebUtils.<T> page(param, response);
		return service.find(page, SearchCriteria.toList(param));
	}

	protected void preFind(Map<String, Object> param, HttpServletRequest request, Model model) {
		if (null != param && !param.isEmpty()) {
			String key;
			for (Map.Entry<String, Object> entry : param.entrySet()) {
				key = entry.getKey();
				if (key.startsWith("like_")) {
					param.put(key, "%" + entry.getValue() + "%");
				}
				if (key.startsWith("in_")) {
					if (entry.getValue() != null) {
						List<String> ids = StringUtils2.strToList((String) entry.getValue(), ",");
						param.put(key, ids);
					}
				}
			}
		}
	}

	protected void postFind(HttpServletRequest request, Page<T> page, Model model,JSONObject jsonObject,HttpServletResponse response) {

	}

	protected Logger getLog() {
		return log;
	}

	public UserInfo getLoginUser(HttpServletRequest request) {
		return CacheUtils.subject();
	}
}
