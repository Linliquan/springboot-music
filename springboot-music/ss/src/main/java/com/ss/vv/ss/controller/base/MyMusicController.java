package com.ss.vv.ss.controller.base;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

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

import com.ss.vv.common.WebResponse;
import com.ss.vv.ss.domain.MyMusic;
import com.ss.vv.ss.service.IMyMusicService;

/**
 * 
 * @author linliquan
 * @date 2018年12月23日 00:03:48
 */

@Controller
@RequestMapping("/myMusic")
public class MyMusicController {

	@Autowired
	protected WebResponse webResponse;

	@Resource
	protected IMyMusicService myMusicService;

//	@Autowired
//	MyMusicService myMusicService2;

	// 歌曲收藏
	@RequestMapping(value = "/addMusicCollect", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public WebResponse addMusicCollect(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			@RequestParam(required = false) String user_name) {
		WebResponse webResponse = new WebResponse();
		MyMusic myMusic = new MyMusic();
		System.out.println("接收到的用户名:" + user_name);

		Integer statusCode = 200;

		// 数据库插入语句，对应xml文件的insert
		this.myMusicService.insert(myMusic);

		webResponse.setStatusCode(statusCode);
		return webResponse;

	}

	// 从数据库中获取歌曲数据，在我的音乐中显示
	@RequestMapping(value = "/getMyMusicList", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public WebResponse getMyMusicList(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			@RequestParam(defaultValue = "1", required = false) Integer pageNo,
			@RequestParam(defaultValue = "10", required = false) Integer pageSize,
			@RequestParam(defaultValue = "正常", required = false) String tbStatus,
			@RequestParam(required = false) String keyword,
			@RequestParam(defaultValue = "ml_id", required = false) String order,
			@RequestParam(defaultValue = "desc", required = false) String desc,
			@RequestParam(required = false) String user_name, @RequestParam(required = false) String user_password
			) {

//		System.out.println("我的音乐显示列表前收藏的歌曲id:" + song_id);
		String user_Id = null;
		try {
			user_Id = myMusicService.getUserById(user_name, user_password);
		} catch (Exception e) {

		}
		int userId = 0;
		try {
			// 判断字符串是否是数字，并且抛出异常
			boolean NotisNum = (user_Id.equals("null"));
			// System.out.println(NotisNum);
			if (!NotisNum) {
				userId = Integer.parseInt(user_Id);
			}
		} catch (Exception e) {

		}
		System.out.println("我的音乐显示列表前用户id:" + userId);

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
		// int count = this.myMusicService.getCount(condition, field);
		if (order != null && order.length() > 0 & "desc".equals(desc)) {
			order = order + " desc";
		}

		// List<MyMusic> list = this.myMusicService.getList(condition, pageNo, pageSize,
		// order, field);

		try {
			List<MyMusic> list = this.myMusicService.getMyMusicList(userId);

			Map<Object, Object> map = new HashMap<Object, Object>();
			// map.put("total", count);
			int size = list.size();
			if (size > 0) {
				List<MyMusic> listFont = new ArrayList<MyMusic>();
				MyMusic vo;
				MyMusic voFont = new MyMusic();
				for (int i = 0; i < size; i++) {
					vo = list.get(i);
					// 通过java反射将类中当前属性字段对应的内容复制到另外一个类中
					BeanUtils.copyProperties(vo, voFont);
					listFont.add(voFont);
					voFont = new MyMusic();
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

		}catch (Exception e){

		}






		return webResponse.getWebResponse(statusCode, statusMsg, data);
	}

	// 删除音乐
	@RequestMapping(value = "/deleteMyMusic", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public WebResponse deleteMyMusic(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			@RequestParam(required = false) Integer user_id, @RequestParam(required = false) Integer song_id) {
		WebResponse webResponse = new WebResponse();
		MyMusic myMusic = new MyMusic();
		System.out.println("删除音乐前的用户名id:" + user_id);

		Object data = null;
		String statusMsg = "";
		int statusCode = 201;
		int del = 0;

		if (user_id == null){
			 del = this.myMusicService.deleteMyMusic(song_id, 0);
		}else {
			del = this.myMusicService.deleteMyMusic(song_id, user_id);
		}

		if (del > 0) {
			statusCode = 200;
		}

		return webResponse.getWebResponse(statusCode, statusMsg, data);
	}

}
