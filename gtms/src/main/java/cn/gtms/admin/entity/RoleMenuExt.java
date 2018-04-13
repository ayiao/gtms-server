package cn.gtms.admin.entity;

import java.util.List;

@SuppressWarnings("serial")
public class RoleMenuExt extends SysRoleMenu{
	private List<SysRoleMenu> subRoleMenus;

	public List<SysRoleMenu> getSubRoleMenus() {
		return subRoleMenus;
	}

	public void setSubRoleMenus(List<SysRoleMenu> subRoleMenus) {
		this.subRoleMenus = subRoleMenus;
	}
}
