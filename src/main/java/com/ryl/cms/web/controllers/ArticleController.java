package com.ryl.cms.web.controllers;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ryl.cms.domain.Article;
import com.ryl.cms.service.ArticleService;
import com.ryl.cms.service.CommentService;

// 文章操作的 控制层
@Controller
public class ArticleController {
	@Resource
	private ArticleService articleService;
	@Resource
	private CommentService commentService;
	
	@RequestMapping("/article/{aid}")
	public String article(Model model,@PathVariable("aid")Integer id,@RequestParam(value="cpage",defaultValue="1")Integer cpage) {
		Article article=articleService.getArticle(id);
		
		// 评论的列表
		PageHelper.startPage(cpage,3);
		List  list=commentService.commentList(id);
		PageInfo pi=new PageInfo(list);
		model.addAttribute("pi", pi);
		model.addAttribute("comments", list);
		model.addAttribute("blog", article);
		return "blog";
	}
}
