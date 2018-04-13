package cn.gtms.admin;

import java.io.Serializable;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.linkgoo.api.common.Response;
import com.linkgoo.framework.core.service.BaseService;
import com.linkgoo.web.extensions.MediaTypes;

import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
/**
 * 
 * @author Linkgoo
 *
 * @param <T>
 * @param <R>
 */
public abstract class CURDController<T, R extends BaseService<T>>
		extends BaseController<T, R> {

	/**
	 * 
	 * @param entity
	 * @param request
	 * @param model
	 * @return
	 */
	@ApiOperation(value = "刪除一行数据", notes = "")
	@ApiImplicitParam(name = "entity", value = "获取对象参数", required = true, dataType = "Object")
	@RequestMapping(value = "/remove", method = RequestMethod.DELETE, produces = MediaTypes.JSON)
	@ResponseBody
	public Response<Integer> remove(@RequestBody T entity, HttpServletRequest request,
			Model model) {
		preRemove(entity, request, model);
		int result = doRemove(entity, request);
		postRemove(entity, model);
		return Response.ok(result);

	}

	/**
	 * 删除
	 * @param entity
	 * @param request 
	 * @return
	 */
	protected int doRemove(T entity, HttpServletRequest request) {
		return service.remove(entity);
	}

	/**
	 * 
	 * @param entity
	 * @param request
	 * @param model
	 * @param result
	 * @return
	 */
	@ApiOperation(value = "插入对象", notes = "")
	@ApiImplicitParam(name = "entity", value = "对象的值", required = true, dataType = "Object")
	@RequestMapping(value = "/create", method = RequestMethod.POST, produces = MediaTypes.JSON)
	@ResponseBody
	public Response<T> create(@RequestBody @Valid T entity, HttpServletRequest request, Model model,
			BindingResult result) {
		preSave(entity, request, model);
		doSave(entity);
		postSave(entity, request, model);
		return Response.ok(entity);
	}

	/**
	 * 保存
	 * @param entity
	 */
	protected void doSave(T entity) {
		service.save(entity);
	}

	/**
	 * 
	 * @param entity
	 * @param request
	 * @param model
	 * @return
	 */
	@ApiOperation(value = "修改对象", notes = "")
	@ApiImplicitParam(name = "entity", value = "对象的值", required = true, dataType = "Object")
	@RequestMapping(value = "/update",method = RequestMethod.PUT, produces = MediaTypes.JSON)
	@ResponseBody
	public Response<T> update(@RequestBody T entity, HttpServletRequest request, Model model) {
		preUpdate(entity, request, model);
		doUpdate(entity);
		postUpdate(entity, model);
		return Response.ok(entity);
	}

	/**
	 * 更新
	 * @param entity
	 */
	protected void doUpdate(T entity) {
		service.update(entity);
	}

	/**
	 * 
	 * @param entity
	 * @param request
	 * @param model
	 */
	protected void preSave(T entity, HttpServletRequest request, Model model) {

	}

	/**
	 * 
	 * @param entity
	 * @param request
	 * @param model
	 */
	protected void postSave(T entity, HttpServletRequest request, Model model) {

	}

	/**
	 * 
	 * @param entity
	 * @param request
	 * @param model
	 */
	protected void preUpdate(T entity, HttpServletRequest request, Model model) {

	}

	/**
	 * 
	 * @param entity
	 * @param model
	 */
	protected void postUpdate(T entity, Model model) {

	}

	/**
	 * 
	 * @param request 
	 * @param pk
	 * @param model
	 */
	protected void preRemove(T entity, HttpServletRequest request, Model model) {

	}

	/**
	 * 
	 * @param entity
	 * @param model
	 */
	protected void postRemove(T entity, Model model) {

	}

	/**
	 * 
	 * @return
	 */
	protected <ID extends Serializable> Class<ID> getIDClass() {
		return null;
	}
}
