package cn.gtms.admin.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.linkgoo.framework.core.service.BaseServiceImpl;

import cn.gtms.admin.entity.AdminRole;
import cn.gtms.admin.repository.AdminRoleRepository;
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

@Service("adminRoleService")
@Transactional(rollbackFor = Exception.class)
public class AdminRoleServiceImpl extends
		BaseServiceImpl<AdminRole,AdminRoleRepository> implements
		AdminRoleService {

}
