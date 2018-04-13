package cn.gtms.admin.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.linkgoo.framework.core.service.BaseServiceImpl;

import cn.gtms.admin.entity.SysRoleMenu;
import cn.gtms.admin.repository.SysRoleMenuRepository;
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

@Service("sysRoleMenuService")
@Transactional(rollbackFor = Exception.class)
public class SysRoleMenuServiceImpl extends
		BaseServiceImpl<SysRoleMenu,SysRoleMenuRepository> implements
		SysRoleMenuService {

}
