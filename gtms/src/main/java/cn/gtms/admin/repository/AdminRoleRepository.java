package cn.gtms.admin.repository;

import org.springframework.stereotype.Repository;

import com.linkgoo.framework.core.repository.BaseRepository;

import cn.gtms.admin.entity.AdminRole;

/**
 * Title: admin_role
 *
 * Company: Copyright @ 2017 Linkgoo鐗堟潈鎵�鏈�
 *
 * @author: Linkgoo
 * @date: 2018-3-1 23:03:33
 * @version 1.0
 */
 
@Repository("adminRoleRepository")
public interface AdminRoleRepository extends BaseRepository<AdminRole> {

}