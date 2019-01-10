package com.ss.vv.ss.domain;

public class MusicLink implements java.io.Serializable {
	private Integer ml_id;
	private String ml_songName;
	private String ml_singer;
	private String ml_songLink;
	private String ml_lyricLink;
	private String ml_photoLink;

	public Integer getMl_id() {
		return ml_id;
	}

	public void setMl_id(Integer ml_id) {
		this.ml_id = ml_id;
	}

	public String getMl_songName() {
		return ml_songName;
	}

	public void setMl_songName(String ml_songName) {
		this.ml_songName = ml_songName;
	}

	public String getMl_singer() {
		return ml_singer;
	}

	public void setMl_singer(String ml_singer) {
		this.ml_singer = ml_singer;
	}

	public String getMl_songLink() {
		return ml_songLink;
	}

	public void setMl_songLink(String ml_songLink) {
		this.ml_songLink = ml_songLink;
	}

	public String getMl_lyricLink() {
		return ml_lyricLink;
	}

	public void setMl_lyricLink(String ml_lyricLink) {
		this.ml_lyricLink = ml_lyricLink;
	}

	public String getMl_photoLink() {
		return ml_photoLink;
	}

	public void setMl_photoLink(String ml_photoLink) {
		this.ml_photoLink = ml_photoLink;
	}

	@Override
	public String toString() {
		return "MusicLink [ml_id=" + ml_id + ", ml_songName=" + ml_songName + ", ml_singer=" + ml_singer
				+ ", ml_songLink=" + ml_songLink + ", ml_lyricLink=" + ml_lyricLink + ", ml_photoLink=" + ml_photoLink
				+ "]";
	}

}
