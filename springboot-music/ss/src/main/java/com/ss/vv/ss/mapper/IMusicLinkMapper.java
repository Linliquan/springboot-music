package com.ss.vv.ss.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.type.JdbcType;

import com.ss.vv.common.IOperations;
import com.ss.vv.ss.domain.MusicLink;

public interface IMusicLinkMapper extends IOperations<MusicLink, MusicLink> {

	// #是将传入的值当做字符串的形式,$是将传入的数据直接显示生成sql语句,所以必须用$
	// 从数据库中搜索歌曲
	@Select("select * from musiclink where ml_songName like '%${songName}%'")
	public List<MusicLink> songRearch(@Param("songName") String songName);

	// 获取用户id
	@Select("select user_id from user where user_name=#{user_name} and user_password=#{user_password}")
	public String getUserId(@Param("user_name") String user_name, @Param("user_password") String user_password);

	public void insertSongRearch(int song_id, int userId);

	// 判断歌曲重复
	@Select("select my_id from mymusic where my_songName=#{songName} and user_id =#{userId}")
	public String judgeSong(@Param("songName") String songName, @Param("userId") int userId);

}
