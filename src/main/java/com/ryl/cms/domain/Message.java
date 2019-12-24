package com.ryl.cms.domain;

public class Message {
	
	private Integer id;
	private String realname ;
	private String phone;
	private String email;
	private String cominfo;
	private String murl;
	private Integer uid;
	private Integer tid;
	private Integer aid;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public Integer getTid() {
		return tid;
	}
	public void setTid(Integer tid) {
		this.tid = tid;
	}
	public Integer getAid() {
		return aid;
	}
	public void setAid(Integer aid) {
		this.aid = aid;
	}
	
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCominfo() {
		return cominfo;
	}
	public void setCominfo(String cominfo) {
		this.cominfo = cominfo;
	}
	public String getMurl() {
		return murl;
	}
	public void setMurl(String murl) {
		this.murl = murl;
	}
	@Override
	public String toString() {
		return "Message [id=" + id + ", realname=" + realname + ", phone=" + phone + ", email=" + email + ", cominfo="
				+ cominfo + ", murl=" + murl + ", uid=" + uid + ", tid=" + tid + ", aid=" + aid + "]";
	}
	
	public Message() {
		// TODO Auto-generated constructor stub
	}
	
	
}
