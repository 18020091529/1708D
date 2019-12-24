package com.ryl.cms.dao;

import java.util.List;

import com.ryl.cms.domain.Fav;

public interface FavDao {
	List favlist(Integer integer);
	
	
	int add(Fav fav);
	
	int delete(int id);
}
