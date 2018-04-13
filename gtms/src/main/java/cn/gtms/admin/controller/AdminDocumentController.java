package cn.gtms.admin.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.linkgoo.web.restful.controller.CURDController;

import cn.gtms.admin.entity.AdminDocument;
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
 
@RestController
@RequestMapping(value = "/api/admin/admindocument")
public class AdminDocumentController extends
		CURDController<AdminDocument,AdminDocumentService> {

}
