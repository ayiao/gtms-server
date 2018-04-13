package cn.gtms.admin.repository;

import org.springframework.stereotype.Repository;

import com.linkgoo.framework.core.repository.BaseRepository;

import cn.gtms.admin.entity.AdminPaper;

/**
 * Title: admin_paper表
 *
 * Company: Copyright @ 2017 Linkgoo版权所有
 *
 * @author: Linkgoo
 * @date: 2018-3-28 20:43:29
 * @version 1.0
 */
 
@Repository("adminPaperRepository")
public interface AdminPaperRepository extends BaseRepository<AdminPaper> {

}