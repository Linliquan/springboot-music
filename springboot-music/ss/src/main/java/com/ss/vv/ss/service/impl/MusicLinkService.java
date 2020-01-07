/** 
* 
* @author linliquan 
* @data 2018年12月23日 00:03:48  
*/

package com.ss.vv.ss.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ss.vv.common.AbstractService;
import com.ss.vv.common.IOperations;
import com.ss.vv.ss.domain.MusicLink;
import com.ss.vv.ss.mapper.IMusicLinkMapper;
import com.ss.vv.ss.service.IMusicLinkService;

@Service("musicLinkService")
public class MusicLinkService extends AbstractService<MusicLink, MusicLink> implements IMusicLinkService {

	public MusicLinkService() {
		this.setTableName("musiclink");
	}

	@Resource
	private IMusicLinkMapper musicLinkMapper;

	@Override
	protected IOperations<MusicLink, MusicLink> getMapper() {
		return musicLinkMapper;
	}

	@Override
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}

	public List<MusicLink> songRearch(String songName) {
		return musicLinkMapper.songRearch(songName);

	}

	public String getUserId(String user_name, String user_password) {
		return musicLinkMapper.getUserId(user_name, user_password);
	}

	@Override
	public void insertSongRearch(int song_id, int userId) {
		musicLinkMapper.insertSongRearch(song_id, userId);
	}

	@Override
	public String judgeSong(String songName, int userId) {
		return musicLinkMapper.judgeSong(songName, userId);
	}

}
