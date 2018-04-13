package cn.gtms.admin.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.linkgoo.web.restful.controller.CURDController;

import cn.gtms.admin.entity.AdminUserPaper;
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
 
@RestController
@RequestMapping(value = "/api/admin/adminuserpaper")
public class AdminUserPaperController extends
		CURDController<AdminUserPaper,AdminUserPaperService> {

}
