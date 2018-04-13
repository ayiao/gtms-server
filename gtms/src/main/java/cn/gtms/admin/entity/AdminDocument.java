package cn.gtms.admin.entity;


/**
 * Title: admin_document
 *
 * Company: Copyright @ 2017 Linkgoo鐗堟潈鎵�鏈�
 *
 * @author: Linkgoo
 * @date: 2018-3-1 23:02:53
 * @version 1.0
 */
 
@SuppressWarnings("serial")
public class AdminDocument implements java.io.Serializable{
	/** 鏂囦欢id */
	private Long documentId;
	/** 鏂囦欢鍚� */
	private String documentName;
	/** 鏂囦欢璺緞 */
	private String documentUrl;
	/** 鏂囦欢绫诲瀷 */
	private String documentType;
	/** 涓婁紶浜� */
	private Long uploadBy;
	/** 鍒涘缓鏃堕棿 */
	@org.springframework.format.annotation.DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private java.util.Date utcCreate;
	/** 鏇存柊鏃堕棿 */
	@org.springframework.format.annotation.DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private java.util.Date utcUpdate;
	/** 涓嬭浇娆℃暟 */
	private Integer downloadTimes;
	/** 鎵�灞炰汉 */
	private Long belongTo;
	/** 鍏崇郴浜� */
	private Long relateTo;
	/** 鐘舵�� */
	private String status;
	
	/** 鏂囦欢id */
	public Long getDocumentId() {
		return documentId;
	}
	/** 鏂囦欢id */
	public void setDocumentId(Long documentId) {
		this.documentId=documentId;
	}
	/** 鏂囦欢鍚� */
	public String getDocumentName() {
		return documentName;
	}
	/** 鏂囦欢鍚� */
	public void setDocumentName(String documentName) {
		this.documentName=documentName;
	}
	/** 鏂囦欢璺緞 */
	public String getDocumentUrl() {
		return documentUrl;
	}
	/** 鏂囦欢璺緞 */
	public void setDocumentUrl(String documentUrl) {
		this.documentUrl=documentUrl;
	}
	/** 鏂囦欢绫诲瀷 */
	public String getDocumentType() {
		return documentType;
	}
	/** 鏂囦欢绫诲瀷 */
	public void setDocumentType(String documentType) {
		this.documentType=documentType;
	}
	/** 涓婁紶浜� */
	public Long getUploadBy() {
		return uploadBy;
	}
	/** 涓婁紶浜� */
	public void setUploadBy(Long uploadBy) {
		this.uploadBy=uploadBy;
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
	/** 涓嬭浇娆℃暟 */
	public Integer getDownloadTimes() {
		return downloadTimes;
	}
	/** 涓嬭浇娆℃暟 */
	public void setDownloadTimes(Integer downloadTimes) {
		this.downloadTimes=downloadTimes;
	}
	/** 鎵�灞炰汉 */
	public Long getBelongTo() {
		return belongTo;
	}
	/** 鎵�灞炰汉 */
	public void setBelongTo(Long belongTo) {
		this.belongTo=belongTo;
	}
	/** 鍏崇郴浜� */
	public Long getRelateTo() {
		return relateTo;
	}
	/** 鍏崇郴浜� */
	public void setRelateTo(Long relateTo) {
		this.relateTo=relateTo;
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
