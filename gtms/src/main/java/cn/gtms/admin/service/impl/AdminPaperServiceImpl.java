package cn.gtms.admin.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.linkgoo.framework.core.service.BaseServiceImpl;

import cn.gtms.admin.entity.AdminPaper;
import cn.gtms.admin.repository.AdminPaperRepository;
import cn.gtms.admin.service.AdminPaperService;

/**
 * Title: admin_paper
 *
 * Company: Copyright @ 2017 Linkgoo鐗堟潈鎵�鏈�
 *
 * @author: Linkgoo
 * @date: 2018-3-1 23:03:12
 * @version 1.0
 */

@Service("adminPaperService")
@Transactional(rollbackFor = Exception.class)
public class AdminPaperServiceImpl extends
		BaseServiceImpl<AdminPaper,AdminPaperRepository> implements
		AdminPaperService {

}
