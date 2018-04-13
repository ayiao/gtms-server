package cn.gtms.admin.entity;

import java.util.Date;

import com.alibaba.fastjson.annotation.JSONField;

@SuppressWarnings("serial")
public class AdminPaperExt extends AdminPaper{
	private String createByName;
	private String selectBy;
	private Long selectById;
	public Long getSelectById() {
		return selectById;
	}

	public void setSelectById(Long selectById) {
		this.selectById = selectById;
	}

	private String selectStatus;
	private Long userPaperId;
	private Long documentIdExt;
	public Long getDocumentIdExt() {
		return documentIdExt;
	}

	public void setDocumentIdExt(Long documentIdExt) {
		this.documentIdExt = documentIdExt;
	}
	@JSONField (format="yyyy-MM-dd")
	private Date uploadTime;
	private String documentUrl;
	private String uploadBy;
	private String documentStatus;
	private String documentType;
	private String documentName;
	private String isSelectBySelf;
	private Integer surplusQuota;
	public Integer getSurplusQuota() {
		return surplusQuota;
	}

	public void setSurplusQuota(Integer surplusQuota) {
		this.surplusQuota = surplusQuota;
	}

	public String getIsSelectBySelf() {
		return isSelectBySelf;
	}

	public void setIsSelectBySelf(String isSelectBySelf) {
		this.isSelectBySelf = isSelectBySelf;
	}

	public String getDocumentName() {
		return documentName;
	}

	public void setDocumentName(String documentName) {
		this.documentName = documentName;
	}

	public String getDocumentType() {
		return documentType;
	}

	public void setDocumentType(String documentType) {
		this.documentType = documentType;
	}


	public Date getUploadTime() {
		return uploadTime;
	}

	public void setUploadTime(Date uploadTime) {
		this.uploadTime = uploadTime;
	}

	public String getDocumentUrl() {
		return documentUrl;
	}

	public void setDocumentUrl(String documentUrl) {
		this.documentUrl = documentUrl;
	}

	public String getUploadBy() {
		return uploadBy;
	}

	public void setUploadBy(String uploadBy) {
		this.uploadBy = uploadBy;
	}

	public String getDocumentStatus() {
		return documentStatus;
	}

	public void setDocumentStatus(String documentStatus) {
		this.documentStatus = documentStatus;
	}

	public Long getUserPaperId() {
		return userPaperId;
	}

	public void setUserPaperId(Long userPaperId) {
		this.userPaperId = userPaperId;
	}

	public String getSelectBy() {
		return selectBy;
	}

	public void setSelectBy(String selectBy) {
		this.selectBy = selectBy;
	}

	public String getSelectStatus() {
		return selectStatus;
	}

	public void setSelectStatus(String selectStatus) {
		this.selectStatus = selectStatus;
	}

	public String getCreateByName() {
		return createByName;
	}

	public void setCreateByName(String createByName) {
		this.createByName = createByName;
	}
}
