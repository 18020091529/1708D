package com.ryl.cms.web.controllers;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ryl.cms.core.CMSRuntimeException;
import com.ryl.cms.domain.User;
import com.ryl.cms.service.UserInfoService;
import com.ryl.cms.web.Constant;
import com.ryl.cms.web.forms.UserForm;

@Controller
public class UserInfoController {
	@Resource
	private UserInfoService  userInfoService;
	// restfull  可以通过不能的提交方式   来完成方法
	// 因为使用的是jsr 303 所以需要绑定对象  于是 userForm 需要放到model中
	// 方法说明： 跳转到注册页面
	@RequestMapping(value="/reg",method=RequestMethod.GET)
	public String toReg(Model model) {
		model.addAttribute("userForm", new UserForm());
		return "passport/reg";
	}
	// 当点击注册按钮时完成此功能
	// 方法说明：注册
	@RequestMapping(value="/reg",method=RequestMethod.POST)
	public String reg(UserForm userForm,RedirectAttributes attr,Model model) {
		System.out.println(userForm);
		try {
			int i=userInfoService.reg(userForm);
			// 重定向传值
			attr.addFlashAttribute("message", "注册成功");
			return "redirect:reg";
		} catch (CMSRuntimeException e) {
			model.addAttribute("message", e.getMessage());
		}
		return "passport/reg";
	}
	
	
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String tologin(Model model) {
		model.addAttribute("userForm", new UserForm());
		return "passport/login";
	}
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(Model model,UserForm userForm,HttpServletRequest request) {
		model.addAttribute("userForm", new UserForm());
		// userForm 中由用户名及密码 但是    数据库中的密码是加密后的而前台接受的密码是未加密
		try {
			User user=userInfoService.login(userForm);
			// 如果登录成功需要将user对象放入到session中   
			Constant.setLoginUser(request, user);
			return "redirect:/index";
		} catch (CMSRuntimeException e) {
			// TODO Auto-generated catch block
			model.addAttribute("message", e.getMessage());
		}
		return "passport/login";
	}
	
	@RequestMapping("/logout")
	public String logOut(HttpServletRequest request) {
		// 注销session作用域
		request.getSession().invalidate();
		// 退回到主页面
		return "redirect:/index";
	}
}
