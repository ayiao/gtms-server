package cn.gtms.admin.entity;


/**
 * Title: admin_user_paper
 *
 * Company: Copyright @ 2017 Linkgoo鐗堟潈鎵�鏈�
 *
 * @author: Linkgoo
 * @date: 2018-3-1 23:04:08
 * @version 1.0
 */
 
@SuppressWarnings("serial")
public class AdminUserPaper implements java.io.Serializable{
	/** 鐢ㄦ埛璁烘枃id */
	private Long userPaperId;
	/** 璁烘枃id */
	private Long paperId;
	/** 鐢ㄦ埛id */
	private Long userId;
	/** 鍒涘缓鏃堕棿 */
	@org.springframework.format.annotation.DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private java.util.Date utcCreate;
	/** 鏇存柊鏃堕棿 */
	@org.springframework.format.annotation.DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private java.util.Date utcUpdate;
	/** 鐘舵�� */
	private String status;
	/** 杩涘害 */
	private String progress;
	
	/** 鐢ㄦ埛璁烘枃id */
	public Long getUserPaperId() {
		return userPaperId;
	}
	/** 鐢ㄦ埛璁烘枃id */
	public void setUserPaperId(Long userPaperId) {
		this.userPaperId=userPaperId;
	}
	/** 璁烘枃id */
	public Long getPaperId() {
		return paperId;
	}
	/** 璁烘枃id */
	public void setPaperId(Long paperId) {
		this.paperId=paperId;
	}
	/** 鐢ㄦ埛id */
	public Long getUserId() {
		return userId;
	}
	/** 鐢ㄦ埛id */
	public void setUserId(Long userId) {
		this.userId=userId;
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
	/** 杩涘害 */
	public String getProgress() {
		return progress;
	}
	/** 杩涘害 */
	public void setProgress(String progress) {
		this.progress=progress;
	}
	
	/**
	 * 鎻掑叆鍓嶆墽琛�
	 */
	public void prePersist() {
		//do something
	}
}
