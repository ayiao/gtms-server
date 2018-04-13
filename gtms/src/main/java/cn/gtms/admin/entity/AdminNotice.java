package cn.gtms.admin.entity;


/**
 * Title: admin_notice
 *
 * Company: Copyright @ 2017 Linkgoo版权所有
 *
 * @author: Linkgoo
 * @date: 2018-4-13 0:17:42
 * @version 1.0
 */
 
@SuppressWarnings("serial")
public class AdminNotice implements java.io.Serializable{
	/** 公告id */
	private Long noticeId;
	/** 公告标题 */
	private String noticeTitle;
	/** 公告内容 */
	private String noticeDescription;
	/** 附件id */
	private Long documentId;
	/** 创建人 */
	private Long createBy;
	/** 创建时间 */
	@org.springframework.format.annotation.DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private java.util.Date utcCreate;
	/** 更新人 */
	private Long updateBy;
	/** 更新时间 */
	@org.springframework.format.annotation.DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private java.util.Date utcUpdate;
	/** 状态 */
	private String status;
	/** 开始有效时间 */
	@org.springframework.format.annotation.DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private java.util.Date validFrom;
	/** 截止有效时间 */
	@org.springframework.format.annotation.DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private java.util.Date validTo;
	/** 学院 */
	private String college;
	private String createByName;
	public String getCreateByName() {
		return createByName;
	}
	public void setCreateByName(String createByName) {
		this.createByName = createByName;
	}
	public String getUpdateByName() {
		return updateByName;
	}
	public void setUpdateByName(String updateByName) {
		this.updateByName = updateByName;
	}

	private String updateByName;
	
	/** 公告id */
	public Long getNoticeId() {
		return noticeId;
	}
	/** 公告id */
	public void setNoticeId(Long noticeId) {
		this.noticeId=noticeId;
	}
	/** 公告标题 */
	public String getNoticeTitle() {
		return noticeTitle;
	}
	/** 公告标题 */
	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle=noticeTitle;
	}
	/** 公告内容 */
	public String getNoticeDescription() {
		return noticeDescription;
	}
	/** 公告内容 */
	public void setNoticeDescription(String noticeDescription) {
		this.noticeDescription=noticeDescription;
	}
	/** 附件id */
	public Long getDocumentId() {
		return documentId;
	}
	/** 附件id */
	public void setDocumentId(Long documentId) {
		this.documentId=documentId;
	}
	/** 创建人 */
	public Long getCreateBy() {
		return createBy;
	}
	/** 创建人 */
	public void setCreateBy(Long createBy) {
		this.createBy=createBy;
	}
	/** 创建时间 */
	public java.util.Date getUtcCreate() {
		return utcCreate;
	}
	/** 创建时间 */
	public void setUtcCreate(java.util.Date utcCreate) {
		this.utcCreate=utcCreate;
	}
	/** 更新人 */
	public Long getUpdateBy() {
		return updateBy;
	}
	/** 更新人 */
	public void setUpdateBy(Long updateBy) {
		this.updateBy=updateBy;
	}
	/** 更新时间 */
	public java.util.Date getUtcUpdate() {
		return utcUpdate;
	}
	/** 更新时间 */
	public void setUtcUpdate(java.util.Date utcUpdate) {
		this.utcUpdate=utcUpdate;
	}
	/** 状态 */
	public String getStatus() {
		return status;
	}
	/** 状态 */
	public void setStatus(String status) {
		this.status=status;
	}
	/** 开始有效时间 */
	public java.util.Date getValidFrom() {
		return validFrom;
	}
	/** 开始有效时间 */
	public void setValidFrom(java.util.Date validFrom) {
		this.validFrom=validFrom;
	}
	/** 截止有效时间 */
	public java.util.Date getValidTo() {
		return validTo;
	}
	/** 截止有效时间 */
	public void setValidTo(java.util.Date validTo) {
		this.validTo=validTo;
	}
	/** 学院 */
	public String getCollege() {
		return college;
	}
	/** 学院 */
	public void setCollege(String college) {
		this.college=college;
	}
	
	/**
	 * 插入前执行
	 */
	public void prePersist() {
		//do something
	}
}
