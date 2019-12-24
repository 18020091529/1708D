package com.ryl.cms.domain;

public class Fav {
	
	private Integer id;
	private String text;
	private String url;
	private String user_id;
	private String created;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getCreated() {
		return created;
	}
	public void setCreated(String created) {
		this.created = created;
	}
	public Fav(Integer id, String text, String url, String user_id, String created) {
		super();
		this.id = id;
		this.text = text;
		this.url = url;
		this.user_id = user_id;
		this.created = created;
	}
	@Override
	public String toString() {
		return "Fav [id=" + id + ", text=" + text + ", url=" + url + ", user_id=" + user_id + ", created=" + created
				+ "]";
	}
	public Fav() {
		// TODO Auto-generated constructor stub
	}
}
