package cn.gtms.admin.entity;


/**
 * Title: admin_user
 *
 * Company: Copyright @ 2017 Linkgoo鐗堟潈鎵�鏈�
 *
 * @author: Linkgoo
 * @date: 2018-3-1 23:09:19
 * @version 1.0
 */
 
@SuppressWarnings("serial")
public class AdminUser implements java.io.Serializable{
	/** 鐢ㄦ埛id */
	private Long userId;
	/** 鐢ㄦ埛璐﹀彿 */
	private String account;
	/** 鐢ㄦ埛瀵嗙爜 */
	private String password;
	/** 鐢ㄦ埛鍚� */
	private String userName;
	/** 鎬у埆 */
	private String gender;
	/** 閭 */
	private String email;
	/** 鐢佃瘽鍙风爜 */
	private String phoneNumber;
	/** 瀛﹂櫌 */
	private String college;
	/** 涓撲笟 */
	private String major;
	/** 骞寸骇 */
	private Integer grade;
	/** 鐝骇 */
	private Integer userClass;
	/** 瑙掕壊 */
	private Long role;
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
	/** 鐘舵�� */
	private String status;
	
	/** 鐢ㄦ埛id */
	public Long getUserId() {
		return userId;
	}
	/** 鐢ㄦ埛id */
	public void setUserId(Long userId) {
		this.userId=userId;
	}
	/** 鐢ㄦ埛璐﹀彿 */
	public String getAccount() {
		return account;
	}
	/** 鐢ㄦ埛璐﹀彿 */
	public void setAccount(String account) {
		this.account=account;
	}
	/** 鐢ㄦ埛瀵嗙爜 */
	public String getPassword() {
		return password;
	}
	/** 鐢ㄦ埛瀵嗙爜 */
	public void setPassword(String password) {
		this.password=password;
	}
	/** 鐢ㄦ埛鍚� */
	public String getUserName() {
		return userName;
	}
	/** 鐢ㄦ埛鍚� */
	public void setUserName(String userName) {
		this.userName=userName;
	}
	/** 鎬у埆 */
	public String getGender() {
		return gender;
	}
	/** 鎬у埆 */
	public void setGender(String gender) {
		this.gender=gender;
	}
	/** 閭 */
	public String getEmail() {
		return email;
	}
	/** 閭 */
	public void setEmail(String email) {
		this.email=email;
	}
	/** 鐢佃瘽鍙风爜 */
	public String getPhoneNumber() {
		return phoneNumber;
	}
	/** 鐢佃瘽鍙风爜 */
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber=phoneNumber;
	}
	/** 瀛﹂櫌 */
	public String getCollege() {
		return college;
	}
	/** 瀛﹂櫌 */
	public void setCollege(String college) {
		this.college=college;
	}
	/** 涓撲笟 */
	public String getMajor() {
		return major;
	}
	/** 涓撲笟 */
	public void setMajor(String major) {
		this.major=major;
	}
	/** 骞寸骇 */
	public Integer getGrade() {
		return grade;
	}
	/** 骞寸骇 */
	public void setGrade(Integer grade) {
		this.grade=grade;
	}
	/** 鐝骇 */
	public Integer getUserClass() {
		return userClass;
	}
	/** 鐝骇 */
	public void setUserClass(Integer userClass) {
		this.userClass=userClass;
	}
	/** 瑙掕壊 */
	public Long getRole() {
		return role;
	}
	/** 瑙掕壊 */
	public void setRole(Long role) {
		this.role=role;
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
