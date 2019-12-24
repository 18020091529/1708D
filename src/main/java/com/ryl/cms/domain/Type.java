package com.ryl.cms.domain;

import javassist.runtime.Inner;

public class Type {
	
	private Inner id;
	private String ctype;
	public Inner getId() {
		return id;
	}
	public void setId(Inner id) {
		this.id = id;
	}
	public String getCtype() {
		return ctype;
	}
	public void setCtype(String ctype) {
		this.ctype = ctype;
	}
	public Type(Inner id, String ctype) {
		super();
		this.id = id;
		this.ctype = ctype;
	}
	@Override
	public String toString() {
		return "Type [id=" + id + ", ctype=" + ctype + "]";
	}
	
	public Type() {
		// TODO Auto-generated constructor stub
	}

}
