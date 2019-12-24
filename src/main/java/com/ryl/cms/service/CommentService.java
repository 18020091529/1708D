package com.ryl.cms.service;

import java.util.List;

import com.ryl.cms.domain.Comment;

public interface CommentService {

	int addComment(Comment comment);

	List commentList(Integer id);

}
