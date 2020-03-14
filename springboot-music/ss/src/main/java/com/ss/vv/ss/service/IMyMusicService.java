/** 
* 
* @author linliquan
* @data 2018年12月23日 00:03:48  
*/

package com.ss.vv.ss.service;

import java.util.List;

import com.ss.vv.common.IServiceOperations;
import com.ss.vv.ss.domain.MyMusic;

public interface IMyMusicService extends IServiceOperations<MyMusic, MyMusic> {

	public String getUserById(String user_name, String user_password);

	// 从数据库中获取音乐到我的音乐列表中
	public List<MyMusic> getMyMusicList(int userId);

	// 删除音乐
	public int deleteMyMusic(int song_id, int user_id);
}
