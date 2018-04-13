package cn.gtms.admin.repository;

import org.springframework.stereotype.Repository;

import com.linkgoo.framework.core.repository.BaseRepository;

import cn.gtms.admin.entity.SysRoleMenu;

/**
 * Title: sys_role_menu
 *
 * Company: Copyright @ 2017 Linkgoo鐗堟潈鎵�鏈�
 *
 * @author: Linkgoo
 * @date: 2018-3-7 22:42:05
 * @version 1.0
 */
 
@Repository("sysRoleMenuRepository")
public interface SysRoleMenuRepository extends BaseRepository<SysRoleMenu> {

}