package cn.gtms.admin.service.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.linkgoo.framework.core.repository.Page;
import com.linkgoo.framework.core.repository.SearchCriteria;

import cn.gtms.admin.entity.AdminPaperExt;
import cn.gtms.admin.repository.AdminPaperExtRepository;
import cn.gtms.admin.service.AdminPaperExtService;

/**
 * Title: admin_paper
 *
 * Company: Copyright @ 2017 Linkgoo鐗堟潈鎵�鏈�
 *
 * @author: Linkgoo
 * @date: 2018-3-1 23:03:12
 * @version 1.0
 */

@Service("adminPaperExtService")
@Transactional(rollbackFor = Exception.class)
public class AdminPaperExtServiceImpl  implements
		AdminPaperExtService {

	@Autowired
	private AdminPaperExtRepository adminPaperExtRepository;
	
	@Override
	public Page<AdminPaperExt> queryPaperList(Page<AdminPaperExt> page, List<SearchCriteria> parameter,@Param("map")Map<String,Object> param) {
		return adminPaperExtRepository.queryPaperList(page, parameter,param);
	}

	@Override
	public Page<AdminPaperExt> queryPaperDocumentList(Page<AdminPaperExt> page, List<SearchCriteria> parameter,
			Map<String, Object> param) {
		return adminPaperExtRepository.queryPaperDocumentList(page, parameter, param);
	}

	@Override
	public Page<AdminPaperExt> queryAdminPaper(Page<AdminPaperExt> page, List<SearchCriteria> parameter,
			Map<String, Object> param) {
		// TODO Auto-generated method stub
		return adminPaperExtRepository.queryAdminPaper(page, parameter, param);
	}

	@Override
	public Page<AdminPaperExt> queryUserPaper(Page<AdminPaperExt> page, List<SearchCriteria> parameter,
			Map<String, Object> param) {
		return adminPaperExtRepository.queryUserPaper(page, parameter, param);
	}

}
