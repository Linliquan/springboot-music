/** 
* 
* @author linliquan
* @data 2018年12月23日 00:03:48  
*/

package com.ss.vv.ss.mapper;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Controller;

import com.ss.vv.common.IOperations;
import com.ss.vv.ss.domain.User;

@Controller
public interface IUserMapper extends IOperations<User, User> {

	// 匹配用户名和密码
	// @Param中user_name参数和@Select中的#{user_name}对应
	@Select("select user_name from user where user_name=#{user_name} and user_password=#{user_password}")
	public String login(@Param("user_name") String user_name, @Param("user_password") String user_password);

	// 获取用户id
	// @Param中user_name参数和@Select中的#{user_name}对应
	@Select("select user_id from user where user_name=#{user_name} and user_password=#{user_password}")
	public String getUserById(@Param("user_name") String user_name, @Param("user_password") String user_password);

	// 判断用户名是否重复
	@Select("select user_name from user where user_name=#{user_name}")
	public String registJudge(@Param("user_name") String user_name);

	// 更改密码
	// @Select("UPDATE user SET user_password=#{newUser_password} where
	// user_name=#{user_name} and user_password=#{user_password}")
	@Select("UPDATE user SET user_password=#{newUser_password} where user_name=#{user_name}")
	public Integer resetPassword(@Param("user_name") String user_name,
			@Param("newUser_password") String newUser_password);

	// 判断用户名是否重复
	@Select("select user_name from user where user_name=#{user_name}")
	public String rearchUserName(@Param("user_name") String user_name);
}
