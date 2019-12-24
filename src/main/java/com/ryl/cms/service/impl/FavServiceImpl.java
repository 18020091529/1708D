package com.ryl.cms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ryl.cms.dao.FavDao;
import com.ryl.cms.domain.Fav;
import com.ryl.cms.service.FavService;

@Service
public class FavServiceImpl implements FavService{
	@Resource
	private FavDao dao;

	@Override
	public List favlist(Integer integer) {
		List list = dao.favlist(integer);
		// TODO Auto-generated method stub
		return list;
	}

	@Override
	public int add(Fav fav) {
		int add = dao.add(fav);
		// TODO Auto-generated method stub
		return add;
	}

	@Override
	public int delete(int id) {
		int i = dao.delete(id);
		// TODO Auto-generated method stub
		return i;
	}
	
	
}
