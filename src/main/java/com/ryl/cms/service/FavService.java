package com.ryl.cms.service;

import java.util.List;

import com.ryl.cms.domain.Fav;

public interface FavService {
	
	List favlist(Integer integer);
	
	int add(Fav fav);
	
	int delete(int id);
}
