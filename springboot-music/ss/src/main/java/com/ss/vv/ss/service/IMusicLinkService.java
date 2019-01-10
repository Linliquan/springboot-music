/** 
* 
* @author linliquan
* @data 2018年12月23日 00:03:48  
*/

package com.ss.vv.ss.service;

import com.ss.vv.common.IServiceOperations;
import com.ss.vv.ss.domain.MusicLink;

public interface IMusicLinkService extends IServiceOperations<MusicLink, MusicLink> {

	// 将榜单音乐收藏插入到我的音乐表中
	public void insertSongRearch(int song_id, int userId);

	public String judgeSong(String songName, int userId);
}
