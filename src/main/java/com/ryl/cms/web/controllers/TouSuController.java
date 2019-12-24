package com.ryl.cms.web.controllers;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ryl.cms.domain.Message;
import com.ryl.cms.domain.User;
import com.ryl.cms.service.MessageService;
import com.ryl.cms.web.Constant;

@Controller
public class TouSuController {
	
	@Resource
	private MessageService service;
	
	/*@RequestMapping("/toTouSu")
	public String toTouSu(Model model,HttpSession session,Integer aid){
		System.out.println("被投诉的ID"+aid);
		
		session.setAttribute("aid",aid);
		
		return "tousu";
	}
	
	@RequestMapping("/addMessage")
	public String addMessage(Model model,HttpSession session,Message message){
		Integer aid = (Integer) session.getAttribute("aid");
		
		User user = (User) session.getAttribute(Constant.LOGIN_USER);
		
		Integer uid = user.getId();
		message.setAid(aid);
		message.setUid(uid);
		
		int addMessage = service.addMessage(message);
		return "/user-space/home";
		
	}*/
	
	
	@RequestMapping("/toTouSu")
	public String toTouSu(Integer aid,Model Model,HttpSession session){
		System.out.println("被投诉的文章ID:"+aid);
		session.setAttribute("aid", aid);
		return "tousu";
	}
	
	@RequestMapping("/addMessage")
	public String addMessage(Message message,Model model,HttpSession session){
		System.out.println("ssssssssssssssssssss");
		Integer aid = (Integer) session.getAttribute("aid");
		System.out.println("被投诉的文章ID:"+message);
		
		//User user = (User) session.getAttribute("_LOGIN_USER_");
		
		User user = (User) session.getAttribute(Constant.LOGIN_USER);
		
		Integer uid = user.getId();
		message.setAid(aid);
		message.setUid(uid);
		
		System.out.println(message);
		
		
		service.addMessage(message);
		return "redirect:home";
	}
	
}
