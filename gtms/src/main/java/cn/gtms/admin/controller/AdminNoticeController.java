package cn.gtms.admin.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.linkgoo.web.restful.controller.CURDController;

import cn.gtms.admin.entity.AdminNotice;
import cn.gtms.admin.service.AdminNoticeService;

/**
 * Title: admin_notice表
 *
 * Company: Copyright @ 2017 Linkgoo版权所有
 *
 * @author: Linkgoo
 * @date: 2018-3-28 18:15:02
 * @version 1.0
 */
 
@RestController
@RequestMapping(value = "/api/admin/adminnotice")
public class AdminNoticeController extends
		CURDController<AdminNotice,AdminNoticeService> {

}
