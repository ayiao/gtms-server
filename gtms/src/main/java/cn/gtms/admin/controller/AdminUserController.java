package cn.gtms.admin.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.linkgoo.web.restful.controller.CURDController;

import cn.gtms.admin.entity.AdminUser;
import cn.gtms.admin.service.AdminUserService;

/**
 * Title: admin_user
 *
 * Company: Copyright @ 2017 Linkgoo鐗堟潈鎵�鏈�
 *
 * @author: Linkgoo
 * @date: 2018-3-1 23:09:19
 * @version 1.0
 */
 
@RestController
@RequestMapping(value = "/api/admin/adminuser")
public class AdminUserController extends
		CURDController<AdminUser,AdminUserService> {

}
