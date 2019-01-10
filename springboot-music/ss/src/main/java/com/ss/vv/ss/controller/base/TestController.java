package com.ss.vv.ss.controller.base;

import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;
import java.util.LinkedHashMap;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import com.alibaba.fastjson.JSON;
import java.math.BigDecimal;

import com.ss.vv.common.WebResponse;
import com.ss.vv.ss.service.ITestService;
import com.ss.vv.ss.domain.Test;
import com.ss.vv.ss.mapper.ITestMapper;

/**
 * 
 * @author linliquan
 * @data 2018年12月23日 00:03:48
 */

@Controller
@RequestMapping("/test")
public class TestController {

	@Autowired
	protected WebResponse webResponse;

	@Resource
	protected ITestService testService;

	// 注册用户
	@RequestMapping(value = "/addOrEditTest", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public WebResponse addOrEditTest(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			String testId, @RequestParam(required = false) String testName, @RequestParam(required = false) String info,
			@RequestParam(required = false) String other) {
		if (testId == null || testId.length() == 0) {
			return this.addTest(request, response, session, testName, info, other);
		} else {
			return this.editTest(request, response, session, testId, testName, info, other);
		}
	}

	@RequestMapping(value = "/addTest", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public WebResponse addTest(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			String testName, String info, String other) {
		Object data = null;
		String statusMsg = "";
		Integer statusCode = 200;
		Map<String, String> paramMap = new HashMap<String, String>();
		paramMap.put("testName", testName);
		paramMap.put("info", info);
		paramMap.put("other", other);
		data = paramMap;
		if (testName == null || "".equals(testName.trim()) || info == null || "".equals(info.trim()) || other == null
				|| "".equals(other.trim())) {
			statusMsg = " 参数为空错误！！！！";
			statusCode = 201;
			return webResponse.getWebResponse(statusCode, statusMsg, data);
		}
		if (testName.length() > 255 || info.length() > 65535) {
			statusMsg = " 参数长度过长错误！！！";
			statusCode = 201;
			return webResponse.getWebResponse(statusCode, statusMsg, data);
		}
		Test test = new Test();

		boolean isAdd = true;
		return this.addOrEditTest(request, response, session, data, test, testName, info, other, isAdd);
	}

	@RequestMapping(value = "/editTest", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public WebResponse editTest(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			String testId, @RequestParam(required = false) String testName, @RequestParam(required = false) String info,
			@RequestParam(required = false) String other) {
		Object data = null;
		String statusMsg = "";
		Integer statusCode = 200;
		Map<String, String> paramMap = new HashMap<String, String>();
		paramMap.put("testId", testId);
		paramMap.put("testName", testName);
		paramMap.put("info", info);
		paramMap.put("other", other);
		data = paramMap;
		if (testId == null || "".equals(testId.trim())) {
			statusMsg = "未获得主键参数错误！！！";
			statusCode = 201;
			return webResponse.getWebResponse(statusCode, statusMsg, data);
		}
		Integer testIdNumeri = testId.matches("^[0-9]*$") ? Integer.parseInt(testId) : 0;
		if (testIdNumeri == 0) {
			statusMsg = "主键不为数字错误！！！";
			statusCode = 201;
			return webResponse.getWebResponse(statusCode, statusMsg, data);
		}
		Test testVo = this.testService.getById(testIdNumeri);
		Test test = new Test();
		BeanUtils.copyProperties(testVo, test);

		boolean isAdd = false;
		return this.addOrEditTest(request, response, session, data, test, testName, info, other, isAdd);
	}

	/*
	 * 
	 */
	private WebResponse addOrEditTest(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			Object data, Test test, String testName, String info, String other, boolean isAdd) {
		String statusMsg = "";
		Integer statusCode = 200;
		if (testName != null && !("".equals(testName.trim()))) {
			if (testName.length() > 255) {
				statusMsg = " 参数长度过长错误,testName";
				statusCode = 201;
				return webResponse.getWebResponse(statusCode, statusMsg, data);
			}
			test.setTestName(testName);
		}
		if (info != null && !("".equals(info.trim()))) {
			if (info.length() > 65535) {
				statusMsg = " 参数长度过长错误,info";
				statusCode = 201;
				return webResponse.getWebResponse(statusCode, statusMsg, data);
			}
			test.setInfo(info);
		}
		if (other != null && !("".equals(other.trim()))) {
			if (other.length() > 1000) {
				statusMsg = " 参数长度过长错误,other";
				statusCode = 201;
				return webResponse.getWebResponse(statusCode, statusMsg, data);
			}
			test.setOther(other);
		}
		if (isAdd) {
			this.testService.insert(test);
			if (test.getTestId() > 0) {
				statusMsg = "成功插入！！！";
			} else {
				statusCode = 202;
				statusMsg = "insert false";
			}
			return webResponse.getWebResponse(statusCode, statusMsg, data);
		}
		int num = this.testService.update(test);
		if (num > 0) {
			statusMsg = "成功修改！！！";
		} else {
			statusCode = 202;
			statusMsg = "update false";
		}
		return webResponse.getWebResponse(statusCode, statusMsg, data);
	}

	@RequestMapping(value = "/getTestById", produces = "application/json;charset=UTF-8")
	@ResponseBody
	public WebResponse getTestById(String testId) {
		Object data = testId;
		Integer statusCode = 200;
		String statusMsg = "";
		if (testId == null || testId.length() == 0 || testId.length() > 11) {
			statusMsg = "参数为空或参数过长错误！！！";
			statusCode = 201;
			return webResponse.getWebResponse(statusCode, statusMsg, data);
		}
		Integer testIdNumNumeri = testId.matches("^[0-9]*$") ? Integer.parseInt(testId) : 0;
		if (testIdNumNumeri == 0) {
			statusMsg = "参数数字型错误！！！";
			statusCode = 201;
			return webResponse.getWebResponse(statusCode, statusMsg, data);
		}
		Test testVo = this.testService.getById(testIdNumNumeri);

		if (testVo != null && testVo.getTestId() > 0) {
			data = testVo;
			statusMsg = "获取单条数据成功！！！";
		} else {
			statusCode = 202;
			statusMsg = "no record!!!";
		}
		return webResponse.getWebResponse(statusCode, statusMsg, data);
	}

	@RequestMapping(value = "/getOneTest", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public WebResponse getOneTest(@RequestParam(defaultValue = "正常", required = false) String tbStatus) {
		LinkedHashMap<String, String> condition = new LinkedHashMap<String, String>();
		condition.put("tb_status='" + tbStatus + "'", "");
		Test testVo = this.testService.getOne(condition);
		Object data = null;
		String statusMsg = "";
		if (testVo != null && testVo.getTestId() > 0) {
			data = testVo;
			statusMsg = "根据条件获取单条数据成功！！！";
		} else {
			statusMsg = "no record!!!";
		}
		return webResponse.getWebResponse(statusMsg, data);
	}

	@RequestMapping(value = "/getTestList", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public WebResponse getTestList(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			@RequestParam(defaultValue = "1", required = false) Integer pageNo,
			@RequestParam(defaultValue = "8", required = false) Integer pageSize,
			@RequestParam(defaultValue = "正常", required = false) String tbStatus,
			@RequestParam(required = false) String keyword,
			@RequestParam(defaultValue = "test_id", required = false) String order,
			@RequestParam(defaultValue = "desc", required = false) String desc) {
		Object data = null;
		String statusMsg = "";
		int statusCode = 200;
		LinkedHashMap<String, String> condition = new LinkedHashMap<String, String>();
		/*
		 * if (tbStatus != null && tbStatus.length() > 0) { condition.put("tb_status='"
		 * + tbStatus + "'", "and"); }
		 */
		if (keyword != null && keyword.length() > 0) {
			StringBuffer buf = new StringBuffer();
			buf.append("(");
			buf.append("test_name like '%").append(keyword).append("%'");
			buf.append(" or ");
			buf.append("info like '%").append(keyword).append("%'");
			buf.append(" or ");
			buf.append("other like '%").append(keyword).append("%'");
			buf.append(")");
			condition.put(buf.toString(), "and");
		}
		String field = null;
		if (condition.size() > 0) {
			condition.put(condition.entrySet().iterator().next().getKey(), "");
		}
		int count = this.testService.getCount(condition, field);
		if (order != null && order.length() > 0 & "desc".equals(desc)) {
			order = order + " desc";
		}
		List<Test> list = this.testService.getList(condition, pageNo, pageSize, order, field);
		Map<Object, Object> map = new HashMap<Object, Object>();
		map.put("total", count);
		int size = list.size();
		if (size > 0) {
			List<Test> listFont = new ArrayList<Test>();
			Test vo;
			Test voFont = new Test();
			for (int i = 0; i < size; i++) {
				vo = list.get(i);
				BeanUtils.copyProperties(vo, voFont);
				listFont.add(voFont);
				voFont = new Test();
			}
			map.put("list", listFont);
			data = map;
			statusMsg = "根据条件获取分页数据成功！！！";
		} else {
			map.put("list", list);
			data = map;
			statusCode = 202;
			statusMsg = "no record!!!";
			return webResponse.getWebResponse(statusCode, statusMsg, data);
		}
		return webResponse.getWebResponse(statusCode, statusMsg, data);
	}

	@RequestMapping(value = "/getAdminTestList", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String getAdminTestList(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			@RequestParam(defaultValue = "1", required = false) Integer pageNo,
			@RequestParam(defaultValue = "10", required = false) Integer pageSize,
			@RequestParam(defaultValue = "正常", required = false) String tbStatus,
			@RequestParam(required = false) String keyword,
			@RequestParam(defaultValue = "test_id", required = false) String order,
			@RequestParam(defaultValue = "desc", required = false) String desc) {
		Object data = null;
		String statusMsg = "";
		int statusCode = 200;
		LinkedHashMap<String, String> condition = new LinkedHashMap<String, String>();

		if (tbStatus != null && tbStatus.length() > 0) {
			condition.put("tb_status='" + tbStatus + "'", "and");
		}
		if (keyword != null && keyword.length() > 0) {
			StringBuffer buf = new StringBuffer();
			buf.append("(");
			buf.append("test_name like '%").append(keyword).append("%'");
			buf.append(" or ");
			buf.append("info like '%").append(keyword).append("%'");
			buf.append(" or ");
			buf.append("other like '%").append(keyword).append("%'");
			buf.append(")");
			condition.put(buf.toString(), "and");
		}
		String field = null;
		if (condition.size() > 0) {
			condition.put(condition.entrySet().iterator().next().getKey(), "");
		}
		int count = this.testService.getCount(condition, field);
		if (order != null && order.length() > 0 & "desc".equals(desc)) {
			order = order + " desc";
		}
		List<Test> list = this.testService.getList(condition, pageNo, pageSize, order, field);
		Map<Object, Object> map = new HashMap<Object, Object>();
		map.put("total", count);
		int size = list.size();
		if (size > 0) {
			map.put("list", list);
			data = map;
			statusMsg = "根据条件获取分页数据成功！！！";
		} else {
			map.put("list", list);
			data = map;
			statusCode = 202;
			statusMsg = "no record!!!";
		}
		return JSON.toJSONString(data);
	}

	@RequestMapping(value = "/delTest", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public WebResponse delTest(int id) {
		int num = this.testService.delBySign(id);
		;
		Object data = null;
		String statusMsg = "";
		if (num > 0) {
			statusMsg = "成功删除！！！";
		} else {
			statusMsg = "no record!!!";
		}
		return webResponse.getWebResponse(statusMsg, data);
	}

}
