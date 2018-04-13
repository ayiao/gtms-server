package cn.gtms.admin.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.linkgoo.framework.core.service.BaseServiceImpl;

import cn.gtms.admin.entity.AdminUser;
import cn.gtms.admin.repository.AdminUserRepository;
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

@Service("adminUserService")
@Transactional(rollbackFor = Exception.class)
public class AdminUserServiceImpl extends
		BaseServiceImpl<AdminUser,AdminUserRepository> implements
		AdminUserService {

}
