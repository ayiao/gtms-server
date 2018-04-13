package cn.gtms.admin.entity;


/**
 * Title: admin_role
 *
 * Company: Copyright @ 2017 Linkgoo鐗堟潈鎵�鏈�
 *
 * @author: Linkgoo
 * @date: 2018-3-1 23:03:33
 * @version 1.0
 */
 
@SuppressWarnings("serial")
public class AdminRole implements java.io.Serializable{
	/** 瑙掕壊id */
	private Long roleId;
	/** 瑙掕壊鍚� */
	private String roleName;
	/** 鍒涘缓鏃堕棿 */
	@org.springframework.format.annotation.DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private java.util.Date utcCreate;
	/** 鏇存柊鏃堕棿 */
	@org.springframework.format.annotation.DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private java.util.Date utcUpdate;
	/** 鍒涘缓浜� */
	private Long createBy;
	/** 鏇存柊浜� */
	private Long updateBy;
	/** 澶囨敞 */
	private String note;
	
	/** 瑙掕壊id */
	public Long getRoleId() {
		return roleId;
	}
	/** 瑙掕壊id */
	public void setRoleId(Long roleId) {
		this.roleId=roleId;
	}
	/** 瑙掕壊鍚� */
	public String getRoleName() {
		return roleName;
	}
	/** 瑙掕壊鍚� */
	public void setRoleName(String roleName) {
		this.roleName=roleName;
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
	/** 鍒涘缓浜� */
	public Long getCreateBy() {
		return createBy;
	}
	/** 鍒涘缓浜� */
	public void setCreateBy(Long createBy) {
		this.createBy=createBy;
	}
	/** 鏇存柊浜� */
	public Long getUpdateBy() {
		return updateBy;
	}
	/** 鏇存柊浜� */
	public void setUpdateBy(Long updateBy) {
		this.updateBy=updateBy;
	}
	/** 澶囨敞 */
	public String getNote() {
		return note;
	}
	/** 澶囨敞 */
	public void setNote(String note) {
		this.note=note;
	}
	
	/**
	 * 鎻掑叆鍓嶆墽琛�
	 */
	public void prePersist() {
		//do something
	}
}
