package cn.gtms.admin.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.linkgoo.web.restful.controller.CURDController;

import cn.gtms.admin.entity.AdminRole;
import cn.gtms.admin.service.AdminRoleService;

/**
 * Title: admin_role
 *
 * Company: Copyright @ 2017 Linkgoo鐗堟潈鎵�鏈�
 *
 * @author: Linkgoo
 * @date: 2018-3-1 23:03:33
 * @version 1.0
 */
 
@RestController
@RequestMapping(value = "/api/admin/adminrole")
public class AdminRoleController extends
		CURDController<AdminRole,AdminRoleService> {

}
