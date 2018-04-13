package cn.gtms.admin.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.linkgoo.framework.core.repository.Page;
import com.linkgoo.framework.core.repository.SearchCriteria;

import cn.gtms.admin.entity.AdminPaperExt;

/**
 * Title: admin_paper
 *
 * Company: Copyright @ 2017 Linkgoo鐗堟潈鎵�鏈�
 *
 * @author: Linkgoo
 * @date: 2018-3-1 23:03:12
 * @version 1.0
 */
 
@Repository("adminPaperExtRepository")
public interface AdminPaperExtRepository{
	Page<AdminPaperExt> queryPaperList(@Param("page") Page<AdminPaperExt> page,
			@Param("list") List<SearchCriteria> parameter,@Param("map")Map<String,Object> param);
	
	Page<AdminPaperExt> queryPaperDocumentList(@Param("page") Page<AdminPaperExt> page,
			@Param("list") List<SearchCriteria> parameter,@Param("map")Map<String,Object> param);
	
	Page<AdminPaperExt> queryAdminPaper(@Param("page") Page<AdminPaperExt> page,
			@Param("list") List<SearchCriteria> parameter,@Param("map")Map<String,Object> param);
	
	Page<AdminPaperExt> queryUserPaper(@Param("page") Page<AdminPaperExt> page,
			@Param("list") List<SearchCriteria> parameter,@Param("map")Map<String,Object> param);
	
}