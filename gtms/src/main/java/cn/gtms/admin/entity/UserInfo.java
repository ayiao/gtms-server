package cn.gtms.admin.entity;

import java.util.List;

public class UserInfo {
	private AdminUser adminUser;
	private List<RoleMenuExt> roleMenuExts;
	public AdminUser getAdminUser() {
		return adminUser;
	}
	public void setAdminUser(AdminUser adminUser) {
		this.adminUser = adminUser;
	}
	public List<RoleMenuExt> getRoleMenuExts() {
		return roleMenuExts;
	}
	public void setRoleMenuExts(List<RoleMenuExt> roleMenuExts) {
		this.roleMenuExts = roleMenuExts;
	}
}
