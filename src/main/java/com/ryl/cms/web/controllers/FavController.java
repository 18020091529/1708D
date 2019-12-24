package com.ryl.cms.web.controllers;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ryl.cms.domain.Fav;
import com.ryl.cms.domain.User;
import com.ryl.cms.service.FavService;
import com.ryl.cms.web.Constant;

@Controller
public class FavController {
	@Resource
	private FavService service;
	
	
	@RequestMapping("/fav")
	public String favgetlist(HttpServletRequest request,Model model){
		User loginUser = Constant.getLoginUser(request);
		List list=service.favlist(loginUser.getId());
		model.addAttribute("list",list);
		return "/user-space/blog_fav";
		
		
	}
	
	@RequestMapping("/addfav")
	public String add(Fav fav,Model model){	
		int add = service.add(fav);
		System.out.println(add);
		model.addAttribute("add",add);
		
		return "/user-space/blog_favadd";
		
	}
	

 @RequestMapping("/delfav") 
 @ResponseBody
 public int delete(int id){ 
	 int delete = service.delete(id);
	 System.out.println(delete); 

	 return delete;

 }

	
	
	
}
