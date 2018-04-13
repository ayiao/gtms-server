package cn.gtms.admin.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.linkgoo.api.common.Response;
import com.linkgoo.api.constant.APPConst;
import com.linkgoo.framework.core.repository.Page;
import com.linkgoo.framework.core.repository.SearchCriteria;
import com.linkgoo.framework.exception.BusinessException;
import com.linkgoo.framework.util.StringUtils2;
import com.linkgoo.web.extensions.MediaTypes;
import com.linkgoo.web.extensions.ResponseEntity;
import com.linkgoo.web.extensions.WebUtils;

import cn.gtms.BaseResponse;
import cn.gtms.admin.CURDController;
import cn.gtms.admin.entity.AdminDocument;
import cn.gtms.admin.entity.AdminPaper;
import cn.gtms.admin.entity.AdminPaperExt;
import cn.gtms.admin.entity.AdminUser;
import cn.gtms.admin.service.AdminDocumentService;
import cn.gtms.admin.service.AdminPaperExtService;
import cn.gtms.admin.service.AdminUserService;
import cn.gtms.constants.Constants;
import cn.gtms.util.DataUtil;
import io.swagger.annotations.ApiOperation;

@RestController
@RequestMapping(value = "/api/admin/admindocumentext")
public class DownloadDocumentController extends CURDController<AdminDocument, AdminDocumentService> {

	private Logger logger = LoggerFactory.getLogger(DownloadDocumentController.class);
	
	@Autowired
	protected AdminPaperExtService adminPaperExtService;
	
	@Autowired
	protected AdminUserService adminUserService;

	@SuppressWarnings("rawtypes")
	@ApiOperation(value = "上传文件", notes = "")
	@RequestMapping(value = "/upload_document", method = RequestMethod.POST, produces = MediaTypes.JSON)
	public ResponseEntity<String> upload(@RequestParam("file") MultipartFile file,
			HttpServletRequest httpServletRequest, Model model) throws IllegalAccessException, InstantiationException {
		logger.error("Total Memory:" + Runtime.getRuntime().totalMemory() + "\n" + "Max Memory"
				+ Runtime.getRuntime().maxMemory());
		Response resp = new Response();
		if (file.isEmpty()) {
			throw new BusinessException("文件不能为空");
		}
		String documentType = httpServletRequest.getParameter("documentType");
		if (documentType == null) {
			throw new BusinessException("文件类型不能为空");
		}
		try {
			String documentUrl=writeFile(file, resp);
			AdminDocument adminDocument=new AdminDocument();
			adminDocument.setDocumentName(file.getOriginalFilename());
			adminDocument.setDocumentType(httpServletRequest.getParameter("documentType"));
			adminDocument.setBelongTo((long) DataUtil.stringToInt(httpServletRequest.getParameter("belongTo")) );
			adminDocument.setUploadBy((long) DataUtil.stringToInt(httpServletRequest.getParameter("uploadBy")));
			adminDocument.setRelateTo((long) DataUtil.stringToInt(httpServletRequest.getParameter("relateTo")));
			adminDocument.setDocumentUrl(documentUrl);
			adminDocument.setDownloadTimes(0);
			adminDocument.setStatus("1");
			adminDocument.setUtcCreate(new Date());
			service.save(adminDocument);
		} catch (Exception e) {
			// TODO: handle exception
			throw e;
		}
		resp.setStatus(APPConst.SUCESS_CODE);
		return ResponseEntity.ok(JSONObject.toJSONString(resp));
	}

	@SuppressWarnings("rawtypes")
	private String writeFile(MultipartFile file, Response resp) {
		// 获取文件名
		String fileName = file.getOriginalFilename();
		// 获取文件的后缀名
		String suffixName = fileName.substring(fileName.lastIndexOf('.'));
		String path = "/upload";
		String filePath = path + File.separator + fileName + "_" + new Date().getTime() + suffixName;
		// 解决中文问题，liunx下中文路径，图片显示问题
		File dest = new File(filePath);
		// 检测是否存在目录
		if (!dest.getParentFile().exists()) {
			dest.getParentFile().mkdirs();
		}
		InputStream inputStream = null;
		OutputStream os = null;
		try {
			inputStream = file.getInputStream();
			os = new FileOutputStream(dest);
			byte[] bs = new byte[1024];
			int len;
			while ((len = inputStream.read(bs)) != -1) {
				os.write(bs, 0, len);
			}
			resp.setMessage("Upload success");
		} catch (Exception e) {
			logger.debug("", e);
			throw new BusinessException(e.getMessage());
		} finally {
			try {
				if (os != null) {
					os.close();
				}
				if (inputStream != null) {
					inputStream.close();
				}
			} catch (IOException e) {
				logger.debug("", e);
			}
		}
		return filePath;
	}
	
	
	@SuppressWarnings("rawtypes")
	@ApiOperation(value = "下载文件", notes = "")
	@RequestMapping(value = "/portal/export_document", method = RequestMethod.GET, produces = MediaTypes.JSON)
	public ResponseEntity<String> fileExport(@RequestParam Map<String, Object> parameter,
			HttpServletRequest httpServletRequest, HttpServletResponse response, Model model)
			throws IllegalAccessException, InstantiationException, IOException, Exception {
		List<AdminDocument> adminDocuments =	service.find(SearchCriteria.toList(parameter));
		if(adminDocuments.isEmpty()){
			throw new BusinessException("please Select Document");
		}
		File file=new File(adminDocuments.get(0).getDocumentUrl());
		downloadFile(file, response, false);
		Response resp = new Response<>();
		resp.setStatus(APPConst.SUCESS_CODE);
		return ResponseEntity.ok(JSONObject.toJSONString(resp));
	}
	
