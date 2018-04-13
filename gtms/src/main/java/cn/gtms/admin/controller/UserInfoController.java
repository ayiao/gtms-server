package cn.gtms.admin.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.alibaba.fastjson.JSON;
import com.linkgoo.framework.core.repository.Page;
import com.linkgoo.framework.core.repository.SearchCriteria;
import com.linkgoo.framework.core.service.BaseService;
import com.linkgoo.web.extensions.WebUtils;

import cn.gtms.BaseResponse;
import cn.gtms.admin.CURDController;
import cn.gtms.admin.entity.AdminUser;
import cn.gtms.admin.entity.RoleMenuExt;
import cn.gtms.admin.entity.SysRoleMenu;
import cn.gtms.admin.entity.UserInfo;
import cn.gtms.admin.service.AdminUserService;
import cn.gtms.admin.service.SysRoleMenuService;
import cn.gtms.util.ListUtils;

@RestController
@RequestMapping(value = "/api/user")
public class UserInfoController extends CURDController<AdminUser, BaseService<AdminUser>>{
	

	@Autowired
	protected AdminUserService adminUserService;
	
	@Autowired
	protected SysRoleMenuService sysRoleMenuService;
	
	
	@RequestMapping(value = "/login", method = RequestMethod.GET, produces = "application/json; charset=UTF-8")
	public ResponseEntity<String> login(HttpServletRequest httpServletRequest, HttpServletResponse response,
			Model model) {
		String account=httpServletRequest.getParameter("account");
		String password=httpServletRequest.getParameter("password");
		List<AdminUser> adminUsers= adminUserService.findByField("account", account);
		BaseResponse<UserInfo> responseObj=new BaseResponse<UserInfo>();
		if(adminUsers.isEmpty()){
			responseObj.setStatus("1");
			responseObj.setMessage("Account not exist!");
		}else if(!password.equals(adminUsers.get(0).getPassword())){
			responseObj.setStatus("1");
			responseObj.setMessage("Password not correct!");
		}else{
			UserInfo userInfo=new UserInfo();
			AdminUser adminUser=adminUsers.get(0);
			adminUser.setPassword(null);
			userInfo.setAdminUser(adminUser);
			List<RoleMenuExt> menus=new ArrayList<>();
			Map<String,Object> parameter=new HashMap<>();
			parameter.put("eq_role_id", adminUser.getRole());
//			parameter.put("pageSize", "1000000");
//			parameter.put("pageNo", "1");
//			parameter.put("order", "asc");
//			parameter.put("sort", "sort");
			List<SysRoleMenu> sysRoleMenus=sysRoleMenuService.find(SearchCriteria.toList(parameter));
			ListUtils.sort(sysRoleMenus, true, "sort");
			for(SysRoleMenu sysRoleMenu:sysRoleMenus){
				if("1".equals(sysRoleMenu.getMenuLevel())){
					menus.add(JSON.parseObject(JSON.toJSONString(sysRoleMenu), RoleMenuExt.class)) ;
				}
			}
			for(RoleMenuExt menu:menus){
				for(SysRoleMenu sysRoleMenu:sysRoleMenus){
					if("2".equals(sysRoleMenu.getMenuLevel())&&menu.getRoleMenuId().equals(sysRoleMenu.getParentId())){
						if(menu.getSubRoleMenus()==null){
							menu.setSubRoleMenus(new ArrayList<SysRoleMenu>());
						}
						menu.getSubRoleMenus().add(sysRoleMenu);
					}
				}
			}
			userInfo.setRoleMenuExts(menus);
			responseObj.setStatus("0");
			responseObj.setOutput(userInfo);
		}
		response.setHeader("Access-Control-Allow-Origin", "*");
		return ResponseEntity.ok(JSON.toJSONString(responseObj));
	}
}
