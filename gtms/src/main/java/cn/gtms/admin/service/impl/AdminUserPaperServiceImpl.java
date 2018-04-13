package cn.gtms.admin.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.linkgoo.framework.core.service.BaseServiceImpl;

import cn.gtms.admin.entity.AdminUserPaper;
import cn.gtms.admin.repository.AdminUserPaperRepository;
import cn.gtms.admin.service.AdminUserPaperService;

/**
 * Title: admin_user_paper
 *
 * Company: Copyright @ 2017 Linkgoo鐗堟潈鎵�鏈�
 *
 * @author: Linkgoo
 * @date: 2018-3-1 23:04:08
 * @version 1.0
 */

@Service("adminUserPaperService")
@Transactional(rollbackFor = Exception.class)
public class AdminUserPaperServiceImpl extends
		BaseServiceImpl<AdminUserPaper,AdminUserPaperRepository> implements
		AdminUserPaperService {

}
