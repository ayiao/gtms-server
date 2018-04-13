package cn.gtms.admin.entity;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * Title: admin_paper表
 *
 * Company: Copyright @ 2017 Linkgoo版权所有
 *
 * @author: Linkgoo
 * @date: 2018-3-28 20:43:29
 * @version 1.0
 */
 
@SuppressWarnings("serial")
public class AdminPaper implements java.io.Serializable{
	/** 论文id */
	private Long paperId;
	/** 论文题目 */
	private String paperTitle;
	/** 限选人数 */
	private Integer limitAccount;
	/** 选题类型（论文/设计） */
	private String paperType;
	/** 题目描述 */
	private String paperDescribtion;
	/** 附件id */
	private Long documentId;
	/** 创建人 */
	private Long createBy;
	/** 是否自拟 */
	private String isStudentCreate;
	/** 创建时间 */
	@org.springframework.format.annotation.DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	@JSONField (format="yyyy-MM-dd")
	private java.util.Date utcCreate;
	/** 更新时间 */
	@org.springframework.format.annotation.DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	@JSONField (format="yyyy-MM-dd")
	private java.util.Date utcUpdate;
	/** 状态 */
	private String status;
	/** 教师id */
	private Long teacherId;
	private String teacherName;

	public String getTeacherName() {
		return teacherName;
	}

	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}

	/** 论文id */
	public Long getPaperId() {
		return paperId;
	}
	/** 论文id */
	public void setPaperId(Long paperId) {
		this.paperId=paperId;
	}
	/** 论文题目 */
	public String getPaperTitle() {
		return paperTitle;
	}
	/** 论文题目 */
	public void setPaperTitle(String paperTitle) {
		this.paperTitle=paperTitle;
	}
	/** 限选人数 */
	public Integer getLimitAccount() {
		return limitAccount;
	}
	/** 限选人数 */
	public void setLimitAccount(Integer limitAccount) {
		this.limitAccount=limitAccount;
	}
	/** 选题类型（论文/设计） */
	public String getPaperType() {
		return paperType;
	}
	/** 选题类型（论文/设计） */
	public void setPaperType(String paperType) {
		this.paperType=paperType;
	}
	/** 题目描述 */
	public String getPaperDescribtion() {
		return paperDescribtion;
	}
	/** 题目描述 */
	public void setPaperDescribtion(String paperDescribtion) {
		this.paperDescribtion=paperDescribtion;
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
	/** 是否自拟 */
	public String getIsStudentCreate() {
		return isStudentCreate;
	}
	/** 是否自拟 */
	public void setIsStudentCreate(String isStudentCreate) {
		this.isStudentCreate=isStudentCreate;
	}
	/** 创建时间 */
	public java.util.Date getUtcCreate() {
		return utcCreate;
	}
	/** 创建时间 */
	public void setUtcCreate(java.util.Date utcCreate) {
		this.utcCreate=utcCreate;
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
	/** 教师id */
	public Long getTeacherId() {
		return teacherId;
	}
	/** 教师id */
	public void setTeacherId(Long teacherId) {
		this.teacherId=teacherId;
	}
	
	/**
	 * 插入前执行
	 */
	public void prePersist() {
		//do something
	}
}