	public void downloadFile(File file, HttpServletResponse response, boolean isDelete) {
		try {
			// 以流的形式下载文件。
			BufferedInputStream fis = new BufferedInputStream(new FileInputStream(file.getPath()));
			byte[] buffer = new byte[fis.available()];
			fis.read(buffer);
			fis.close();
			// 清空response
			response.reset();
			OutputStream toClient = new BufferedOutputStream(response.getOutputStream());
			response.setContentType("application/octet-stream");
			response.setHeader("Content-Disposition",
					"attachment;filename=" + new String(file.getName().getBytes("UTF-8"), "ISO-8859-1"));
			toClient.write(buffer);
			toClient.flush();
			toClient.close();
			if (isDelete) {
				file.delete(); // 是否将生成的服务器端文件删除
			}
		} catch (IOException ex) {
			ex.printStackTrace();
		}
	}
	
	
	@RequestMapping(value = "/find_list", method = RequestMethod.POST, produces = MediaTypes.JSON)
	public ResponseEntity<String> findPaper(@RequestBody Map<String,Object> parameter,
			HttpServletRequest httpServletRequest, HttpServletResponse response, Model model) {	
		Map<String,Object> param=new HashMap<>();
		if(parameter.get("userId")!=null){
			param.putAll(parameter);
			AdminUser adminUser=adminUserService.get(parameter.get("userId").toString());
			param.put("role", adminUser.getRole());
			parameter.remove("userId");
		}
		Page<AdminPaperExt> page=adminPaperExtService.queryPaperDocumentList(WebUtils.<AdminPaperExt> page(parameter, response),SearchCriteria.toList(parameter),param);
		if(page.getRows()!=null&&!page.getRows().isEmpty()){
			Map<String,String> documentTypeMap=new HashMap<>();
			documentTypeMap.put("1", "开题报告");
			documentTypeMap.put("2", "毕业论文");
			
			Map<String,String> documentStatus=new HashMap<>();
			documentStatus.put("1", "新增");
			documentStatus.put("2", "更新");
			documentStatus.put("3", "审核中");
			documentStatus.put("4", "审核通过");
			documentStatus.put("5", "已发布");
			
			for(AdminPaperExt adminPaper:page.getRows()){
				adminPaper.setDocumentType(documentTypeMap.get(adminPaper.getDocumentType()));
				adminPaper.setDocumentStatus(documentStatus.get(adminPaper.getDocumentStatus()));
			}
		}
		JSONObject jsonObject = new JSONObject();
		BaseResponse<JSONObject> baseResponse=new BaseResponse<>();
		jsonObject.put("total", page.getTotal());
		jsonObject.put("data", page.getRows()==null?new ArrayList<>():page.getRows());
		jsonObject.put("totalPages", page.getTotalPages());
		baseResponse.setOutput(jsonObject);
		baseResponse.setStatus(APPConst.SUCESS_CODE);
		return ResponseEntity.ok(JSON.toJSONString(baseResponse, SerializerFeature.DisableCircularReferenceDetect));
	}
	
	

	@RequestMapping(value = "/delete_document", method = RequestMethod.POST, produces = MediaTypes.JSON)
	public ResponseEntity<String> deletePaper(@RequestBody Map<String,Object> parameter,
			HttpServletRequest httpServletRequest, HttpServletResponse response, Model model) {	
		BaseResponse<List<AdminPaper>> baseResponse=new BaseResponse<>();
		List<String> ids=StringUtils2.strToList(parameter.get("ids").toString(), ",");
		service.removeAll(ids);
		baseResponse.setStatus(Constants.STATUS.SUCCESS);
		return ResponseEntity.ok(JSON.toJSONString(baseResponse, SerializerFeature.DisableCircularReferenceDetect));
	}
}
