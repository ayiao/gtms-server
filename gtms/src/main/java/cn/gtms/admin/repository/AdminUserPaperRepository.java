package cn.gtms.admin.repository;

import org.springframework.stereotype.Repository;

import com.linkgoo.framework.core.repository.BaseRepository;

import cn.gtms.admin.entity.AdminUserPaper;

/**
 * Title: admin_user_paper
 *
 * Company: Copyright @ 2017 Linkgoo鐗堟潈鎵�鏈�
 *
 * @author: Linkgoo
 * @date: 2018-3-1 23:04:08
 * @version 1.0
 */
 
@Repository("adminUserPaperRepository")
public interface AdminUserPaperRepository extends BaseRepository<AdminUserPaper> {

}