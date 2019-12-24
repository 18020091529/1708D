package com.ryl.cms.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ryl.cms.dao.MessageDao;
import com.ryl.cms.domain.Message;
import com.ryl.cms.service.MessageService;

@Service
public class MessageServiceImpl implements MessageService{
	@Resource 
	private MessageDao dao;

	@Override
	public int addMessage(Message message) {
		int addMessage = dao.addMessage(message);
		System.out.println(addMessage);
		// TODO Auto-generated method stub
		return addMessage;
	}
	
}
