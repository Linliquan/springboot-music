package com.ss.vv.ss.domain;

public class MyMusic implements java.io.Serializable {
	private Integer my_id;
	private String my_songName;
	private String my_singer;
	private String my_songLink;
	private String my_lyricLink;
	private String my_photoLink;
	private Integer user_id;

	public Integer getMy_id() {
		return my_id;
	}

	public void setMy_id(Integer my_id) {
		this.my_id = my_id;
	}

	public String getMy_songName() {
		return my_songName;
	}

	public void setMy_songName(String my_songName) {
		this.my_songName = my_songName;
	}

	public String getMy_singer() {
		return my_singer;
	}

	public void setMy_singer(String my_singer) {
		this.my_singer = my_singer;
	}

	public String getMy_songLink() {
		return my_songLink;
	}

	public void setMy_songLink(String my_songLink) {
		this.my_songLink = my_songLink;
	}

	public String getMy_lyricLink() {
		return my_lyricLink;
	}

	public void setMy_lyricLink(String my_lyricLink) {
		this.my_lyricLink = my_lyricLink;
	}

	public String getMy_photoLink() {
		return my_photoLink;
	}

	public void setMy_photoLink(String my_photoLink) {
		this.my_photoLink = my_photoLink;
	}

	public Integer getUser_id() {
		return user_id;
	}

	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}

	@Override
	public String toString() {
		return "MyMusic [my_id=" + my_id + ", my_songName=" + my_songName + ", my_singer=" + my_singer
				+ ", my_songLink=" + my_songLink + ", my_lyricLink=" + my_lyricLink + ", my_photoLink=" + my_photoLink
				+ ", user_id=" + user_id + "]";
	}

}
