package com.ryl.cms.service;

import java.util.List;

import com.ryl.cms.domain.User;
import com.ryl.cms.utils.Codings;
import com.ryl.cms.web.forms.UserForm;

public interface UserInfoService {
	
	// 给MD5 单向加密 提供加盐
	static final String SALT = "la3h5G8l!9N0vo";
	// 由一个静态方法 就是将 值转码加盐
	
	/**
	 * 功能说明：加密<br>
	 * @param username
	 * @param password
	 * @return
	 * String
	 * 给密码  单向加密
	 */
	public static String encrypt(String username, String password){
		password = Codings.MD5Encoding(password + UserInfoService.SALT + username);
		return password;
	}
	
	int reg(UserForm userForm);

	User login(UserForm userForm);

	List userList();

	int lockedUser(Integer id);


}
