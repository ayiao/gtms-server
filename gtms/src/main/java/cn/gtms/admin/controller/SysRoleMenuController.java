package cn.gtms.admin.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.linkgoo.web.restful.controller.CURDController;

import cn.gtms.admin.entity.SysRoleMenu;
import cn.gtms.admin.service.SysRoleMenuService;

/**
 * Title: sys_role_menu
 *
 * Company: Copyright @ 2017 Linkgoo鐗堟潈鎵�鏈�
 *
 * @author: Linkgoo
 * @date: 2018-3-7 22:42:05
 * @version 1.0
 */
 
@RestController
@RequestMapping(value = "/cpo/api/admin/sysrolemenu")
public class SysRoleMenuController extends
		CURDController<SysRoleMenu,SysRoleMenuService> {

}
