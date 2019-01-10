/** 
* 
* @author linliquan
* @data 2018年12月23日 00:03:48  
*/

package com.ss.vv.ss.service;

import com.ss.vv.common.IServiceOperations;
import com.ss.vv.ss.domain.User;

public interface IUserService extends IServiceOperations<User, User> {

	// 判断用户名是否重复
	public String rearchUserName(String user_name);
}
