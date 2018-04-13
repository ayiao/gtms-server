package cn.gtms.admin.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.linkgoo.web.restful.controller.CURDController;

import cn.gtms.admin.entity.AdminPaper;
import cn.gtms.admin.service.AdminPaperService;


/**
 * Title: admin_paper表
 *
 * Company: Copyright @ 2017 Linkgoo版权所有
 *
 * @author: Linkgoo
 * @date: 2018-3-28 20:43:29
 * @version 1.0
 */
 
@RestController
@RequestMapping(value = "/cpo/api/gtms/adminpaper")
public class AdminPaperController extends
		CURDController<AdminPaper,AdminPaperService> {

}
