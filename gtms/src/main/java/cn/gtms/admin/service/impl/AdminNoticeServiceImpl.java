package cn.gtms.admin.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.linkgoo.framework.core.service.BaseServiceImpl;

import cn.gtms.admin.entity.AdminNotice;
import cn.gtms.admin.repository.AdminNoticeRepository;
import cn.gtms.admin.service.AdminNoticeService;

/**
 * Title: admin_notice
 *
 * Company: Copyright @ 2017 Linkgoo版权所有
 *
 * @author: Linkgoo
 * @date: 2018-4-13 0:08:03
 * @version 1.0
 */

@Service("adminNoticeService")
@Transactional(rollbackFor = Exception.class)
public class AdminNoticeServiceImpl extends
		BaseServiceImpl<AdminNotice,AdminNoticeRepository> implements
		AdminNoticeService {

}
