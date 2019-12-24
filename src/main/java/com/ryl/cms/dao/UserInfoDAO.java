package com.ryl.cms.dao;

import java.util.List;

import com.ryl.cms.domain.User;

public interface UserInfoDAO {

	int getCountByUname(String username);

	int reg(User user);

	User getUserByUsername(String username);

	List userList();

	int lockedUser(Integer id);

}
