package cn.gtms.admin.entity;


/**
 * Title: sys_role_menu
 *
 * Company: Copyright @ 2017 Linkgoo鐗堟潈鎵�鏈�
 *
 * @author: Linkgoo
 * @date: 2018-3-7 22:42:05
 * @version 1.0
 */
 
@SuppressWarnings("serial")
public class SysRoleMenu implements java.io.Serializable{
	/** 瑙掕壊鑿滃崟id */
	private Long roleMenuId;
	/** 瑙掕壊id */
	private Long roleId;
	/** 鑿滃崟鍥炬爣 */
	private String menuIcon;
	/** 鑿滃崟鍚嶇О */
	private String menuName;
	/** 鑿滃崟url */
	private String menuUrl;
	/** 鑿滃崟灞傜骇 */
	private String menuLevel;
	/** 鐖惰彍鍗昳d */
	private Long parentId;
	/** 椤哄簭 */
	private Integer sort;
	/** 鍒涘缓鏃堕棿 */
	@org.springframework.format.annotation.DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private java.util.Date utcCreate;
	/** 鏇存柊鏃堕棿 */
	@org.springframework.format.annotation.DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private java.util.Date utcUpdate;
	/** 鐘舵�� */
	private String status;
	
	/** 瑙掕壊鑿滃崟id */
	public Long getRoleMenuId() {
		return roleMenuId;
	}
	/** 瑙掕壊鑿滃崟id */
	public void setRoleMenuId(Long roleMenuId) {
		this.roleMenuId=roleMenuId;
	}
	/** 瑙掕壊id */
	public Long getRoleId() {
		return roleId;
	}
	/** 瑙掕壊id */
	public void setRoleId(Long roleId) {
		this.roleId=roleId;
	}
	/** 鑿滃崟鍥炬爣 */
	public String getMenuIcon() {
		return menuIcon;
	}
	/** 鑿滃崟鍥炬爣 */
	public void setMenuIcon(String menuIcon) {
		this.menuIcon=menuIcon;
	}
	/** 鑿滃崟鍚嶇О */
	public String getMenuName() {
		return menuName;
	}
	/** 鑿滃崟鍚嶇О */
	public void setMenuName(String menuName) {
		this.menuName=menuName;
	}
	/** 鑿滃崟url */
	public String getMenuUrl() {
		return menuUrl;
	}
	/** 鑿滃崟url */
	public void setMenuUrl(String menuUrl) {
		this.menuUrl=menuUrl;
	}
	/** 鑿滃崟灞傜骇 */
	public String getMenuLevel() {
		return menuLevel;
	}
	/** 鑿滃崟灞傜骇 */
	public void setMenuLevel(String menuLevel) {
		this.menuLevel=menuLevel;
	}
	/** 鐖惰彍鍗昳d */
	public Long getParentId() {
		return parentId;
	}
	/** 鐖惰彍鍗昳d */
	public void setParentId(Long parentId) {
		this.parentId=parentId;
	}
	/** 椤哄簭 */
	public Integer getSort() {
		return sort;
	}
	/** 椤哄簭 */
	public void setSort(Integer sort) {
		this.sort=sort;
	}
	/** 鍒涘缓鏃堕棿 */
	public java.util.Date getUtcCreate() {
		return utcCreate;
	}
	/** 鍒涘缓鏃堕棿 */
	public void setUtcCreate(java.util.Date utcCreate) {
		this.utcCreate=utcCreate;
	}
	/** 鏇存柊鏃堕棿 */
	public java.util.Date getUtcUpdate() {
		return utcUpdate;
	}
	/** 鏇存柊鏃堕棿 */
	public void setUtcUpdate(java.util.Date utcUpdate) {
		this.utcUpdate=utcUpdate;
	}
	/** 鐘舵�� */
	public String getStatus() {
		return status;
	}
	/** 鐘舵�� */
	public void setStatus(String status) {
		this.status=status;
	}
	
	/**
	 * 鎻掑叆鍓嶆墽琛�
	 */
	public void prePersist() {
		//do something
	}
}
