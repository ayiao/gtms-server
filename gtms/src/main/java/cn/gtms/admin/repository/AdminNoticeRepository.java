package cn.gtms.admin.repository;

import org.springframework.stereotype.Repository;

import com.linkgoo.framework.core.repository.BaseRepository;

import cn.gtms.admin.entity.AdminNotice;

/**
 * Title: admin_notice
 *
 * Company: Copyright @ 2017 Linkgoo版权所有
 *
 * @author: Linkgoo
 * @date: 2018-4-13 0:08:03
 * @version 1.0
 */
 
@Repository("adminNoticeRepository")
public interface AdminNoticeRepository extends BaseRepository<AdminNotice> {

}