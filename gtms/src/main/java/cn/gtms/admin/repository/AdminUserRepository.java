package cn.gtms.admin.repository;

import org.springframework.stereotype.Repository;

import com.linkgoo.framework.core.repository.BaseRepository;

import cn.gtms.admin.entity.AdminUser;

/**
 * Title: admin_user
 *
 * Company: Copyright @ 2017 Linkgoo鐗堟潈鎵�鏈�
 *
 * @author: Linkgoo
 * @date: 2018-3-1 23:09:19
 * @version 1.0
 */
 
@Repository("adminUserRepository")
public interface AdminUserRepository extends BaseRepository<AdminUser> {

}