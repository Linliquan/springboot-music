package com.ss.vv.ss.controller.base;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.ss.vv.common.WebResponse;
import com.ss.vv.ss.domain.User;
import com.ss.vv.ss.service.IMyMusicService;
import com.ss.vv.ss.service.IUserService;
import com.ss.vv.ss.service.impl.UserService;

/**
 * 
 * @author linliquan
 * @data 2018年12月23日 00:03:48
 */

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	protected WebResponse webResponse;

	@Resource
	protected IUserService userService;

	@Resource
	protected IMyMusicService MyMusicService;

	@Autowired
	UserService userService2;

	String newName = null;

	// 登录功能
	@RequestMapping(value = "/loginPage", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public WebResponse loginCon(HttpServletRequest request, HttpSession session) {

		// 取参数的方法，对应登录表单中的用户名name="user_name"
		String user_name = request.getParameter("user_name");
		String user_password = request.getParameter("user_password");

		// 调用mapper层的登录的方法，从数据库中匹配用户名和密码，并放回用户名
		String tname = userService2.login(user_name, user_password);

		String user_Id = userService2.getUserById(user_name, user_password);
		// newUserId = user_Id; //修改密码用的
		int userId = 0;
		try {
			// 判断字符串是否是数字，并且抛出异常
			// boolean NotisNum
			// =(user_Id.equals(null)||user_Id.equals("")||user_Id.equals("null"));
			boolean NotisNum = (user_Id.equals("null"));
			// System.out.println(NotisNum);
			if (!NotisNum) {
				userId = Integer.parseInt(user_Id);
			}
		} catch (Exception e) {

		}
//	   
		session.setAttribute("tname", tname);
		session.setAttribute("userId", userId);
		Object data = null;
		String statusMsg = "";
		Integer statusCode = 200;
		Map<String, String> paramMap = new HashMap<String, String>();
		paramMap.put("user_name", user_name);
		paramMap.put("user_password", user_password);
		data = paramMap;

		User user = new User();
		user.setUser_id(userId);
		System.out.println("登录的id:" + user.getUser_id());
		System.out.println("登录的用户名:" + session.getAttribute(tname));
		System.out.println("前端，用户名：" + user_name + " 密码：" + user_password);
		System.out.println("根据前端在数据库中查找到的用户名：" + tname + " 用户的id:" + userId);

		// 用户名和密码匹配不成功，则返回的用户名为空
		if (tname == null) {
			System.out.println("用户不存在");
			System.out.println();
			statusMsg = "用户或密码错误！";
			statusCode = 201;
			return webResponse.getWebResponse(statusCode, statusMsg, data);
		} else {
			statusCode = 200;
			webResponse.setStatusCode(statusCode);
			System.out.println("状态码：" + webResponse.getStatusCode());
			System.out.println("登录成功了");
			System.out.println();
			return webResponse.getWebResponseUserId(statusCode, statusMsg, data, userId);
		}
	}

	// 更改密码 更改密码 更改密码
	@RequestMapping(value = "/resetUserPassword", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public WebResponse resetUserPassword(HttpServletRequest request, HttpSession session) {

		Object data = null;
		String statusMsg = "";
		Integer statusCode = 200;
		int uId = 0;

		// 取参数的方法，对应登录表单中的用户名
		String user_name = request.getParameter("user_name");
		String newUser_password = request.getParameter("newUser_password");
		try {
			uId = (int) this.userService2.resetPassword(user_name, newUser_password);
			System.out.println("修改密码返回的id:" + uId);
		} catch (Exception e) {

		}

		return webResponse.getWebResponse(statusCode, statusMsg, data);

	}

	// 用户注册
	@RequestMapping(value = "/addOrEditUser", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public WebResponse addOrEditTest(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			String user_id, @RequestParam(required = false) String user_name,
			@RequestParam(required = false) String user_password) {

		Object data = null;
		String statusMsg = "用户名已存在，请重新注册！";
		Integer statusCode = 201;
		String rearchName = null;
		try {
			rearchName = this.userService.rearchUserName(user_name);

			if (!(rearchName.equals("null"))) {
				return webResponse.getWebResponse(statusCode, statusMsg, data);
			}
		} catch (Exception e) {

		}
		System.out.println("判断用户是否重复：" + rearchName);

		if (user_id == null || user_id.length() == 0) {
			return this.addUser(request, response, session, user_name, user_password);
		} else {
			return this.editUser(request, response, session, user_id, user_name, user_password);
		}
	}

	// 添加用户
	@RequestMapping(value = "/addUser", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public WebResponse addUser(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			String user_name, String user_password) {
		Object data = null;
		String statusMsg = "";
		Integer statusCode = 200;
		Map<String, String> paramMap = new HashMap<String, String>();
		paramMap.put("user_name", user_name);
		paramMap.put("user_password", user_password);
		data = paramMap;
		if (user_name == null || "".equals(user_name.trim()) || user_password == null
				|| "".equals(user_password.trim())) {
			statusMsg = " 参数为空错误！！！！";
			statusCode = 201;
			return webResponse.getWebResponse(statusCode, statusMsg, data);
		}
		if (user_name.length() > 255 || user_password.length() > 65535) {
			statusMsg = " 参数长度过长错误！！！";
			statusCode = 201;
			return webResponse.getWebResponse(statusCode, statusMsg, data);
		}
		User user = new User();

		boolean isAdd = true;

		return this.addOrEditUser(request, response, session, data, user, user_name, user_password, isAdd);
	}

	@RequestMapping(value = "/editUser", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public WebResponse editUser(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			String user_id, @RequestParam(required = false) String user_name,
			@RequestParam(required = false) String user_password) {
		Object data = null;
		String statusMsg = "";
		Integer statusCode = 200;
		Map<String, String> paramMap = new HashMap<String, String>();
		paramMap.put("user_id", user_id);
		paramMap.put("user_name", user_name);
		paramMap.put("user_password", user_password);
		data = paramMap;
		if (user_id == null || "".equals(user_id.trim())) {
			statusMsg = "未获得主键参数错误！！！";
			statusCode = 201;
			return webResponse.getWebResponse(statusCode, statusMsg, data);
		}
		Integer user_idNumeri = user_id.matches("^[0-9]*$") ? Integer.parseInt(user_id) : 0;
		if (user_idNumeri == 0) {
			statusMsg = "主键不为数字错误！！！";
			statusCode = 201;
			return webResponse.getWebResponse(statusCode, statusMsg, data);
		}
		User userVo = this.userService.getById(user_idNumeri);
		User user = new User();
		BeanUtils.copyProperties(userVo, user); // 浅复制，重要

		boolean isAdd = false;
		return this.addOrEditUser(request, response, session, data, user, user_name, user_password, isAdd);
	}

	/*
	 * 
	 */
	private WebResponse addOrEditUser(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			Object data, User user, String user_name, String user_password, boolean isAdd) {
		String statusMsg = "";
		Integer statusCode = 200;
		if (user_name != null && !("".equals(user_name.trim()))) {
			if (user_name.length() > 255) {
				statusMsg = " 参数长度过长错误,testName";
				statusCode = 201;
				return webResponse.getWebResponse(statusCode, statusMsg, data);
			}
			// 重要，建立数据，以便后期数据库能调用数据
			user.setUser_name(user_name); // 建立用户名
			user.setUser_password(user_password); // 建立密码

		}
		if (user_password != null && !("".equals(user_password.trim()))) {
			if (user_password.length() > 65535) {
				statusMsg = " 参数长度过长错误,info";
				statusCode = 201;
				return webResponse.getWebResponse(statusCode, statusMsg, data);
			}
		}

		if (isAdd) {

			// 插入语句，插入数据库，重要

			this.userService.insert(user);
			if (user.getUser_id() > 0) {
				statusMsg = "成功插入！！！";
			} else {
				statusCode = 202;
				statusMsg = "insert false";
			}
			return webResponse.getWebResponse(statusCode, statusMsg, data);
		}
		int num = this.userService.update(user);
		if (num > 0) {
			statusMsg = "成功修改！！！";
		} else {
			statusCode = 202;
			statusMsg = "update false";
		}
		return webResponse.getWebResponse(statusCode, statusMsg, data);
	}

	@RequestMapping(value = "/getUserById", produces = "application/json;charset=UTF-8")
	@ResponseBody
	public WebResponse getUserById(String user_id) {
		Object data = user_id;
		Integer statusCode = 200;
		String statusMsg = "";
		if (user_id == null || user_id.length() == 0 || user_id.length() > 11) {
			statusMsg = "参数为空或参数过长错误！！！";
			statusCode = 201;
			return webResponse.getWebResponse(statusCode, statusMsg, data);
		}
		Integer user_idNumNumeri = user_id.matches("^[0-9]*$") ? Integer.parseInt(user_id) : 0;
		if (user_idNumNumeri == 0) {
			statusMsg = "参数数字型错误！！！";
			statusCode = 201;
			return webResponse.getWebResponse(statusCode, statusMsg, data);
		}
		User userVo = this.userService.getById(user_idNumNumeri);

		if (userVo != null && userVo.getUser_id() > 0) {
			data = userVo;
			statusMsg = "获取单条数据成功！！！";
		} else {
			statusCode = 202;
			statusMsg = "no record!!!";
		}
		return webResponse.getWebResponse(statusCode, statusMsg, data);
	}

	@RequestMapping(value = "/getOneUser", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public WebResponse getOneTest(@RequestParam(defaultValue = "正常", required = false) String tbStatus) {
		LinkedHashMap<String, String> condition = new LinkedHashMap<String, String>();
		condition.put("tb_status='" + tbStatus + "'", "");
		User userVo = this.userService.getOne(condition);
		Object data = null;
		String statusMsg = "";
		if (userVo != null && userVo.getUser_id() > 0) {
			data = userVo;
			statusMsg = "根据条件获取单条数据成功！！！";
		} else {
			statusMsg = "no record!!!";
		}
		return webResponse.getWebResponse(statusMsg, data);
	}

	@RequestMapping(value = "/getUserList", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public WebResponse getTestList(HttpServletRequest request, HttpServletResponse response, HttpSession session,
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
		int count = this.userService.getCount(condition, field);
		if (order != null && order.length() > 0 & "desc".equals(desc)) {
			order = order + " desc";
		}
		List<User> list = this.userService.getList(condition, pageNo, pageSize, order, field);
		Map<Object, Object> map = new HashMap<Object, Object>();
		map.put("total", count);
		int size = list.size();
		if (size > 0) {
			List<User> listFont = new ArrayList<User>();
			User vo;
			User voFont = new User();
			for (int i = 0; i < size; i++) {
				vo = list.get(i);
				BeanUtils.copyProperties(vo, voFont);
				listFont.add(voFont);
				voFont = new User();
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

	@RequestMapping(value = "/getAdminUserList", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
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
		int count = this.userService.getCount(condition, field);
		if (order != null && order.length() > 0 & "desc".equals(desc)) {
			order = order + " desc";
		}
		List<User> list = this.userService.getList(condition, pageNo, pageSize, order, field);
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

	@RequestMapping(value = "/delUser", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public WebResponse delTest(int id) {
		int num = this.userService.delBySign(id);
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
