package cn.gtms.admin.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.linkgoo.framework.core.service.BaseServiceImpl;

import cn.gtms.admin.entity.AdminDocument;
import cn.gtms.admin.repository.AdminDocumentRepository;
import cn.gtms.admin.service.AdminDocumentService;

/**
 * Title: admin_document
 *
 * Company: Copyright @ 2017 Linkgoo鐗堟潈鎵�鏈�
 *
 * @author: Linkgoo
 * @date: 2018-3-1 23:02:53
 * @version 1.0
 */

@Service("adminDocumentService")
@Transactional(rollbackFor = Exception.class)
public class AdminDocumentServiceImpl extends
		BaseServiceImpl<AdminDocument,AdminDocumentRepository> implements
		AdminDocumentService {

}
